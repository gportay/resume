#
# The MIT License (MIT)
#
# Copyright (c) 2015-2016 Gaël PORTAY <gael.portay@gmail.com>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

PDFLATEX	?= pdflatex
HTMLLATEX	?= htlatex
SRC		:= $(wildcard *.tex)
PDF		:= $(SRC:.tex=.pdf)
HTML		:= $(SRC:.tex=.html)

.PRECIOUS: $(HTML:.html=/index.html)

all: $(PDF)

$(PDF) $(HTML):

quebec: french-quebec.pdf english-quebec.pdf

.INTERMEDIATE: french-quebec.tex english-quebec.tex
french-quebec.tex english-quebec.tex:

%-quebec.tex: %.tex
	sed -e "1,/\\begin{document}/{s,Engineer,Developer,;s,Ingénieur,Développeur,}" \
	    -e "/\\section{.*[Ee]xp[eé]riences}/,/^$$/{s,Engineer,Developer,;s,Ingénieur,Développeur,}" \
	    $< >$@

%.pdf: %.tex
	$(PDFLATEX) $< $@

%.html: %/index.html
	ln -sf $< $@

%/index.html: %.tex
	install -d $(@D)/
	cd $(@D)/ && $(HTMLLATEX) ../$< && ln -sf $*.html $(@F)

clean:
	rm -f *.pdf *.html *-quebec.tex

mrproper: clean
	rm -f *.aux *.lof *.log *.lot *.fls *.out *.toc *.dvi *-converted-to.*
