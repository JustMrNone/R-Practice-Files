load_file_data <- function(file_names) {
  
  combined_df <- data.frame()
  
  for (file_name in file_names) {
    temp_data <- read.csv(file_name)
    temp_data$total <- round(apply(temp_data[, 2:8], MARGIN = 1, FUN = sum), 2)
    temp_data$year <- substr(file_name, 1, 4)
    combined_df <- rbind(combined_df, temp_data)
  }
  
  return(combined_df)
}

display_country_result <- function(selected_country, combined_df) {
  
  if (selected_country %in% unique(combined_df$country)) {
    
    country_specific_data <- subset(combined_df, country == selected_country)
    
    output_result <- paste0(country_specific_data$country, ' (', country_specific_data$year, '): ', country_specific_data$total)
    
    cat(output_result, sep='\n')
  } else {
    
    output_result <- paste0(rep(selected_country, times = 5), ' (', unique(combined_df$year), '): ', rep('data unavailable', times = 5))
    
    cat(output_result, sep='\n')
  }
}


file_names <- c('2020.csv', '2021.csv', '2022.csv', '2023.csv', '2024.csv')

combined_df <- load_file_data(file_names)

selected_country <- readline('Country: ')

display_country_result(selected_country, combined_df)


if(FALSE){
  
  #I don't know why this does not pass the test the output is identical
  
  
  
  file <- read.csv("2020.csv")
  
  csv_dir <-"/workspaces/138578871/CS50R/happy/happy"
  
  csv_files <- list.files(path = csv_dir, pattern = "*.csv", full.names = TRUE)
  
  countries <- data.frame(c(file[, 1]))
  
  cal <- function(chosen){
    
    country_found <- FALSE
    
    for(csv_file in csv_files){
      table <- read.csv(csv_file)
      
      if(chosen %in% table$country){
        scores <- subset(table, country == chosen)
        final_score <- apply(scores[, 2:ncol(scores)], 1, sum)
        base <- tools::file_path_sans_ext(basename(csv_file))
        val <- paste(chosen, " (",  base, "): ", round(final_score, digits = 2), sep="")
        cat(trimws(val), "\n")
        country_found <- TRUE
      }
    }
    
    if (!country_found) {
      for (csv_file in csv_files) {
        base <- tools::file_path_sans_ext(basename(csv_file))
        cat(trimws(paste(chosen, " (", base, "): data unavailable", sep="")), "\n")
      }
    }
  }
  
  chosen_country <- readline("Country: ")
  cal(chosen_country)
  
}