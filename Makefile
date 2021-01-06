# Windows, WSL を想定
HTML_OPEN_CMD=explorer.exe
ifeq ($(shell uname),Darwin)
	# MacOS を想定
	HTML_OPEN_CMD=open -a "Safari"
endif

all:
	latexmk paper.tex -f
	make clean-intermediate-file

open:
	# リモートコンテナからは実行できない
	# WSL or Mac のターミナルから直接実行すること
	$(HTML_OPEN_CMD) paper.pdf

clean-intermediate-file:
	rm -f *.aux *.dvi *.fdb_latexmk *.fls *.log *.synctex.gz *.out *.toc

clean: clean-intermediate-file
	rm -f *.pdf
