set -uo pipefail
main_tex_file=$1

# Show only output from bibtex and last last pdflatex run
# I hate to get excessing amount of output when I run my beautiful scripts ;)
pdflatex -interaction=nonstopmode $main_tex_file > /dev/null
bibtex $main_tex_file
pdflatex -interaction=nonstopmode $main_tex_file > /dev/null
pdflatex -interaction=nonstopmode -halt-on-error $main_tex_file
