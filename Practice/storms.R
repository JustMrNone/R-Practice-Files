
if(FALSE){
  filter(
    select(
      storms,
      !c(lat, long, pressure, ends_with("diameter"))
    ),
    
    status == "hurricane"
    
  )
  
  hurricanes <- storms |> 
    select(!c(lat, long, pressure, ends_with("diameter"))) |>
    filter(status == "hurricane") |>
    arrange(desc(wind), name) |>
    distinct(name, year, .keep_all = TRUE)
  
  
  hurricanes |> 
    select(c(year, name, wind)) |>
    write.csv("hurricanes.csv", row.names = FALSE)
  
  hurricanes <- read.csv("hurricanes.csv")
  
  hurricanes |> 
    group_by(year) |> 
    arrange(desc(wind))
  slice_head()
  
  hurricanes |> 
    group_by(year) |> 
    slice_max(order_by = wind)
}


hurricanes <- read.csv("hurricanes.csv")



hurricanes |> 
  group_by(year) |> 
  summarize(hurricanes = n())
