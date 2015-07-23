
readData <- function(){
#================================================
#This function returns data required for plotting
#================================================ 
  #download data from URL
  print ("file is going to be downloaded")
  dataFileURL <- "http://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
  #https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2
  #I am using Windows so https is removed and replaced with http curl does not work in my machine
  if (!file.exists(".\\data")){dir.create(".\\data")}#if there is no directory called data create one
  #now store downloaded file in data directory
  download.file(dataFileURL, destfile = ".\\data\\StormData.csv.bz2", mode ="wb")
  #mode set to "wb" because this is binary data
  #we do not need to use unzip as read.table and read.csv can directly read compressed files
 				
  ### READING data  
  stormData <- read.csv(".\\data\\StormData.csv.bz2", header = TRUE)
  stormData
}