.PHONY: data tests eda regression report clean all

data:
	cd data; curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > Advertising.csv 

tests:
	cd code/tests; Rscript -e "library(testthat); render('test-that.R')"

eda:
	cd code/scripts; Rscript eda-script.R; mv eda-output.txt ../../data

regression:
	cd code/scripts; Rscript regression-script.R

report:
	cd report; Rscript -e "library(rmarkdown); render('report.Rmd')"

clean:
	rm -f report/report.pdf

all: eda regression report
