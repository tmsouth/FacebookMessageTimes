#' Get Message Times by Person
#'
#' Finds all of the message times for a given person in a series of messages.
#'
#' @param msgs: A list of messages of multiple users to be filtered.
#' @param name: The full name of the person to be extracted.
#'
#' @return A list of message times in unix timecode format.
#'
#' @examples: get_person_message_times(msgs, "Tobin South")
#' @export

get_person_message_times <- function(msgs, name){

  times <- lapply(msgs, get_time_by_person, name = name)
  raw_unix_times <- times[!is.na(times)] %>% as.numeric()
  raw_unix_times <- raw_unix_times /1000

  return(raw_unix_times)
}
