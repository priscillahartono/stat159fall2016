`Code` directory contains 3 folders and 1 file:

* `functions`
	* `regression-functions.R` contains functions needed

* `scripts`
	* `eda-script.R` reads `Advertising.csv`, computes summary statistics, creates histogram, correlation matrix, and scatter plot. Saves to `eda-output.txt`
	* `regression-script.R` reads `Advertising.csv`, computes regression object, creates summary, produces diagnostic plots. Saves to `regression.RData`
	* `session-info-script.R` exports to `session-info.txt`

* `tests`

* `test-that.R`
	* Tests `regression-functions.R`
