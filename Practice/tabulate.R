#votes <- read.table(
#  "votes.csv",
#  sep=",",
#  header=TRUE
#)

votes <- read.csv("votes.csv")

votes[, 1]
votes[, 2]
#accessing by column name 
votes$candidate
votes$mail
votes$poll

# individual value 
votes[1, 2]

votes$candidate[1]
votes$candidate[2]
votes$candidate[3]

# View(votes)
sum(
  votes$poll[1],
  votes$poll[2],
  votes$poll[3]
  )

sum(votes$poll)
sum(votes$mail)

votes$poll[1] + votes$mail[1]
votes$poll[2] + votes$mail[2]
votes$poll[3] + votes$mail[3]

# or more efficiently 

votes$total <- votes$poll + votes$mail


write.csv(votes, "total.csv", row.names = FALSE)

colnames(votes)

rownames(votes)

