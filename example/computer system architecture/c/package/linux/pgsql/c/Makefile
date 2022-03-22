CC := gcc
IGLIB = `pkg-config --cflags libpq`
CFLAGS= $(IGLIB) -g -Wall -std=gnu11 -O3
LDLIBS= `pkg-config --libs libpq`
TARGET= pghello pgserver pgcreate pgquery pgmultirows pgprepare pgheader pglisttab pgtransact

all: $(TARGET)

pghello: pghello.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS) 

pgserver: pgserver.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS) 

pgcreate: pgcreate.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS)

pgquery: pgquery.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS)

pgmultirows: pgmultirows.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS)

pgprepare: pgprepare.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS)

pgheader: pgheader.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS)

pglisttab: pglisttab.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS)

pgtransact: pgtransact.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS)

clean:
	rm -f $(TARGET) *.o *.exe

