PDF=Grenzland1.pdf

GENPNG=Grenzland-postapo.gen.png Grenzland-praeapo.gen.png\
	Grenzland-Startarea.gen.png Inseln-Startarea.gen.png

.PRECIOUS: $(GENPNG)

all: $(PDF)

%.pdf: %.tex License.tex $(GENPNG) Coverimage.png wbzine.cls Makefile
	pdflatex $<

%.gen.png: %.gen.svg Makefile
	inkscape -D -o $@ $<

coverart.png: coverart.cfdg Makefile
	cfdg $< > $@

License.tex: License.md Makefile
	pandoc -o $@ $<

Frontcover.png: Makefile 
	pdftoppm -f 1 -l 1 $(PDF) > tmp.png
	convert +level-colors "#000000","#ff44bb" \
	tmp.png $@

Backcover.png: Makefile
	pdftoppm -f 1 -l 1 $(PDF) > tmp.png
	convert +level-colors "#ff44bb","#ff44bb" \
	-fuzz 100% tmp.png $@
	rm -f tmp.png

view: all
	zathura *.pdf &

clean: 
	rm -f *~ *.log *.aux *.toc

realclean: clean
	rm -f *.pdf *.gen.png coverart.png License.tex
