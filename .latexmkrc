# .latexmkrc – latexmk configuration
# Run:  latexmk          (builds main.tex)
#       latexmk -pvc     (builds and watches for changes)
#       latexmk -C       (clean all artifacts)

# Use pdflatex
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';

# Use biber for bibliography
$bibtex_use = 2;   # run biber automatically

# Main file (change if your file is named differently)
@default_files = ('main.tex');

# Output PDF name matches the source
$jobname = 'main';

# Put auxiliary files in a build/ subdirectory (keeps root clean)
# Uncomment the lines below if you prefer a separate build folder:
# $out_dir = 'build';
# $aux_dir = 'build';
