PRES=stay-safe
PDFVIEW=evince

# sudo apt install texlive-full

all: check

pdf:
	pdflatex -synctex=1 $(PRES).tex

check: pdf
	$(PDFVIEW) $(PRES).pdf


clean:
	rm -fv *.log *.aux *.synctex.gz *.nav *.out *.toc *.snm $(PRES).pdf
