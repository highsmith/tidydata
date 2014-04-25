Coursera Tidy Data Project
============================
for class getdata002  
William J Highsmith  
whighsmith@gmail.com  


About
-----
The run_analysis.R file extracts data for the Coursera Getting and Cleaning Data class project.

The data source is the Human Activity Recognition Using Smartphones Data Set at UCI's Center for Machine Learning and Intelligent Systems. More information about the data can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

data source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

runanalysis.R
=============
Read Data
---------
The script reads in 8 files:  
1.test data  
2.train data  
3.test subject identifier  
4.train subject identifier  
5.variable names  
6.activity index for test data  
7.activity index for train data  
8.activity names  
  
Processing
----------
Assemble Tidy data set  
  -SubjectID & Activity index is bound to data sets.  
  -Column names applied.  
  -Variable columns filtered by name to only include the measurements of "\*mean()" or "\*std()".   
  -Append test and train data sets using rbind.  
  -Row names assigned via the activity index merged with activity names.  
  -Aggregate the mean of each variable across Subject and ActivityName 



Output
------
activityName  			  
subject    

The following variables are the mean of raw data variables (grouped by activityName and subject)  
tBodyAcc-mean()-X				  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  
tGravityAcc-mean()-X  
tGravityAcc-mean()-Y  
tGravityAcc-mean()-Z  
tGravityAcc-std()-X  
tGravityAcc-std()-Y  
tGravityAcc-std()-Z  
tBodyAccJerk-mean()-X  
tBodyAccJerk-mean()-Y  
tBodyAccJerk-mean()-Z  
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z  
tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X  
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z  
tBodyAccMag-mean()  
tBodyAccMag-std()  
tGravityAccMag-mean()  
tGravityAccMag-std()  
tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()  
tBodyGyroMag-mean()  
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()  
fBodyAcc-mean()-X  
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z  
fBodyAcc-std()-X  
fBodyAcc-std()-Y  
fBodyAcc-std()-Z  
fBodyAccJerk-mean()-X  
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z  
fBodyAccJerk-std()-X  
fBodyAccJerk-std()-Y  
fBodyAccJerk-std()-Z  
fBodyGyro-mean()-X  
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z  
fBodyGyro-std()-X  
fBodyGyro-std()-Y  
fBodyGyro-std()-Z  
fBodyAccMag-mean()  
fBodyAccMag-std()  
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-mean()  
fBodyBodyGyroMag-std()  
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std() 


