CC := gcc
IGLIB = `pkg-config --cflags sqlite3`
CFLAGS= $(IGLIB) -g -Wall -std=gnu11 -O3
LDLIBS= `pkg-config --libs sqlite3`
TARGET= sqlite_read sqlite_write

all: $(TARGET)

sqlite_read: sqlite_read.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS) 

sqlite_write: sqlite_write.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS) 

clean:
	rm -f $(TARGET) *.o *.exe