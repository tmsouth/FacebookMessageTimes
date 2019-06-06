#' A collection of my facebook messages from three statistics students
#'
#' @format A JSON file containing the meta data of a Facebook Messenger conversation.
#' @source \url{https://www.facebook.com/settings?tab=your_facebook_information}

"messages_censored1.json"

## library ----
library(tidyverse)

## read in data ----
messages_censored  <- read_csv("data-raw/messages_censored1.json")

## Save data to package ----
usethis::use_data(messages_censored, overwrite = TRUE)
