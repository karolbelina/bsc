.PHONY: all clean install

all:
	latexmk

clean:
	latexmk -c -quiet

build:
	inkscape --export-latex --export-filename=images/logical_architecture.pdf images/logical_architecture.svg
	inkscape --export-latex --export-filename=images/uc1_activity_diagram.pdf images/uc1_activity_diagram.svg
	inkscape --export-latex --export-filename=images/physical_architecture.pdf images/physical_architecture.svg
