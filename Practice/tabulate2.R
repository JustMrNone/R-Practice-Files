votes <- read.csv("votes.csv", row.names = 1)

total_votes <- c()

for(candidate in rownames(votes)){
  total_votes[candidate] <- sum(votes[candidate, ])
}
total_votes
