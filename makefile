.PHONY: all clean install

all:
	latexmk

clean:
	latexmk -c -quiet

install:
	curl https://perso.ensta-paris.fr/~kielbasi/tikzuml/var/files/src/tikzuml-v1.0-2016-03-29.tbz -o tikz-uml.tbz
	tar -xvjf tikz-uml.tbz tikzuml-v1.0-2016-03-29/tikz-uml.sty
	mv tikzuml-v1.0-2016-03-29/tikz-uml.sty ./tikz-uml.sty
	rm -rf tikzuml-v1.0-2016-03-29/
	rm -f tikz-uml.tbz

build:
	inkscape --export-latex --export-filename=images/logical_architecture.pdf images/logical_architecture.svg
	inkscape --export-latex --export-filename=images/uc1_activity_diagram.pdf images/uc1_activity_diagram.svg
	inkscape --export-latex --export-filename=images/physical_architecture.pdf images/physical_architecture.svg
