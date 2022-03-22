#define connectStr "user=Tim dbname=testdb"

#define do_exit(conn) { PQfinish(conn); fprintf(stderr, "%s\n", PQerrorMessage(conn));  exit(1); }