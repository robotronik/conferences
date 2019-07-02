latexC=lualatex

SRC = linux.tex

To_clean = *.log *.aux *.lof *.maf *.mtc* *.out *.toc *.lot

linux : $(SRC)
	$(latexC) $(SRC)
	$(latexC) $(SRC)

clean:
	rm -f $(To_clean)

