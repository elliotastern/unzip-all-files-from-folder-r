#set the folder_dir to the folder with the zip files and run!

library(plyr)


folder_dir <- "the_path"
  
setwd(folder_dir)


zipF <- list.files(path = folder_dir, pattern = "*.zip", full.names = TRUE)
zipF <- zipF[!grepl("\\(", zipF)]

ldply(.data = zipF, .fun = unzip, exdir = "folder_dir")
