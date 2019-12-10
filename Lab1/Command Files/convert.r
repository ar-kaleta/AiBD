#!/usr/bin/env Rscript






print("R script: converting .sav to .csv")

library(foreign)

write.table(read.spss("Lab1/Original Data/pew.sav"), file="Lab1/Analysis Data/converted.csv", quote = TRUE, sep = '`')

