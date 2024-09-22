SRC=../macros cover forward patrons massenschlachten lostprocedures echtzeit  fifty report grenzland feedback ausblick imprint notes

all: Grenzland4.pdf

Grenzland4.ps: ${SRC} Makefile
	groff -ms -mde -e -t -p -Tps -Kutf8 -U -dpaper=a5 -P -pA5 ${SRC} > $@

Grenzland4.pdf: Grenzland4.ps
	ps2pdf $< $@


Grenzland4-final.pdf: Grenzland4.pdf img/Grenzlandkarte1.pdf img/Grenzlandkarte2.pdf
	pdfjam Grenzland4.pdf 1-19 img/Grenzlandkarte1.pdf \
	img/Grenzlandkarte2.pdf 1 \
	Grenzland4.pdf 22- --paper a5paper -o Grenzland4-final.pdf
clean:
	rm -f *~
