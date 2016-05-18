all: compile

compile:
	$ pdflatex example.tex
	
clean:
	rm *.pyg *.vrb *.dvi *.log *.out *.nav *.snm *.tex~ *.maf *.blg *.md5 *.mtc* *.nlo *.lot *.lof *.toc *.ist *.bbl *.aux figure/* chapters/*.aux chapters/*.log *.glo
