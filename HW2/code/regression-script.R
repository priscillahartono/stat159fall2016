library(ggplot2)
library(ggthemes)

Advertising <- read.csv("../data/Advertising.csv")

Regression <- lm(Advertising$Sales ~ Advertising$TV)
regressionSummary <- summary(Regression)
save(Regression, regressionSummary, file='../data/regression.RData')

png("../images/scatterplot-tv-sales.png")
plot(Advertising$TV, Advertising$Sales, abline(lm(Advertising$Sales ~ Advertising$TV)), xlab = "TV", ylab = "Sales", main = "Linear Regression")
dev.off()

pdf("../images/scatterplot-tv-sales.pdf")
plot(Advertising$TV, Advertising$Sales, abline(lm(Advertising$Sales ~ Advertising$TV)), xlab = "TV", ylab = "Sales", main = "Linear Regression")
dev.off()

