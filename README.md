getdata-005 Course Project of Getting and Cleaning Data

===========

run_analysis.R

This script does the following. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

A num parameter can be passed to the run_analysis() function and it can be used to load a small number of records from the file for debuggin/testing purpose.

Details explaination can also be found in the comments inside th run_analysis.R

* Read column names for the data file from from features.txt        
* Read activity label from activity_labels.txt
* Read train data, subject and label from the files
* Column combine the subject, lable and data
* Read test data, subject and label from the files
* Column combine the subject, lable and data
* Row combine the train and test data
* Extract only the mean and standard derivation data columns
* Column combine the subject, activility label and result data set
* Aggregate the result to arrive at the tidy data set
* Remove the subject and label column from the aggregated result
* Rename the Group 1 and Group 2 to subject and 
* Write out the tidyData to a txt file for submission



Code Book

Field Name	Type
subject	Number
label	Text
tBodyAcc.mean...X	Number
tBodyAcc.mean...Y	Number
tBodyAcc.mean...Z	Number
tBodyAcc.std...X	Number
tBodyAcc.std...Y	Number
tBodyAcc.std...Z	Number
tGravityAcc.mean...X	Number
tGravityAcc.mean...Y	Number
tGravityAcc.mean...Z	Number
tGravityAcc.std...X	Number
tGravityAcc.std...Y	Number
tGravityAcc.std...Z	Number
tBodyAccJerk.mean...X	Number
tBodyAccJerk.mean...Y	Number
tBodyAccJerk.mean...Z	Number
tBodyAccJerk.std...X	Number
tBodyAccJerk.std...Y	Number
tBodyAccJerk.std...Z	Number
tBodyGyro.mean...X	Number
tBodyGyro.mean...Y	Number
tBodyGyro.mean...Z	Number
tBodyGyro.std...X	Number
tBodyGyro.std...Y	Number
tBodyGyro.std...Z	Number
tBodyGyroJerk.mean...X	Number
tBodyGyroJerk.mean...Y	Number
tBodyGyroJerk.mean...Z	Number
tBodyGyroJerk.std...X	Number
tBodyGyroJerk.std...Y	Number
tBodyGyroJerk.std...Z	Number
tBodyAccMag.mean..	Number
tBodyAccMag.std..	Number
tGravityAccMag.mean..	Number
tGravityAccMag.std..	Number
tBodyAccJerkMag.mean..	Number
tBodyAccJerkMag.std..	Number
tBodyGyroMag.mean..	Number
tBodyGyroMag.std..	Number
tBodyGyroJerkMag.mean..	Number
tBodyGyroJerkMag.std..	Number
fBodyAcc.mean...X	Number
fBodyAcc.mean...Y	Number
fBodyAcc.mean...Z	Number
fBodyAcc.std...X	Number
fBodyAcc.std...Y	Number
fBodyAcc.std...Z	Number
fBodyAcc.meanFreq...X	Number
fBodyAcc.meanFreq...Y	Number
fBodyAcc.meanFreq...Z	Number
fBodyAccJerk.mean...X	Number
fBodyAccJerk.mean...Y	Number
fBodyAccJerk.mean...Z	Number
fBodyAccJerk.std...X	Number
fBodyAccJerk.std...Y	Number
fBodyAccJerk.std...Z	Number
fBodyAccJerk.meanFreq...X	Number
fBodyAccJerk.meanFreq...Y	Number
fBodyAccJerk.meanFreq...Z	Number
fBodyGyro.mean...X	Number
fBodyGyro.mean...Y	Number
fBodyGyro.mean...Z	Number
fBodyGyro.std...X	Number
fBodyGyro.std...Y	Number
fBodyGyro.std...Z	Number
fBodyGyro.meanFreq...X	Number
fBodyGyro.meanFreq...Y	Number
fBodyGyro.meanFreq...Z	Number
fBodyAccMag.mean..	Number
fBodyAccMag.std..	Number
fBodyAccMag.meanFreq..	Number
fBodyBodyAccJerkMag.mean..	Number
fBodyBodyAccJerkMag.std..	Number
fBodyBodyAccJerkMag.meanFreq..	Number
fBodyBodyGyroMag.mean..	Number
fBodyBodyGyroMag.std..	Number
fBodyBodyGyroMag.meanFreq..	Number
fBodyBodyGyroJerkMag.mean..	Number
fBodyBodyGyroJerkMag.std..	Number
fBodyBodyGyroJerkMag.meanFreq..	Number
angle.tBodyAccMean.gravity.	Number
angle.tBodyAccJerkMean..gravityMean.	Number
angle.tBodyGyroMean.gravityMean.	Number
angle.tBodyGyroJerkMean.gravityMean.	Number
angle.X.gravityMean.	Number
angle.Y.gravityMean.	Number
angle.Z.gravityMean.	Number


Data used can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
