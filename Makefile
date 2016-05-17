all: resume.pdf

%.pdf: %.tex
	lualatex --interaction=stoperrormode $<

clean:
	rm -f *.aux *.log *.bbl *.blg *.out *.sty *.cls *.pdf

