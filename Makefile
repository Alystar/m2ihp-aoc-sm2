CC=gcc
CFLAGS=-Wall -O2
LDFLAGS=-lm -pg

OBJS=driver.o rdtsc.o fluid_mihps.o

test: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^

fluid_mihps.o: fluid_mihps.c
	$(CC) $(CFLAGS) -pg -c $< -fPIC

clean:
	rm -rf $(OBJS) test
