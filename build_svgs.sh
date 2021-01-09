#!/bin/bash
for path in $(find ./images -name '*.svg'); do
	filename="${path##*/}"
	basename="${filename%%.*}"
    inkscape --export-latex --export-filename=images/$basename.pdf images/$basename.svg
done
