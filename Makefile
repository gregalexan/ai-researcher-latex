MAIN    = main
LATEXMK = latexmk
FLAGS   = -pdf -interaction=nonstopmode -halt-on-error

.PHONY: all clean purge view

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex references.bib
	$(LATEXMK) $(FLAGS) $(MAIN).tex

clean:
	$(LATEXMK) -c $(MAIN).tex

purge:
	$(LATEXMK) -C $(MAIN).tex

view: $(MAIN).pdf
	start $(MAIN).pdf
