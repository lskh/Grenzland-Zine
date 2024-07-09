SRC=../macros cover forward abenteuer report minigame feedback ausblick imprint

all: Grenzland4.pdf

Grenzland4.pdf: ${SRC} Makefile
	groff -ms -mde -e -t -p -Tpdf -Kutf8 -dpaper=a5 -P -pA5 ${SRC} > $@

clean:
	rm -f *~
