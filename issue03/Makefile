SRC=macros cover forward crown class report minigame abenteuer ausblick imprint

all: Grenzland3.pdf Cover.pdf img

img: Makefile
	make -C img all

Grenzland3.pdf: ${SRC} Makefile
	groff -ms -mde -e -t -p -Tpdf -Kutf8 -dpaper=a5 -P -pA5 ${SRC} > $@

Cover.pdf: Cover.svg Makefile
	inkscape -C -o $@ $<

.PHONY: img clean

clean: 
	rm -fv *.pdf
	make -C img clean
