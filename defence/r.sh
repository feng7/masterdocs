#!/bin/bash

if [ "$1" != "clean" ];
then
    pdflatex presentation
    biber presentation
    pdflatex presentation
    pdflatex presentation
    rm -f *.dvi *.log *.aux *.bbl *.blg *.ps *.sty *.out *.bcf *.xml
    rm -f presentation.{nav,snm,toc,vrb}
else
    rm -f *.dvi *.log *.aux *.bbl *.blg *.ps *.sty *.out *.bcf *.xml
    rm -f presentation.{nav,pdf,snm,toc,vrb}
fi
