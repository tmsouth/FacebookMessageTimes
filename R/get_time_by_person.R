#' Title
#'
#' @param row
#'
#' @return
#' @export
#'
#' @examples
get_time_by_person <- function(row, name){
  data <- row %>% unlist()
  if(data[2] == name){
    return(data[3])
  }else{
    return(NA)
  }
}
