%.pdf: %.svg
	convert $< $@

%.pdf: %.dot
	dot -Tpdf $< > $@
