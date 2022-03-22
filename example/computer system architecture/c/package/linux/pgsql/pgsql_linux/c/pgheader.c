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
    
    PGresult *res = PQexec(conn, "SELECT * FROM Cars WHERE Id=0");    
    
    if (PQresultStatus(res) != PGRES_TUPLES_OK) {

        printf("No data retrieved\n");        
        PQclear(res);
        do_exit(conn);
    }       
    
    int ncols = PQnfields(res);
    
    printf("There are %d columns\n", ncols);
    
    printf("The column names are:\n");
    
    for (int i=0; i<ncols; i++) {
        
        char *name = PQfname(res, i);
        printf("%s\n", name);
    }

    PQclear(res);
    PQfinish(conn);

    return 0;
}
