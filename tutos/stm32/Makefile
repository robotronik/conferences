CIBLE=pipeline
PFLAGS=-f markdown-implicit_figures --number-sections --toc
PDFVIEWER=okular

all :
	pandoc $(CIBLE).md --pdf-engine=xelatex $(PFLAGS) -o $(CIBLE).pdf

view :
	$(PDFVIEWER) $(CIBLE).pdf

clean :
	rm -i *.pdf