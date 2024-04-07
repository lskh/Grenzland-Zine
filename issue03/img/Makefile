PDF=caves.pdf dungeon.pdf encounters1.pdf encounters2.pdf npc.pdf pointcrawl.pdf title.pdf treasure.pdf map.pdf Carrack.pdf Cog.pdf Cutter.pdf Galleon.pdf Longship.pdf Schooner.pdf Trireme.pdf movemnt6pt.pdf movemnt8pt.pdf

all: ${PDF}

%.pdf: %.svg
	convert $< $@

%.pdf: %.dot
	dot -Tpdf $< > $@

%.pdf: %.jpg
	convert $< $@

%.pdf: %.png
	convert $< $@

clean: 
	rm -fv *.pdf
