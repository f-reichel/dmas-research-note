#!/bin/bash

echo "#######"
echo "# ONE #"
echo "#######"
echo

pdflatex -output-directory=pdf -interaction=nonstopmode researchnote.tex

echo
echo "#######"
echo "# BIB #"
echo "#######"
echo

bibtex pdf/researchnote.aux

echo
echo "#######"
echo "# TWO #"
echo "#######"
echo

pdflatex -output-directory=pdf -interaction=nonstopmode researchnote.tex

echo
echo "#########"
echo "# THREE #"
echo "#########"
echo

pdflatex -output-directory=pdf -interaction=nonstopmode researchnote.tex

rm pdf/*.log
#rm pdf/*.bib
rm pdf/*.aux
rm pdf/*.blg
#rm pdf/*.xml
#rm pdf/*.bcf
rm pdf/*.bbl
rm pdf/*.out

xdg-open pdf/researchnote.pdf

# watch directory for changes and recompile if something was changed
# ls -d * | entr -cp sh -c 'sh compile.sh'

