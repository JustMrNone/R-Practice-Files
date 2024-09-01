get_votes <- function(prompt = "Enter Votes: "){
 votes <- suppressWarnings(as.integer(readline(prompt)))
ifelse(is.na(votes), 0, votes)
}

mario <- get_votes(prompt = "Mario: ")
peach <- get_votes(prompt = "Peach: ")
bowser <- get_votes(prompt = "Bowser: ")

#mario <- as.integer(mario)
#peach <- as.integer(peach)
#bowser <- as.integer(bowser)

# bug is here 
#total <- mario + peach + bowser 
total <- sum(mario, peach, bowser)


print(paste("Total Values: ", total))