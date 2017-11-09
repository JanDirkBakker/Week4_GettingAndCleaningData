library(reshape2)

theZip <- "./getdata_dataset.zip"

## Download and unzip the dataset:
if (!file.exists(theZip)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
    #Windows:
    download.file(fileURL, theZip, mode="wb")
    #mac:
    #download.file(fileURL, theZip, method="curl")
}  

if (!file.exists("UCI HAR Dataset")) { 
    unzip(theZip) 
}

# Load labels + features
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")
