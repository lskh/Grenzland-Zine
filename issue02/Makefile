all: Grenzland2.pdf Cover.png

%.pdf: %.tex Titlepage.tex coverart.png Makefile
	pdflatex -draftmode $<
	pdflatex $<

coverart.png: coverart.cfdg Makefile
	cfdg -s 1200x1200 $< > $@

Cover.png: Cover.pdf Makefile
	pdftoppm -f 1 -l 1 -r 300 $< > tmp.png
	convert -fuzz 50% -fill "#ff7755" -opaque "#ffffff" \
	tmp.png $@
	rm -f tmp.png

%.png: %.cfdg Makefile
	cfdg $< > $@

view: all
	zathura *.pdf &

clean: 
	rm -f *~ *.log *.aux *.toc

realclean: clean
	rm -f *.pdf Cover.png coverart.png
