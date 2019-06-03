library(testthat)
library(FacebookMessageTimes)
library(lubridate)

test_that("date time works", {
  data <-  list(1553509000)
  expect_true( as.character(get_datetime(data)) == "2019-03-25 19:46:40")
})

