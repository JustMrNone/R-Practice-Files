votes <- read.csv("votes.csv")

ggplot(votes, aes(x = candidate, y = poll)) + geom_col()

