# sehttpd

* https://github.com/ccc-c/sehttpd
    * [高效能 Web 伺服器開發](https://hackmd.io/@sysprog/fast-web-server)

## epoll

* https://github.com/sysprog21/sehttpd/blob/master/src/mainloop.c

```cpp
int main()
{
    /* when a fd is closed by remote, writing to this fd will cause system
     * send SIGPIPE to this process, which exit the program
     */
    if (sigaction(SIGPIPE,
                  &(struct sigaction){.sa_handler = SIG_IGN, .sa_flags = 0},
                  NULL)) {
        log_err("Failed to install sigal handler for SIGPIPE");
        return 0;
    }

    int listenfd = open_listenfd(PORT);
    int rc UNUSED = sock_set_non_blocking(listenfd);
    assert(rc == 0 && "sock_set_non_blocking");

    /* create epoll and add listenfd */
    int epfd = epoll_create1(0 /* flags */);
    assert(epfd > 0 && "epoll_create1");

    struct epoll_event *events = malloc(sizeof(struct epoll_event) * MAXEVENTS);
    assert(events && "epoll_event: malloc");

    http_request_t *request = malloc(sizeof(http_request_t));
    init_http_request(request, listenfd, epfd, WEBROOT);

    struct epoll_event event = {
        .data.ptr = request,
        .events = EPOLLIN | EPOLLET,
    };
    epoll_ctl(epfd, EPOLL_CTL_ADD, listenfd, &event);

    timer_init();

    printf("Web server started.\n");

    /* epoll_wait loop */
    while (1) {
        int time = find_timer();
        debug("wait time = %d", time);
        int n = epoll_wait(epfd, events, MAXEVENTS, time);
        handle_expired_timers();

        for (int i = 0; i < n; i++) {
            http_request_t *r = events[i].data.ptr;
            int fd = r->fd;
            if (listenfd == fd) {
                /* we have one or more incoming connections */
                while (1) {
                    socklen_t inlen = 1;
                    struct sockaddr_in clientaddr;
                    int infd = accept(listenfd, (struct sockaddr *) &clientaddr,
                                      &inlen);
                    if (infd < 0) {
                        if ((errno == EAGAIN) || (errno == EWOULDBLOCK)) {
                            /* we have processed all incoming connections */
                            break;
                        }
                        log_err("accept");
                        break;
                    }

                    rc = sock_set_non_blocking(infd);
                    assert(rc == 0 && "sock_set_non_blocking");

                    request = malloc(sizeof(http_request_t));
                    if (!request) {
                        log_err("malloc");
                        break;
                    }

                    init_http_request(request, infd, epfd, WEBROOT);
                    event.data.ptr = request;
                    event.events = EPOLLIN | EPOLLET | EPOLLONESHOT;
                    epoll_ctl(epfd, EPOLL_CTL_ADD, infd, &event);

                    add_timer(request, TIMEOUT_DEFAULT, http_close_conn);
                }
            } else {
                if ((events[i].events & EPOLLERR) ||
                    (events[i].events & EPOLLHUP) ||
                    (!(events[i].events & EPOLLIN))) {
                    log_err("epoll error fd: %d", r->fd);
                    close(fd);
                    continue;
                }

                do_request(events[i].data.ptr);
            }
        }
    }

    return 0;
}
```


* https://github.com/sysprog21/sehttpd/blob/master/src/http.c


```cpp
void do_request(void *ptr)
{
    http_request_t *r = ptr;
    int fd = r->fd;
    int rc;
    char filename[SHORTLINE];
    webroot = r->root;

    del_timer(r);
    for (;;) {
        char *plast = &r->buf[r->last % MAX_BUF];
        size_t remain_size =
            MIN(MAX_BUF - (r->last - r->pos) - 1, MAX_BUF - r->last % MAX_BUF);

        int n = read(fd, plast, remain_size);
        assert(r->last - r->pos < MAX_BUF && "request buffer overflow!");

        if (n == 0) /* EOF */
            goto err;

        if (n < 0) {
            if (errno != EAGAIN) {
                log_err("read err, and errno = %d", errno);
                goto err;
            }
            break;
        }

        r->last += n;
        assert(r->last - r->pos < MAX_BUF && "request buffer overflow!");

        /* about to parse request line */
        rc = http_parse_request_line(r);
        if (rc == EAGAIN)
            continue;
        if (rc != 0) {
            log_err("rc != 0");
            goto err;
        }

        debug("uri = %.*s", (int) (r->uri_end - r->uri_start),
              (char *) r->uri_start);

        rc = http_parse_request_body(r);
        if (rc == EAGAIN)
            continue;
        if (rc != 0) {
            log_err("rc != 0");
            goto err;
        }

        /* handle http header */
        http_out_t *out = malloc(sizeof(http_out_t));
        if (!out) {
            log_err("no enough space for http_out_t");
            exit(1);
        }

        init_http_out(out, fd);

        parse_uri(r->uri_start, r->uri_end - r->uri_start, filename);

        struct stat sbuf;
        if (stat(filename, &sbuf) < 0) {
            do_error(fd, filename, "404", "Not Found", "Can't find the file");
            continue;
        }

        if (!(S_ISREG(sbuf.st_mode)) || !(S_IRUSR & sbuf.st_mode)) {
            do_error(fd, filename, "403", "Forbidden", "Can't read the file");
            continue;
        }

        out->mtime = sbuf.st_mtime;

        http_handle_header(r, out);
        assert(list_empty(&(r->list)) && "header list should be empty");

        if (!out->status)
            out->status = HTTP_OK;

        serve_static(fd, filename, sbuf.st_size, out);

        if (!out->keep_alive) {
            debug("no keep_alive! ready to close");
            free(out);
            goto close;
        }
        free(out);
    }

    struct epoll_event event = {
        .data.ptr = ptr,
        .events = EPOLLIN | EPOLLET | EPOLLONESHOT,
    };
    epoll_ctl(r->epfd, EPOLL_CTL_MOD, r->fd, &event); // 這行有 epoll

    add_timer(r, TIMEOUT_DEFAULT, http_close_conn);
    return;

err:
close:
    /* TODO: handle the timeout raised by inactive connections */
    rc = http_close_conn(r);
    assert(rc == 0 && "do_request: http_close_conn");
}
```

## Reference

* https://github.com/sysprog21/sehttpd
