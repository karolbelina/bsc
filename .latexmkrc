$pdflatex = "pdflatex -shell-escape %O %S";
@default_files = ("src/eng.tex");
$out_dir = "out";
$jobname = "W08_242499_2020_praca_inżynierska";
$pdf_mode = 1;
$bibtex_use = 2;
$ENV{"BIBINPUTS"}="src";
$bibtex_fudge = 0;
$clean_ext = "lol";
