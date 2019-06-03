#' Load Facebook Message Data
#'
#' Loads in the data file for a chat on facebook messenger.
#' This data should be in JSON format and can be retrieved
#' from Facebook.
#'
#' https://www.facebook.com/help/1701730696756992?helpref=hc_global_nav
#'
#' @param file_path: The path to the JSON file of messages.
#'
#' @return A list of all messages.
#'
load_facebook_message_data <- function(file_path){

  all_data <- fromJSON(file = file_path)

  msgs <- all_data[[2]]

  return(msgs)

}


