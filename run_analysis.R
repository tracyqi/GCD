## Getting and Cleaning Data
## Course Project

## Purpose
##1. Merges the training and the test sets to create one data set.
##2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##3. Uses descriptive activity names to name the activities in the data set
##4. Appropriately labels the data set with descriptive variable names. 
##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Note before run thi script
##1. Dependency:
##  1.1 dplyr package
##  1.2 reshape2 package
##2. file dependency
##  data file should be under UCI HAR Dataset\ folder

#######################################################################

##0. Load dplyr library
library(dplyr)

##1. Merges the training and the test sets to create one data set.
features <- read.table("UCI HAR Dataset/features.txt", header=FALSE, stringsAsFactors=FALSE)

##2. Extracts only the measurements on the mean and standard deviation for each measurement. 
features_OK <- filter(features, grepl("-mean\\(\\)|-std\\(\\)", V2))

##3. Uses descriptive activity names to name the activities in the data set
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2])))

##4. Appropriately labels the data set with descriptive variable names. 
##4.1 merge data table and name appropriately
x <- rbind(read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE)
           , read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE))
x <- x[, features_OK[,1]]
names(x) <- gsub("\\(|\\)", "", features_OK[,2])

##4.2 merge activity table and name appropriately
y <- rbind(read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE)
           , read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE))
y[,1] = activities[y[,1], 2]
names(y) <- "activity"

##4.3 merge subject table and name appropriately
subject <- rbind(read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE)
                 , read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE))
names(subject) <- "subject"

##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
final  <-  cbind(subject, y, x)

library(reshape2)
final %>%
  unique %>%
  melt(id=c("subject", "activity")) %>%
  dcast(subject + activity ~ variable, mean) %>%
  write.table(file = "final.txt")

