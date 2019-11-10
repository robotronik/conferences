latexC=lualatex

cours = linux.tex
presentation = presentation.tex
test = template_beamer.tex

To_clean = *.log *.aux *.lof *.maf *.mtc* *.out *.toc *.lot *.nav *.snm

the_pdf = $(subst .tex,.pdf,$(presentation))
the_pdf_cours = $(subst .tex,.pdf,$(cours))
the_pdf_test = $(subst .tex,.pdf,$(test))


%.pdf: %.tex
	$(latexC) $<
	$(latexC) $<

presentation: $(the_pdf)

linux: $(the_pdf_cours)

test: $(the_pdf_test)


clean:
	rm -f $(To_clean)

