x <- c(1, 2, 3, 4, 5)
y <- c(1, 2, 3, 4, NA)
z <- c(TRUE, FALSE, TRUE)
w <- letters[1:5]

#test for range value of x

source("../functions/range-value.R")

context("test for range value x")

test_that("range works as expected", {
	x <- c(1, 2, 3, 4, 5)

	expect_equal(range_value(x), 4)
	expect_length(range_value(x), 1)
	expect_type(range_value(x), 'double')
})

#test for range value of y

source("../functions/range-value.R")

context("test for range value y")

test_that("range works as expected", {
	y <- c(1, 2, 3, 4, NA)

	expect_length(range_value(y), 1)
	expect_equal(range_value(y), NA_real_)
	expect_equal(range_value(y, FALSE), 3)
})

#test for range value of z

source("../functions/range-value.R")

context("test for range value z")

test_that("range works as expected", {
        z <- c(TRUE, FALSE, TRUE)

        expect_length(range_value(z), 1)
        expect_type(range_value(z), 'integer')
	expect_equal(range_value(z), 1L)
})

#test for range value of w

source("../functions/range-value.R")

context("test for range value w")

test_that("range works as expected", {
        w <- letters[1:5]

        expect_error(range_value(w))
})


#test for missing values of x

source("../functions/missing-values.R")

context("test for missing value x")

test_that("missing values works as expected", {
        x <- c(1, 2, 3, 4, 5)

        expect_length(missing_values(x), 1)
        expect_type(missing_values(x), 'double')
	expect_gte(missing_values(x), 0)
})

#test for missing values of y

source("../functions/missing-values.R")

context("test for missing value y")

test_that("missing values works as expected", {
        y <- c(1, 2, 3, 4, NA)

        expect_length(missing_values(y), 1)
        expect_type(missing_values(y), 'double')
        expect_gte(missing_values(y), 0)
})

#test for missing values of z

source("../functions/missing-values.R")

context("test for missing value z")

test_that("missing values works as expected", {
        z <- c(TRUE, FALSE, TRUE)

        expect_length(missing_values(z), 1)
        expect_type(missing_values(z), 'double')
        expect_gte(missing_values(z), 0)
})

#test for missing values of w

source("../functions/missing-values.R")

context("test for missing value w")

test_that("missing values works as expected", {
        w <- letters[1:5]

        expect_length(missing_values(w), 1)
        expect_type(missing_values(w), 'double')
        expect_gte(missing_values(w), 0)
})
