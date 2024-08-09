SRC=../macros cover forward patrons massenschlachten lostprocedures fifty report grenzland feedback ausblick imprint

all: Grenzland4.pdf

Grenzland4.ps: ${SRC} Makefile
	groff -ms -mde -e -t -p -Tps -Kutf8 -U -dpaper=a5 -P -pA5 ${SRC} > $@

Grenzland4.pdf: Grenzland4.ps
	ps2pdf $< $@

clean:
	rm -f *~
