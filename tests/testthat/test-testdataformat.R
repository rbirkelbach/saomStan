context("test-testdataformat-r.R")

test_that("input file format is list", {
    example_data <- create_example_data()
    expect_true(is.list(example_data))
})

name_test <- function(element_number, element_name) {
    test_that(paste("input list element no.",
                     element_number,
                     "is ",
                     element_name), {
        example_data <- create_example_data()
        expect_true(names(example_data)[element_number] == element_name)
    })
}

name_test(1, "waves")
name_test(2, "y")
name_test(3, "n_actors")
