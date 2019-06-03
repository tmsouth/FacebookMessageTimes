#' Plot of messages over time
#'
#' Plots the distribution of messages over time.
#'
#' @param raw_datetime: A list of datetime objects of messages.
#'
plot.over_time <- function(raw_datetime){
  ggplot(tibble(raw_datetime), aes(x= raw_datetime)) +
    geom_histogram() +
    xlab("Year")
}
