source("functions/regression-functions.R")

context("test regression functions")

# Multiple regression
reg <- lm(mpg ~ disp + hp, data = mtcars)

#RSS
test_that("RSS function is working", {
  expect_equal(residual_sum_squares(reg), sum(reg$residuals^2))
  expect_equal(residual_sum_squares(reg), 283.493435)
})

#TSS
test_that("TSS function is working", {
  expect_equal(total_sum_squares(reg), residual_sum_squares(reg)/(1-r_squared(reg)))
  expect_equal(total_sum_squares(reg), 1126.0472)
})

#RSE
test_that("RSE function is working", {
  expect_equal(residual_std_error(reg), summary(reg)$sigma)
  expect_equal(residual_std_error(reg), 3.1266013)
})

#R2
test_that("R2 function is working", {
  expect_equal(r_squared(reg), summary(reg)$r.squared)
  expect_equal(r_squared(reg), 0.748240182)
})

#F-statistic
test_that("F-statistic function is working", {
  expect_equal(f_statistic(reg), summary(reg)$fstatistic[1])
})
