.PHONY: all data clean


all: data report/report.pdf data/eda-output.txt data/regression.RData

data/eda-output.txt: code/eda-script.R data/Advertising.csv
	cd code; Rscript eda-script.R

data/regression.RData: code/regression-script.R data/Advertising.csv
	cd code; Rscript regression-script.R

report/report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	cd report; Rscript -e "library(rmarkdown); render('report.Rmd')"


data:
	cd data; curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > Advertising.csv


clean:
	rm -f report/report.pdf
