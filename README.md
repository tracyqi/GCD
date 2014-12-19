Getting and Cleaning Data Course Project
===========================================

courseID: getdata-016
submissionID: qixi@msn.com
Project Url: https://class.coursera.org/getdata-016/human_grading

1. Background & Purpose
=========================================
This  github branch includes the following files:
* **1. 'README.md'**: this file
* **2. 'Codebook.md'**: Code book that describes the variables, the data, and any transformations or work that run_analysis.R performed to clean up the data 
* **3. 'final.txt'**: the final output 
* **4. 'run_analysis.R'**: the R script designed to clean/tiny/transform UCI HAR - Human Activity Recongition data files. for details of the original file please refer to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Workflow of 'run_analysis.R'
* 1. Merges the training and the test sets to create one data set.
* 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
* 3. Uses descriptive activity names to name the activities in the data set
* 4. Appropriately labels the data set with descriptive variable names. 
* 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

2. Dependency and Requirements:
=========================================
* **1. dplyr package**
* **2. reshape2 package**

3. Input and Output
=========================================
* **Data file dependency:**
    data file should be under UCI HAR Dataset\ folder
* **Output**
    'run_analysis.R' produces mean and standard Diviation of measurements taken for each subject and each activity.

4. Parameters
=========================================
None.
