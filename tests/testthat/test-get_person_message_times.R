test_that("get person from json works", {
  data <-  list(
    list("sender_id_INTERNAL" = " ", "sender_name"= "Tobin South", "timestamp_ms"= 1.553509e+12, "content"= " "),
    list("sender_id_INTERNAL" = " ","sender_name"= "Not Tobin", "timestamp_ms"= 1.553510e+12, "content"= " ")
  )
  expect_equal(get_person_message_times(data, "Tobin South"), 1553509000)
})
