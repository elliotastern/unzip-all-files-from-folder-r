# Set the folder_dir to the folder with the zip files and run!

##############################
# 0 - LOAD PACKAGE   
##############################
library(plyr) #1.8.6

############################## 
# 1 - LOAD DATA
##############################
folder_dir <- "the_path"
  
setwd(folder_dir)

zipF <- list.files(path = folder_dir, pattern = "*.zip", full.names = TRUE)
zipF <- zipF[!grepl("\\(", zipF)]

ldply(.data = zipF, .fun = unzip, exdir = "folder_dir")
