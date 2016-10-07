.PHONY: data all clean

data:
	cd data; curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > Advertising.csv


all: data report.pdf eda-output.txt regression.RData

eda-output.txt: code/eda-script.R data/Advertising.csv
	cd code; Rscript eda-script.R

regression.RData: code/regression-script.R data/Advertising.csv
	cd code; Rscript regression-script.R

report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	cd report; pandoc report.Rmd -s -o report.pdf


clean:
	rm -f report/report.pdf
