SHELL=/bin/bash

THEME = Программная реализация динамического моделирования погружения сваи
STUDENT = А.А. Уткин
DEGREE = д. ф.-м. н., проф.
DIRECTOR = М.И. Каменский
SED = "s/{{theme}}/${THEME}/; s/{{student}}/${STUDENT}/; s/{{degree}}/${DEGREE}/; s/{{director}}/${DIRECTOR}/"
DOC = diplom

all: titlepage
	python3 ./grap/grap_gen.py
	pdflatex ${DOC}.tex
	biber ${DOC}
	pdflatex ${DOC}.tex
	pdflatex ${DOC}.tex

pdflatex:
	@pdflatex ${DOC}.tex

titlepage:
	@sed -e ${SED} titlepage.fodt > tp-output.fodt
	libreoffice --headless --convert-to -density 300 png tp-output.fodt
	convert -density 300 -quality 100 tp-output.png tp-output.pdf

overfull:
	@pdflatex ${DOC}.tex | grep -va Underfull | grep -a . | grep -aC 12 Overfull
	@pdflatex ${DOC}.tex | grep -c Overfull

install_venv:
	@./install_venv.sh

install_pack:
	@./install_pack.sh

clean:
	rm -f ./grap/*.pdf
	rm -f *.aux *.bbl *.bcf *.blg *.log *out *.run.xml *.toc
	rm -f tp-output.fodt tp-output.pdf diplom.pdf
