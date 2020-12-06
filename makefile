.PHONY: all clean install

all:
	latexmk

clean:
	latexmk -c -quiet

build:
	inkscape --export-latex --export-filename=images/use_case_diagram.pdf images/use_case_diagram.svg
	inkscape --export-latex --export-filename=images/logical_architecture.pdf images/logical_architecture.svg
	inkscape --export-latex --export-filename=images/uc1_activity_diagram.pdf images/uc1_activity_diagram.svg
	inkscape --export-latex --export-filename=images/uc2_activity_diagram.pdf images/uc2_activity_diagram.svg
	inkscape --export-latex --export-filename=images/uc4_activity_diagram.pdf images/uc4_activity_diagram.svg
	inkscape --export-latex --export-filename=images/sequence_diagram_1.pdf images/sequence_diagram_1.svg
	inkscape --export-latex --export-filename=images/physical_architecture.pdf images/physical_architecture.svg
	inkscape --export-latex --export-filename=images/pdf_bench.pdf images/pdf_bench.svg
	inkscape --export-latex --export-filename=images/regression_bench.pdf images/regression_bench.svg
