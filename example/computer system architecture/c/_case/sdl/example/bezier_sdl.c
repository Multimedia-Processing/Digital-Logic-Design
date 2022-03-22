#include <assert.h>
#include <errno.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

#include "my_sdl.h"

enum { SCREEN_WIDTH = 800, SCREEN_HEIGHT = 600, SCREEN_FPS = 60 };

#define DELTA_TIME_SEC (1.0f / SCREEN_FPS)
#define DELTA_TIME_MS ((Uint32) floorf(DELTA_TIME_SEC * 1000.0f))
#define MARKER_SIZE 15.0f

#define COLOR_BG 0x353535FF /* background */
#define COLOR_R 0xDA2C38FF
#define COLOR_G 0x87C38FFF
#define COLOR_B 0x748CABFF

#define HEX_COLOR(hex)                                    \
    ((hex) >> (3 * 8)) & 0xFF, ((hex) >> (2 * 8)) & 0xFF, \
        ((hex) >> (1 * 8)) & 0xFF, ((hex) >> (0 * 8)) & 0xFF

static int check_sdl_code(int code)
{
    if (code < 0) {
        fprintf(stderr, "SDL error: %s\n", SDL_GetError());
        exit(1);
    }
    return code;
}

static void *check_sdl_ptr(void *ptr)
{
    if (!ptr) {
        fprintf(stderr, "SDL error: %s\n", SDL_GetError());
        exit(1);
    }
    return ptr;
}

typedef struct {
    float x, y;
} vec2_t;

vec2_t vec2(float x, float y) { return (vec2_t){x, y}; }
vec2_t vec2_sub(vec2_t a, vec2_t b) { return vec2(a.x - b.x, a.y - b.y); }
vec2_t vec2_scale(vec2_t a, float s) { return vec2(a.x * s, a.y * s); }
vec2_t vec2_add(vec2_t a, vec2_t b) { return vec2(a.x + b.x, a.y + b.y); }
vec2_t lerpv2(vec2_t a, vec2_t b, float p)
{
    return vec2_add(a, vec2_scale(vec2_sub(b, a), p));
}

void render_line(SDL_Renderer *renderer,
                 vec2_t begin,
                 vec2_t end,
                 uint32_t color)
{
    SDL_SetRenderDrawColor(renderer, HEX_COLOR(color));

    SDL_RenderDrawLine(renderer, (int) floorf(begin.x), (int) floorf(begin.y),
                       (int) floorf(end.x), (int) floorf(end.y));
}

void fill_rect(SDL_Renderer *renderer, vec2_t pos, vec2_t size, uint32_t color)
{
    SDL_SetRenderDrawColor(renderer, HEX_COLOR(color));

    const SDL_Rect rect = {
        (int) floorf(pos.x),
        (int) floorf(pos.y),
        (int) floorf(size.x),
        (int) floorf(size.y),
    };

    SDL_RenderFillRect(renderer, &rect);
}

void render_marker(SDL_Renderer *renderer, vec2_t pos, uint32_t color)
{
    const vec2_t size = vec2(MARKER_SIZE, MARKER_SIZE);
    fill_rect(renderer, vec2_sub(pos, vec2_scale(size, 0.5f)), size, color);
}

vec2_t beziern_sample(vec2_t *ps, vec2_t *xs, size_t n, float p)
{
    memcpy(xs, ps, sizeof(vec2_t) * n);
    for (; n > 1; n--)
        for (size_t i = 0; i < n - 1; ++i) xs[i] = lerpv2(xs[i], xs[i + 1], p);
    return xs[0];
}

void render_bezier_markers(SDL_Renderer *renderer,
                           vec2_t *ps,
                           vec2_t *xs,
                           size_t n,
                           float s,
                           uint32_t color)
{
    for (float p = 0.0f; p <= 1.0f; p += s)
        render_marker(renderer, beziern_sample(ps, xs, n, p), color);
}

void render_bezier_curve(SDL_Renderer *renderer,
                         vec2_t *ps,
                         vec2_t *xs,
                         size_t n,
                         float s,
                         uint32_t color)
{
    for (float p = 0.0f; p <= 1.0f; p += s) {
        vec2_t begin = beziern_sample(ps, xs, n, p);
        vec2_t end = beziern_sample(ps, xs, n, p + s);
        render_line(renderer, begin, end, color);
    }
}

#define CAPACITY 256
vec2_t ps[CAPACITY], xs[CAPACITY];
int ps_count = 0, ps_selected = -1;

int ps_at(vec2_t pos)
{
    const vec2_t ps_size = vec2(MARKER_SIZE, MARKER_SIZE);
    for (int i = 0; i < ps_count; ++i) {
        const vec2_t ps_begin = vec2_sub(ps[i], vec2_scale(ps_size, 0.5f));
        const vec2_t ps_end = vec2_add(ps_begin, ps_size);
        if ((ps_begin.x <= pos.x) && (pos.x <= ps_end.x) &&
            (ps_begin.y <= pos.y) && (pos.y <= ps_end.y))
            return i;
    }
    return -1;
}

int main(int argc, char *argv[])
{
    check_sdl_code(SDL_Init(SDL_INIT_VIDEO));
    SDL_Window *window =
        check_sdl_ptr(SDL_CreateWindow("Bezier Curves", 0, 0, SCREEN_WIDTH,
                                       SCREEN_HEIGHT, SDL_WINDOW_RESIZABLE));
    SDL_Renderer *renderer =
        check_sdl_ptr(SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED));
    check_sdl_code(
        SDL_RenderSetLogicalSize(renderer, SCREEN_WIDTH, SCREEN_HEIGHT));

    bool quit = false, markers = false;
    float t = 0.0f, bezier_sample_step = 0.05f;
    while (!quit) {
        SDL_Event event;
        while (SDL_PollEvent(&event)) {
            switch (event.type) {
            case SDL_QUIT: quit = true; break;

            case SDL_KEYDOWN:
                if (event.key.keysym.sym == SDLK_m) markers = !markers;
                break;

            case SDL_MOUSEBUTTONDOWN:
                if (event.button.button == SDL_BUTTON_LEFT) {
                    const vec2_t mouse_pos =
                        vec2(event.button.x, event.button.y);
                    ps_selected = ps_at(mouse_pos);

                    if (ps_selected < 0 && ps_count < CAPACITY)
                        ps[ps_count++] = mouse_pos;
                }
                break;

            case SDL_MOUSEBUTTONUP:
                if (event.button.button == SDL_BUTTON_LEFT) ps_selected = -1;
                break;

            case SDL_MOUSEMOTION:
                if (ps_selected >= 0)
                    ps[ps_selected] = vec2(event.motion.x, event.motion.y);
                break;

            case SDL_MOUSEWHEEL:
                if (event.wheel.y > 0) {
                    bezier_sample_step =
                        fminf(bezier_sample_step + 0.001f, 0.999f);
                } else if (event.wheel.y < 0) {
                    bezier_sample_step =
                        fmaxf(bezier_sample_step - 0.001f, 0.001f);
                }
                break;
            }
        }

        check_sdl_code(SDL_SetRenderDrawColor(renderer, HEX_COLOR(COLOR_BG)));
        check_sdl_code(SDL_RenderClear(renderer));

        if (ps_count >= 1) {
            if (markers)
                render_bezier_markers(renderer, ps, xs, ps_count,
                                      bezier_sample_step, COLOR_G);
            else
                render_bezier_curve(renderer, ps, xs, ps_count,
                                    bezier_sample_step, COLOR_G);
        }

        for (int i = 0; i < ps_count; ++i) {
            render_marker(renderer, ps[i], COLOR_R);
            if (i < ps_count - 1)
                render_line(renderer, ps[i], ps[i + 1], COLOR_R);
        }

        SDL_RenderPresent(renderer);

        SDL_Delay(DELTA_TIME_MS);
        t += DELTA_TIME_SEC;
    }

    SDL_Quit();

    return 0;
}
