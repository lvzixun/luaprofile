
all: profile.so

profile.so: imap.c profile.c
	clang -undefined dynamic_lookup --shared -Wall -g -O2 -o $@ $^


clean:
	rm -rf profile.so