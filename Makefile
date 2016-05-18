# sur Debian : apt-get install texlive-latex-extra texlive-fonts-extra texlive-luatex texlive-xetex

all: resume.pdf

%.pdf: %.tex
	lualatex --interaction=stoperrormode $<

clean:
	rm -f *.aux *.log *.bbl *.blg *.out *.sty *.cls *.pdf

