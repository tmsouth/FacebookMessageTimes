load_facebook_message_data <- function(file_path){

  all_data <- fromJSON(file = filename)

  msgs <- all_data[[2]]

  return(msgs)

}


