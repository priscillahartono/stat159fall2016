# Residual Sum of Squares
# Function should take the "lm" object as input, and output the RSS
residual_sum_squares <- function(reg) {
  sum(reg$residuals^2)
}

# Total Sum of Squares
# Function should take the "lm" object as input, and output the TSS
total_sum_squares <- function(reg) {
  residual_sum_squares(reg)/(1-r_squared(reg))
}

# Residual Standard Error
# Function should take the "lm" object as input, and output the RSE
residual_std_error <- function(reg) {
  summary(reg)$sigma
}
  
# R-squared
# Function should take the "lm" object as input, and output $R^2$
r_squared <- function(reg) {
  summary(reg)$r.squared
}
  
# F-statistic
# Function should take the "lm" object as input, and output F-statistic
f_statistic <- function(reg) {
  summary(reg)$fstatistic[1]
}
  