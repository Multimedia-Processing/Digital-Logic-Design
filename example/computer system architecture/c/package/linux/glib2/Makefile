CC := gcc
IGLIB = `pkg-config --cflags glib-2.0`
CFLAGS= $(IGLIB) -g -Wall -std=gnu11 -O3
LDLIBS= `pkg-config --libs glib-2.0`
TARGET= glist gslist htable

all: $(TARGET)

glist: glist.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS) 

gslist: gslist.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS) 

htable: htable.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDLIBS) 

clean:
	rm -f $(TARGET) *.o *.exe
