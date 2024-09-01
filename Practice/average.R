average <- function(x){
  if(!is.numeric(x)){
    stop(("`x` is not numeric"))
  }
  if(any(is.na(x))){
    warning("`x` contains one or more NA values")
    return(NA)
  }
  sum(x) / length(x)
}