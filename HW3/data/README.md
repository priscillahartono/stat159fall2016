`Data` directory contains 4 files:

* `Advertising.csv`
	* G. James, D. Witten, T. Hastie, and R. Tibshirani. Advertising.csv. See http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

* `eda-output.txt`
	* Text file containing summary statistic and correlation matrix
	* Produced via sink() from `eda-script.R`

* `correlation-matrix.RData`
	* R binary format file containing matrix of correlation
	* Produced via save() from `eda-script.R`

* `regression.RData`
	* R binary format file containing regression objects when running `regression-script.R`
	* Produced via save() from `regression-script.R`
