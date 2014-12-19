CodeBook - Getting and Cleaning Data Course Project
===========================================
* courseID: getdata-016
* submissionID: qixi@msn.com
* Project Url: https://class.coursera.org/getdata-016/human_grading

Original source
===========================
Original source of the data for UCI Human Activity Recongnition can be located:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Output Features and Observations
===========================
The file contains the following descriptive columns:
[1] "subject"                   "activity"                  "tBodyAcc.mean.X"           "tBodyAcc.mean.Y"           "tBodyAcc.mean.Z"          
[6] "tBodyAcc.std.X"            "tBodyAcc.std.Y"            "tBodyAcc.std.Z"            "tGravityAcc.mean.X"        "tGravityAcc.mean.Y"       
[11] "tGravityAcc.mean.Z"        "tGravityAcc.std.X"         "tGravityAcc.std.Y"         "tGravityAcc.std.Z"         "tBodyAccJerk.mean.X"      
[16] "tBodyAccJerk.mean.Y"       "tBodyAccJerk.mean.Z"       "tBodyAccJerk.std.X"        "tBodyAccJerk.std.Y"        "tBodyAccJerk.std.Z"       
[21] "tBodyGyro.mean.X"          "tBodyGyro.mean.Y"          "tBodyGyro.mean.Z"          "tBodyGyro.std.X"           "tBodyGyro.std.Y"          
[26] "tBodyGyro.std.Z"           "tBodyGyroJerk.mean.X"      "tBodyGyroJerk.mean.Y"      "tBodyGyroJerk.mean.Z"      "tBodyGyroJerk.std.X"      
[31] "tBodyGyroJerk.std.Y"       "tBodyGyroJerk.std.Z"       "tBodyAccMag.mean"          "tBodyAccMag.std"           "tGravityAccMag.mean"      
[36] "tGravityAccMag.std"        "tBodyAccJerkMag.mean"      "tBodyAccJerkMag.std"       "tBodyGyroMag.mean"         "tBodyGyroMag.std"         
[41] "tBodyGyroJerkMag.mean"     "tBodyGyroJerkMag.std"      "fBodyAcc.mean.X"           "fBodyAcc.mean.Y"           "fBodyAcc.mean.Z"          
[46] "fBodyAcc.std.X"            "fBodyAcc.std.Y"            "fBodyAcc.std.Z"            "fBodyAccJerk.mean.X"       "fBodyAccJerk.mean.Y"      
[51] "fBodyAccJerk.mean.Z"       "fBodyAccJerk.std.X"        "fBodyAccJerk.std.Y"        "fBodyAccJerk.std.Z"        "fBodyGyro.mean.X"         
[56] "fBodyGyro.mean.Y"          "fBodyGyro.mean.Z"          "fBodyGyro.std.X"           "fBodyGyro.std.Y"           "fBodyGyro.std.Z"          
[61] "fBodyAccMag.mean"          "fBodyAccMag.std"           "fBodyBodyAccJerkMag.mean"  "fBodyBodyAccJerkMag.std"   "fBodyBodyGyroMag.mean"    
[66] "fBodyBodyGyroMag.std"      "fBodyBodyGyroJerkMag.mean" "fBodyBodyGyroJerkMag.std" 

Each row of the output indicating and observation that covers Mean and STD of major signals collected for each subject and each actitivity:
* **Activity**: six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* **Subject**: An unique identifier that refers to a group of 30 volunteers within an age bracket of 19-48 years |

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 

Transformation Performed
===========================
* 1. Merges the training and the test sets to create one data set.
* 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
* 3. Uses descriptive activity names to name the activities in the data set
* 4. Appropriately labels the data set with descriptive variable names. 
* 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
