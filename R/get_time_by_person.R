#' Get Time by Person
#'
#' Finds the time a message was sent, if that user was the desired user.
#'
#' @param row: The message meta data from a messenger conversation.
#' @param name: The name of the person to be checked.
#'
#' @return The unix time of the message. Or NA if it is not the correct person.
#' @export
get_time_by_person <- function(row, name){
  data <- row %>% unlist()
  if(data[2] == name){
    return(data[3])
  }else{
    return(NA)
  }
}
