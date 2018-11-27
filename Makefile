.PHONY: long_doc.pdf math_doc.pdf all clean

all: long_doc.pdf math_doc.pdf

long_doc.pdf: long_doc.tex Makefile
	latexmk -pdf -bibtex -pdflatex="lualatex -interaction=nonstopmode -file-line-error -shell-escape" -use-make long_doc.tex

math_doc.pdf: math_doc.tex Makefile
	latexmk -pdf -bibtex -pdflatex="lualatex -interaction=nonstopmode -file-line-error -shell-escape" -use-make math_doc.tex

clean:
	latexmk -CA -f long_doc.pdf
	latexmk -CA -f math_doc.pdf
