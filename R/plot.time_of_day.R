plot.time_of_day <- function(raw_datetime){

  clockS = function(t){hour(t)*3600+minute(t)*60+second(t)}

  time_of_day_num <- clockS(raw_datetime)

  ggplot(tibble(time_of_day_num), aes(x= time_of_day_num)) +
    geom_histogram() +
    scale_x_continuous(breaks=c(1:24*60*60),
                       labels=c(as.character(1:24)))+
    xlab("Local Time of Day")

  }
