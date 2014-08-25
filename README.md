R-BSPgraphs
===========

Notes and script to create Bayesian Skyline Plots in R. 

The infile consists of an .txt output from Tracer (Drummond et al.2012).The file can be exported from Tracer> File> Export Data..., and has to be changed a little by deleting the first line. This can be done either in R itself or in Excel. 
The infile header should read: # Time Mean Median Upper Lower


Drummond AJ, Suchard MA, Xie D & Rambaut A (2012) Bayesian phylogenetics with BEAUti and the BEAST 1.7 Molecular Biology And Evolution 29: 1969-1973
