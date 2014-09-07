#!/bin/bash
pandoc -f markdown -t latex -o $1_.tex $1.md
echo created tex
cat /Users/kraemer/Tools/ttm/latex-prefix.tex $1_.tex /Users/kraemer/Tools/ttm/latex-suffix.tex > $1.tex
echo created tex preamble
echo creating pdf
/usr/texbin/pdflatex $1.tex
# deleting extra files produced by pdflatex
rm $1_.tex
rm $1.tex
rm $1.aux
rm $1.log
rm $1.out