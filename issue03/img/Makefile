PDF=caves.pdf dungeon.pdf encounters1.pdf encounters2.pdf npc.pdf pointcrawl.pdf title.pdf treasure.pdf map.pdf

all: ${PDF}

%.pdf: %.svg
	convert $< $@

%.pdf: %.dot
	dot -Tpdf $< > $@

%.pdf: %.png
	convert $< $@

clean: 
	rm -fv *.pdf
