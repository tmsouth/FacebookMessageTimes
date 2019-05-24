get_datetime <- function(raw_unix_times, timezone = "Australia/Darwin"){

  raw_datetime <- lapply(raw_unix_times, as_datetime) %>%
              do.call("c", .) %>%
              with_tz(., tzone = timezone)

  return(raw_datetime)
}
