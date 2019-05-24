plot.over_time <- function(raw_datetime){
  ggplot(tibble(raw_datetime), aes(x= raw_datetime)) +
    geom_histogram() +
    xlab("Year")
}
