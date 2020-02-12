.PHONY: default
default: all

MAKEFLAGS += --no-builtin-rules

CC=gcc


%.o: %.c Makefile
	@echo "Compiling $<"
	$(CC) -c -o $@ $<

%.i: %.c Makefile
	@echo "Preprocessing $<"
	$(CC) $< -E -o $@

%: %.o Makefile
	@echo "Linking $@"
	$(CC) $< -o $@


SOURCES = hello.c preproc_1.c preproc_dangers_1.c preproc_dangers_2.c
PREPROC = $(SOURCES:.c=.i)
OBJECTS = $(SOURCES:.c=.o)
EXECS   = $(SOURCES:.c=)

.PHONY: all
all: $(PREPROC) $(EXECS)

.PHONY: clean
clean:
	rm -rf $(PREPROC) $(OBJECTS) $(EXECS)
