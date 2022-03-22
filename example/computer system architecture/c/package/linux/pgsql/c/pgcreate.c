#include <stdio.h>
#include <stdlib.h>
#include <libpq-fe.h>
#include "setting.h"
/*
void do_exit(PGconn *conn, PGresult *res) {
    
    fprintf(stderr, "%s\n", PQerrorMessage(conn));    

    PQclear(res);
    PQfinish(conn);    
    
    exit(1);
}
*/

int main() {
    
    PGconn *conn = PQconnectdb(connectStr);

    if (PQstatus(conn) == CONNECTION_BAD) {
        
        fprintf(stderr, "Connection to database failed: %s\n",
            PQerrorMessage(conn));
            
        PQfinish(conn);
        exit(1);
    }

    PGresult *res = PQexec(conn, "DROP TABLE IF EXISTS Cars");
    
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        do_exit(conn);
    }
    
    PQclear(res);
    
    res = PQexec(conn, "CREATE TABLE Cars(Id INTEGER PRIMARY KEY," \
        "Name VARCHAR(20), Price INT)");
        
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        // do_exit(conn); 
        do_exit(conn);
    }
    
    PQclear(res);
    
    res = PQexec(conn, "INSERT INTO Cars VALUES(1,'Audi',52642)");
        
    if (PQresultStatus(res) != PGRES_COMMAND_OK) 
        do_exit(conn);     
    
    PQclear(res);    
    
    res = PQexec(conn, "INSERT INTO Cars VALUES(2,'Mercedes',57127)");
        
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        do_exit(conn);   
    }
    
    PQclear(res);    
    
    res = PQexec(conn, "INSERT INTO Cars VALUES(3,'Skoda',9000)");
        
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        do_exit(conn);   
    }
    
    PQclear(res);  
    
    res = PQexec(conn, "INSERT INTO Cars VALUES(4,'Volvo',29000)");
        
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        do_exit(conn);   
    }
    
    PQclear(res);      
    
    res = PQexec(conn, "INSERT INTO Cars VALUES(5,'Bentley',350000)");
        
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        do_exit(conn);   
    }
    
    PQclear(res);  
    
    res = PQexec(conn, "INSERT INTO Cars VALUES(6,'Citroen',21000)");
        
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        do_exit(conn);   
    }
    
    PQclear(res);  
    
    res = PQexec(conn, "INSERT INTO Cars VALUES(7,'Hummer',41400)");
        
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        do_exit(conn);   
    }
    
    PQclear(res);  
    
    res = PQexec(conn, "INSERT INTO Cars VALUES(8,'Volkswagen',21600)");
        
    if (PQresultStatus(res) != PGRES_COMMAND_OK) {
        do_exit(conn);   
    }
    
    PQclear(res);  
    PQfinish(conn);

    return 0;
}
