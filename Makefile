PROJECT=study-notes
TEX_ENGINE=xelatex

BUILDTEX=$(TEX_ENGINE) -shell-escape $(PROJECT).tex
REMOVE_AUXILIARY=make clean
PUBLISH_NOTES=make git-push

all:
	$(REMOVE_AUXILIARY)
	$(BUILDTEX)
	$(BUILDTEX)
	$(BUILDTEX)
	$(REMOVE_AUXILIARY)
	$(PUBLISH_NOTES)

clean-all:
	rm -rf *.aux *.log *.out *.bbl *.blg $(PROJECT).pdf

clean:
	rm -rf *.aux *.log *.out *.bbl *.blg

git-push:
	git add study-notes.pdf
	git commit -m "Update notes"
	git push origin master