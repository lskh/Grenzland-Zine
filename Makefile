all: Grenzland1.pdf

GENPNG=Grenzland-postapo.gen.png Grenzland-praeapo.gen.png\
	Grenzland-Startarea.gen.png Inseln-Startarea.gen.png

.PRECIOUS: $(GENPNG)

%.pdf: %.tex License.tex $(GENPNG) Coverimage.png Makefile
	pdflatex $<

%.gen.png: %.gen.svg Makefile
	inkscape -D -o $@ $<

coverart.png: coverart.cfdg Makefile
	cfdg $< > $@

License.tex: License.md Makefile
	pandoc -o $@ $<

view: all
	zathura *.pdf &

clean: 
	rm -f *~ *.log *.aux *.toc

realclean: clean
	rm -f *.pdf *.gen.png coverart.png License.tex
