#!/usr/bin/bash

# .csv (generated by JCR as those by Steven Bel) -> .tsv  (can be handled by GitHub)

chmod -x csv/*
ls csv | xargs -l basename -s .csv | parallel "sed '1d;s/,/\t/g' csv/{}.csv | head -n2 -2 > {}.tsv"
