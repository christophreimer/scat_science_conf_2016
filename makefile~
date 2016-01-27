PDFTEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
XETEX = xelatex -shell-escape --interaction=nonstopmode
BIB = bibtex
SRC = REIMER_ascat_tandem_operation
LOG = make.log
PDC = pandoc

all: $(SRC).pdf

view:
	evince $(SRC).pdf

.PHONY: $(SRC).pdf
$(SRC).pdf:
	$(PDC) --read=markdown --write=beamer --output=$(SRC).tex --latex-engine=pdflatex --reference-links --atx-headers --number-sections --standalone --template=./template/beamer_temp.tex --filter=./template/columnfilter.py $(SRC).md
	$(PDFTEX) $(SRC).tex > $(LOG) 2>&1
