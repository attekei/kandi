set -uo pipefail
document_name=$1

# Show only output from bibtex and last last pdflatex run
# I hate to get excessing amount of output when I run my beautiful scripts ;)
pdflatex -shell-escape -interaction=nonstopmode $document_name > /dev/null
bibtex $document_name
pdflatex -shell-escape -interaction=nonstopmode $document_name > /dev/null
pdflatex -shell-escape -interaction=nonstopmode -halt-on-error $document_name
