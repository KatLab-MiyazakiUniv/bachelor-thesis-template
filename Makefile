all:
	latexmk paper.tex
	make clean-intermediate-file

clean-intermediate-file:
	rm -f *.aux *.dvi *.fdb_latexmk *.fls *.log *.synctex.gz

clean: clean-intermediate-file
	rm -f *.pdf