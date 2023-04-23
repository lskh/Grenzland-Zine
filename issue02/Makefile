all: Grenzland2.pdf

%.pdf: %.tex Frontcover.pdf Backcover.pdf Makefile halloween.tex zisterne.tex wbzine.cls sessionform.tex
	pdflatex -draftmode $<
	pdflatex $<

Frontcover.pdf: Frontcover.png
	mogrify -format pdf $<

Backcover.pdf: Backcover.png
	mogrify -format pdf $<

view: all
	zathura Grenzland2.pdf &

clean:
	rm -f *~ *.log *.aux *.toc

realclean: clean
	rm -f *.pdf
