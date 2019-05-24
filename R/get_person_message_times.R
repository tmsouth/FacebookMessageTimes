get_person_message_times <- function(msgs, name){

  times <- lapply(msgs, get_time_by_person, name = name)
  raw_unix_times <- times[!is.na(times)] %>% as.numeric()
  raw_unix_times <- raw_unix_times /1000

  return(raw_unix_times)
}
