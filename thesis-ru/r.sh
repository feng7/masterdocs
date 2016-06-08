#!/bin/bash

pdflatex wjf-thesis
biber wjf-thesis
pdflatex wjf-thesis
pdflatex wjf-thesis

rm wjf-thesis.{aux,bbl,bcf,blg,log,run.xml,tct,toc}
