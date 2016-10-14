args = commandArgs(trailingOnly = TRUE)

# Load packages
library(ggplot2)
library(ggthemes)

# Read data
Advertising <- read.csv("../../data/Advertising.csv")

# Summary table
sink("../../data/eda-output.txt")
summary <- summary(Advertising)
Matrix <- cor(Advertising)
'Summary Table'
print(summary)
# Matrix of correlations
'Matrix of Correlation'
print(Matrix)
sink()

save(Matrix, file = "../../data/correlation-matrix.RData")

# Histogram of TV
png("../../images/histogram-tv.png")
hist(Advertising$TV)
dev.off()
# Histogram of Radio
png("../../images/histogram-radio.png")
hist(Advertising$Radio)
dev.off()
# Histogram of Newspaper
png("../../images/histogram-newspaper.png")
hist(Advertising$Newspaper)
dev.off()
# Histogram of Sales
png("../../images/histogram-sales.png")
hist(Advertising$Sales)
dev.off()

# Scatterplot-matrix
png("../../images/scatterplot-matrix.png")
pairs(~TV+Radio+Newspaper+Sales, data = Advertising, main = "Scatterplot Matrix")
dev.off()



