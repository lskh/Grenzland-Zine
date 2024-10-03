SRC=../macros toc forward adventure guns report minigame review.ms feedback outlook imprint

all: Grenzland5.pdf

body.ps: ${SRC} Makefile
	groff -ms -mde -e -t -p -Tps -Kutf8 -dpaper=a5 -P -pA5 ${SRC} > $@

body.pdf: body.ps Makefile
	ps2pdf $< $@

Grenzland5.pdf: body.pdf Front.png Back.png
	pdfjam --a5paper -o $@ -- Front.png - body.pdf {},-,{} Back.png -

clean: 
	rm -f *~
