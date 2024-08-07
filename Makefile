PROJECT=study-notes
TEX_ENGINE=xelatex

BUILDTEX=$(TEX_ENGINE) -shell-escape $(PROJECT).tex
REMOVE_AUXILIARY=make clean

all:
	$(REMOVE_AUXILIARY)
	$(BUILDTEX)
	$(BUILDTEX)
	$(BUILDTEX)
	$(REMOVE_AUXILIARY)
	cp $(PROJECT).pdf intermediate.pdf

clean:
	rm -rf *.aux *.log *.out *.bbl *.blg *.toc *.tdo
