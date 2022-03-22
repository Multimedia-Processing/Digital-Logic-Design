#include <stdio.h>
#include <stdlib.h>
#include <libpq-fe.h>
#include "setting.h"

int main(int argc, char *argv[]) {
    
    const int LEN = 10;
    const char *paramValues[1];
    
    if (argc != 2) {
    
        fprintf(stderr, "Usage: prepared_statement rowId\n");
        exit(1);
    }
    
    int rowId;
    int ret = sscanf(argv[1], "%d", &rowId);
    
    if (ret != 1) {
        fprintf(stderr, "The argument must be an integer\n");
        exit(1);
    }
    
    if (rowId < 0) {
        fprintf(stderr, "Error passing a negative rowId\n");
        exit(1);        
    }
   
    char str[LEN];
    snprintf(str, LEN, "%d", rowId);  
    paramValues[0] = str;  
    
    PGconn *conn = PQconnectdb(connectStr);

    if (PQstatus(conn) == CONNECTION_BAD) {
        
        fprintf(stderr, "Connection to database failed: %s\n",
            PQerrorMessage(conn));
        do_exit(conn);
    }
    
    char *stm = "SELECT * FROM Cars WHERE Id=$1";
    PGresult *res = PQexecParams(conn, stm, 1, NULL, paramValues, 
        NULL, NULL, 0);    
    
    if (PQresultStatus(res) != PGRES_TUPLES_OK) {

        printf("No data retrieved\n");        
        PQclear(res);
        do_exit(conn);
    }    

    printf("%s %s %s\n", PQgetvalue(res, 0, 0), 
        PQgetvalue(res, 0, 1), PQgetvalue(res, 0, 2));    

    PQclear(res);
    PQfinish(conn);

    return 0;
}
