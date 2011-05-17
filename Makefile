# Makefile for "Learning To Trade Power" by Richard Lincoln
#

SOURCE = thesis

BIBTEX = bibtex
PDFLATEX = pdflatex

.PHONY: help clean pdf

.DEFAULT_GOAL := pdf

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  help     to display this help message"
	@echo "  clean    to remove output and auxillary files"
	@echo "  pdf      to make PDF file"

clean:
	-rm -vf $(SOURCE).pdf
	-rm -vf *.aux
	-rm -vf *.bbl
	-rm -vf *.blg
	-rm -vf *.log
	-rm -vf *.brf
	-rm -vf *.lot
	-rm -vf *.lof
	-rm -vf *.out
	-rm -vf *.toc

pdf: 
	$(PDFLATEX) $(SOURCE)
	$(BIBTEX) $(SOURCE)
	$(PDFLATEX) $(SOURCE)
	$(PDFLATEX) $(SOURCE)
	@echo
	@echo "Build finished; PDF file is:" $(SOURCE).pdf

