CFILES = $(wildcard *.c)
SFILES = $(patsubst %.c,%.s,$(CFILES))
OFILES = $(patsubst %.s,%.o,$(SFILES))
EXES = $(patsubst %.o,%.exe,$(OFILES))
LOGS = $(patsubst %.exe,%.log,$(EXES))

all: $(LOGS)

$(SFILES): %.s: %.c
	$(CC) -S $(CFLAGS) $< -o $@

$(OFILES): %.o: %.s
	$(AS) -o $@ $<

$(EXES): %.exe: %.o
	$(CC) -o $@ $<

$(LOGS): %.log: %.exe
	./$< | tee $@
