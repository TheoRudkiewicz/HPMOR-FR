# pythontex:
# 	@pythontex HPMOR.tex --interpreter python:python3.8

# Variable to store the integer argument
c = 122

# Rule to generate chapter_list.tex by calling the Python script with the argument c
chapter_list.tex:
	python tools.py $(c) > chapter_list.tex

# Rule to compile HPMOR.tex into a PDF
HPMOR.pdf: 
	chapter_list.tex
	pdflatex HPMOR.tex

# Phony targets
.PHONY: all clean

# Default rule to build the PDF
all: HPMOR.pdf

# Clean up generated files
clean:
	rm -f chapter_list.tex
