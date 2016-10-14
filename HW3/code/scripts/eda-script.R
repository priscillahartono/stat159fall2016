# Load packages
library(ggplot2)
library(ggthemes)

# Read data
Advertising <- read.csv("../../data/Advertising.csv")

# Summary table
sink("../../data/eda-output.txt")
summary(Advertising)
sink()

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

# Matrix of correlations
sink("../../data/eda-output.txt")
Matrix <- cor(Advertising)
sink()

save(Matrix, file = "../../data/correlation-matrix.RData")

# Scatterplot-matrix
png("../../images/scatterplot-matrix.png")
pairs(~TV+Radio+Newspaper+Sales, data = Advertising, main = "Scatterplot Matrix")
dev.off()


