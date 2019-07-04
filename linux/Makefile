latexC=lualatex

cours = linux.tex
presentation = presetation_linux.tex

To_clean = *.log *.aux *.lof *.maf *.mtc* *.out *.toc *.lot *.nav *.snm

linux : $(cours)
	$(latexC) $(cours)
	$(latexC) $(cours)

presentation: $(presentation)
	$(latexC) $(presentation)
	$(latexC) $(presentation)

clean:
	rm -f $(To_clean)

