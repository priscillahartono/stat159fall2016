# Load packages
library(ggplot2)
library(ggthemes)

# Read data
Advertising <- read.csv("../../data/Advertising.csv")

# Regression of TV and Sales
png("../../images/scatterplot-tv-sales.png")
plot(Advertising$TV, Advertising$Sales, abline(lm(Advertising$Sales ~ Advertising$TV)), xlab = "TV", ylab = "Sales", main = "Linear Regression of TV and Sales")
TVSalesReg <- lm(Sales ~ TV, data = Advertising)
dev.off()
# Regression of Radio and Sales
png("../../images/scatterplot-radio-sales.png")
plot(Advertising$Radio, Advertising$Sales, abline(lm(Advertising$Sales ~ Advertising$Radio)), xlab = "Radio", ylab = "Sales", main = "Linear Regression of Radio and Sales")
RadioSalesReg <- lm(Sales ~ Radio, data = Advertising)
dev.off()
# Regression of Newspaper and Sales
png("../../images/scatterplot-newspaper-sales.png")
plot(Advertising$Newspaper, Advertising$Sales, abline(lm(Advertising$Sales ~ Advertising$Newspaper)), xlab = "Newspaper", ylab = "Sales", main = "Linear Regression of Newspaper and Sales")
NewspaperSalesReg <- lm(Sales ~ Newspaper, data = Advertising)
dev.off()

# Regression of TV, Radio, Newspaper, and Sales
multiReg <- lm(Sales ~ TV + Radio + Newspaper, data = Advertising)
summaryMultiReg <- summary(multiReg)

# Save file to regression.RData
save(TVSalesReg, RadioSalesReg, NewspaperSalesReg, multiReg, summaryMultiReg, file = "../../data/regression.RData")

# Residual plot
png("../../images/residual-plot.png")
plot(multiReg, which = 1)
dev.off()

# Normal Q-Q plot
png("../../images/scale-location-plot.png")
plot(multiReg, which = 2)
dev.off()

# Scale Location plot
png("../../images/normal-qq-plot.png")
plot(multiReg, which = 3)
dev.off()
