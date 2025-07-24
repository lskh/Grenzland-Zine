SRC=../zine.mac toc forward information discord contact monday outlook imprint

all: Grenzland6.pdf

body.ps: ${SRC} Makefile
	groff -ms -mde -e -t -p -Tps -Kutf8 -dpaper=a5 -P -pA5 ${SRC} > $@

body.pdf: body.ps Makefile
	ps2pdf $< $@

Grenzland6.pdf: body.pdf Front.png Back.png
	pdfjam --a5paper -o $@ -- Front.png - body.pdf {},-,{} Back.png -

clean: 
	rm -f *~
