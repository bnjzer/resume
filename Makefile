# sur Debian : apt-get install texlive-luatex texlive-xetex etoolbox
# texlive-latex-extra : moderncv v1.0 2012/03/26 => way too old

TEXDIR=/usr/share/texlive/texmf-dist/tex/latex/

all: resume.pdf

%.pdf: %.tex
	lualatex --interaction=stoperrormode $<

install: 
	cp -r fontawesome $(TEXDIR)
	cp -r moderncv $(TEXDIR)
	texhash

clean:
	rm -f *.aux *.log *.bbl *.blg *.out *.sty *.cls *.pdf

