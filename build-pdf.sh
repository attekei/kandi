# Show only output from bibtex and last last pdflatex run
# I hate having excessing amount of output in my beautiful scripts :)
pdflatex -interaction=nonstopmode main > /dev/null
bibtex main
pdflatex -interaction=nonstopmode main > /dev/null
pdflatex -interaction=nonstopmode -halt-on-error main
