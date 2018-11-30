paper:
	pdflatex paper.tex
	bibtex -min-crossrefs=1000 paper.aux
	pdflatex paper.tex
	pdflatex paper.tex
	open paper.pdf &

clean:
	rm -f paper.log
	rm -f paper.aux
	rm -f paper.blg
	rm -f paper.bbl
	rm -f paper.pdf
	rm -f paper.out
