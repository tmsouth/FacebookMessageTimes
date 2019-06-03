#' Get Datetime
#'
#' Converts a list of raw unix times to datetime objects in the given timezone.
#'
#' @param raw_unix_times: A list of unix times of messages
#' @param timezone: The timezone of the messages, default to Adelaide
#'
#' @return A list of datetime objects
#' @export
#'
get_datetime <- function(raw_unix_times, timezone = "Australia/Darwin"){

  raw_datetime <- lapply(raw_unix_times, as_datetime) %>%
              do.call("c", .) %>%
              with_tz(., tzone = timezone)

  return(raw_datetime)
}
