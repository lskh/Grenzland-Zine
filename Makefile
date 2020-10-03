all: demo.pdf

%.pdf: %.tex coverart.png Makefile
	pdflatex $<

%.png: %.cfdg Makefile
	cfdg $< > $@

view: all
	zathura *.pdf &

clean: 
	rm -f *~ *.log *.aux *.toc

realclean: clean
	rm -f *.pdf coverart.png
