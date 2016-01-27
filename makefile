PDFTEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
XETEX = xelatex -shell-escape --interaction=nonstopmode
BIB = bibtex
SRC = REIMER_ascat_tandem_operation
LOG = make.log
PDC = pandoc

all: $(SRC).pdf $(SRC).html

view:
	evince $(SRC).pdf

.PHONY: $(SRC).pdf
$(SRC).pdf:
	$(PDC) --read=markdown --write=beamer --output=$(SRC).tex --latex-engine=pdflatex --reference-links --atx-headers --number-sections --standalone --template=./template/beamer_temp.tex --filter=./template/columnfilter.py $(SRC).md
	$(PDFTEX) $(SRC).tex > $(LOG) 2>&1

$(SRC).html:
	# $(PDC) -t html5 --template=./template/revealjs_temp.html --standalone --section-divs --variable theme="sky" --variable transition="linear" $(SRC).md -o $(SRC).html
	python ./template/makeslide.py $(SRC).md ./template/revealjs.html ./reveal.js -o $(SRC).html  -r slide -t night --unsafe
