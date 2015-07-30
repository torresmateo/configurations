filename=dis

pdf: pdf
	pdflatex ${filename}.tex
	bibtex ${filename}||true
	pdflatex ${filename}.tex
	pdflatex ${filename}.tex

text: html
	html2text -width 100 -style pretty ${filename}/${filename}.html | sed -n '/./,$$p' | head -n-2 >${filename}.txt

html:
	@#latex2html -split +0 -info "" -no_navigation ${filename}
	htlatex ${filename}

ps:	dvi
	dvips -t letter ${filename}.dvi

dvi:
	latex ${filename}
	bibtex ${filename}||true
	latex ${filename}
	latex ${filename}

read:
	evince ${filename}.pdf &

aread:
	acroread ${filename}.pdf

clean:
	rm -f ${filename}.bib
	rm -f ${filename}.ps
	rm -f ${filename}.toc
	rm -f ${filename}.lot
	rm -f ${filename}.lof
	rm -f ${filename}.ist
	rm -f ${filename}.idx
	rm -f ${filename}.glo
	rm -f ${filename}.pdf
	rm -f ${filename}.acn
	rm -f ${filename}.log
	rm -f ${filename}.aux
	rm -f ${filename}.out
	rm -f ${filename}.dvi
	rm -f ${filename}.bbl
	rm -f ${filename}.blg
	rm -f ${filename}.mtc*
	rm -f ${filename}.maf
