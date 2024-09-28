SRC=../macros cover forward adventure guns report minigame review.ms feedback outlook imprint

all: Grenzland5.pdf

Grenzland5.ps: ${SRC} Makefile
	groff -ms -mde -e -t -p -Tps -Kutf8 -dpaper=a5 -P -pA5 ${SRC} > $@

Grenzland5.pdf: Grenzland5.ps Makefile
	ps2pdf $< $@

clean: 
	rm -f *~
