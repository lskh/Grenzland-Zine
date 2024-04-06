SRC=macros cover forward crown abenteuer class report minigame ausblick

all: Grenzland3.pdf

Grenzland3.pdf: ${SRC} Makefile
	groff -ms -mde -e -t -p -Tpdf -Kutf8 -dpaper=a5 -P -pA5 ${SRC} > $@
