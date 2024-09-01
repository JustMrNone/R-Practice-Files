names <- c("Alice", "Bob", "charlie")
ages <- c(19, 45, 31)

people <- list(names, ages)
people


#indexing 
people[1]

#extracting a element from the list 
people[[1]]
people[[1]][1]

names(people) <- c("names", "ages")

people$names
people$ages

people$names[1]

people$ages[2]


df <- data.frame(people)
