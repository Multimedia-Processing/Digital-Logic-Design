#include <stdio.h>
#include <stdlib.h>
#include <libpq-fe.h>
#include "setting.h"

int main() {
    
    PGconn *conn = PQconnectdb(connectStr);

    if (PQstatus(conn) == CONNECTION_BAD) {
        
        fprintf(stderr, "Connection to database failed: %s\n",
            PQerrorMessage(conn));
        do_exit(conn);
    }

    int ver = PQserverVersion(conn);

    printf("Server version: %d\n", ver);
    
    PQfinish(conn);

    return 0;
}
