SRC=../macros toc forward guns landscapes minicon technosaurier steinbruch  droyne review report outlook imprint

all: Grenzland5.pdf

body.ps: ${SRC} Makefile
	groff -ms -mde -e -t -p -Tps -Kutf8 -dpaper=a5 -P -pA5 ${SRC} > $@

body.pdf: body.ps Makefile
	ps2pdf $< $@

Grenzland5.pdf: body.pdf Front.png Back.png
	pdfjam --a5paper -o $@ -- Front.png - body.pdf {},-,{} Back.png -

clean: 
	rm -f *~
