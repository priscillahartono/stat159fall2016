args = commandArgs(trailingOnly = TRUE)

library(ggplot2)
library(ggthemes)

Advertising <- read.csv("../data/Advertising.csv")

sink("../data/eda-output.txt")
'Summary Table of TV'
summary(Advertising$TV)
'Summary Table of Sales'
summary(Advertising$Sales)
sink()

png("../images/histogram-tv.png")
hist(Advertising$TV)
dev.off()

pdf("../images/histogram-tv.pdf")
hist(Advertising$TV)
dev.off()

png("../images/histogram-sales.png")
hist(Advertising$Sales)
dev.off()

pdf("../images/histogram-sales.pdf")
hist(Advertising$Sales)
dev.off()
