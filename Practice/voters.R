url <- "https://raw.githubusercontent.com/fivethirtyeight/data/master/non-voters/nonvoters_data.csv"

voters <- read.csv(url)

nrow(voters)

ncol(voters)
#View(voters)
voters$voter_category

unique(voters$voter_category)

voters$Q22

unique(voters$Q22)

voters$Q21

unique(voters$Q21)


factor(
  voters$Q21, 
  labels = c("Yes", "No", "Unsure/Undecided"),
  exclude = c(-1)
  )
