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

    PGresult *res = PQexec(conn, "SELECT * FROM Cars LIMIT 5");    
    
    if (PQresultStatus(res) != PGRES_TUPLES_OK) {

        printf("No data retrieved\n");        
        PQclear(res);
        do_exit(conn);
    }    
    
    int rows = PQntuples(res);
    
    for(int i=0; i<rows; i++) {
        
        printf("%s %s %s\n", PQgetvalue(res, i, 0), 
            PQgetvalue(res, i, 1), PQgetvalue(res, i, 2));
    }    

    PQclear(res);
    PQfinish(conn);

    return 0;
}
