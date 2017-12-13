# Kandi

My extraordinary bachelor thesis!

## Latest PDF

[Get it
here](https://github.com/attekei/kandi/raw/master/SCI_2017_Keinanen_Atte.pdf)

## Development prerequisites

1. Install a LaTeX distribution, `brew update && brew cask install mactex`

2. Add LaTeX binary directory (e.g. `/usr/texbin`) to your PATH variable in `.bashrc`, `.zshrc` or similar.

3. Install Node.js, `brew install nodejs`

## Scripts

Build PDF from LaTeX file, and rebuild on every file update:
```
./build-pdf-watch.sh research_plan.tex
```

Add BibTeX citation to `lahteet.bib` using Google Scholar:
```
./add-citation.sh "Haskell in computational biology"
```
