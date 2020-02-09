.PHONY: default
default: all

CC=gcc


%.o: %.c Makefile
	$(CC) -c -o $@ $<

%.i: %.c Makefile
	$(CC) $< -E -o $@

%: %.o Makefile
	$(CC) $< -o $@


.PHONY: all
all: preprocess_example.i preprocess_example_fail.i

.PHONY: clean
clean:
	rm -rf *.i *.o
