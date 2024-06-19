# Define variables
C := 122

# Default target
all: HPMOR.pdf

# Generate chapter list
chapter_list.tex: tools.py
	python tools.py $(C) > chapter_list.tex

# Build PDF by running pdflatex twice
HPMOR.pdf: chapter_list.tex HPMOR.tex
	pdflatex HPMOR.tex
	pdflatex HPMOR.tex

# Clean all LaTeX compilation useless files
clean:
	rm -f chapter_list.tex Source-tex/*.aux *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz *.bbl *.blg *.brf *.cb *.cb2 *.dvi

.PHONY: all clean

