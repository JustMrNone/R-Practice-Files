get_votes <- function(prompt = "Enter Votes: "){
  repeat{
    
    votes <- suppressWarnings(as.integer(readline(prompt)))
    if(!is.na(votes)){
      return(votes)
    }
  }
  
}

total <- 0

for(i in c("Mario", "Peach", "Bowser")){
  votes <- get_votes(paste0(i, ": "))
  total <- total + votes
}




cat("Total Values: ", total)