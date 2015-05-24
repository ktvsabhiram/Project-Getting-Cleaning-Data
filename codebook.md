This code book explains the variables used in the data set for getting & cleaning course project

The data provided has been collected from smartphones of 30 volunteer (called as subject). 6 Activities of these user has been recorded
These six activities are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING wearing a samsung galaxy S-II smart phone around the waist

Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Below is the description of variables in the processed data

There are total of 68 variables and 180 observations. The observation correspond to 30 volunteers contributing to 6 activities each.

Variable 1 
subject_id: corresponds to each volunteer. Integer ranging from 1 to 30

Variable 2
Activity_Desc: corresponds to each activity pursued by volunteer. Character vector of 6 activities
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

tBodyAcc-mean()-X-Avg	Average of time domain mean body accelaration in X direction (hz)
tBodyAcc-mean()-Y-Avg	Average of time domain mean body accelaration in Y direction (hz)
tBodyAcc-mean()-Z-Avg	Average of time domain mean body accelaration in Z direction (hz)
tBodyAcc-std()-X-Avg	Average of time domain body accelaration standard deviation in X direction (hz)
tBodyAcc-std()-Y-Avg	Average of time domain body accelaration standard deviation in Y direction (hz)
tBodyAcc-std()-Z-Avg	Average of time domain body accelaration standard deviation in Z direction (hz)
tGravityAcc-mean()-X-Avg	Average of time domain mean gravity accelaration in X direction (hz)
tGravityAcc-mean()-Y-Avg	Average of time domain mean gravity accelaration in Y direction (hz)
tGravityAcc-mean()-Z-Avg	Average of time domain mean gravity accelaration in Z direction (hz)
tGravityAcc-std()-X-Avg	Average of time domain gravity accelaration standard deviation in X direction (hz)
tGravityAcc-std()-Y-Avg	Average of time domain gravity accelaration standard deviation in Y direction (hz)
tGravityAcc-std()-Z-Avg	Average of time domain gravity accelaration standard deviation in Z direction (hz)
tBodyAccJerk-mean()-X-Avg	Average of time domain body linear accelaration mean in X direction (hz)
tBodyAccJerk-mean()-Y-Avg	Average of time domain body linear accelaration mean in Y direction (hz)
tBodyAccJerk-mean()-Z-Avg	Average of time domain body linear accelaration mean in Z direction (hz)
tBodyAccJerk-std()-X-Avg	Average of time domain body linear accelaration standard deviation in X direction (hz)
tBodyAccJerk-std()-Y-Avg	Average of time domain body linear accelaration standard deviation in Y direction (hz)
tBodyAccJerk-std()-Z-Avg	Average of time domain body linear accelaration standard deviation in Z direction (hz)
tBodyGyro-mean()-X-Avg	Average of time domain body Gyroscopic accelaration mean in X direction (hz)
tBodyGyro-mean()-Y-Avg	Average of time domain body Gyroscopic accelaration mean in Y direction (hz)
tBodyGyro-mean()-Z-Avg	Average of time domain body Gyroscopic accelaration mean in Z direction (hz)
tBodyGyro-std()-X-Avg	Average of time domain body Gyroscopic accelaration standard deviation in X direction (hz)
tBodyGyro-std()-Y-Avg	Average of time domain body Gyroscopic accelaration standard deviation in Y direction (hz)
tBodyGyro-std()-Z-Avg	Average of time domain body Gyroscopic accelaration standard deviation in Z direction (hz)
tBodyGyroJerk-mean()-X-Avg	Average of time domain body angular velocity mean in X direction (hz)
tBodyGyroJerk-mean()-Y-Avg	Average of time domain body angular velocity mean in Y direction (hz)
tBodyGyroJerk-mean()-Z-Avg	Average of time domain body angular velocity mean in Z direction (hz)
tBodyGyroJerk-std()-X-Avg	Average of time domain body angular velocity standard deviation in X direction (hz)
tBodyGyroJerk-std()-Y-Avg	Average of time domain body angular velocity standard deviation in Y direction (hz)
tBodyGyroJerk-std()-Z-Avg	Average of time domain body angular velocity standard deviation in Z direction (hz)
tBodyAccMag-mean()-Avg	Average of time domain body accelaration magnitude mean (hz)
tBodyAccMag-std()-Avg	Average of time domain body accelaration magnitude standard deviation (hz)
tGravityAccMag-mean()-Avg	Average of time domain gravity accelaration magnitude mean (hz)
tGravityAccMag-std()-Avg	Average of time domain gravity accelaration magnitude standard deviation (hz)
tBodyAccJerkMag-mean()-Avg	Average of time domain body linear acceleration magnitude mean (hz)
tBodyAccJerkMag-std()-Avg	Average of time domainbody linear acceleration magnitude standard deviation (hz)
tBodyGyroMag-mean()-Avg	Average of time domain body angular velocity magnitude mean (hz)
tBodyGyroMag-std()-Avg	Average of time domain body angular velocity magnitude standard deviation (hz)
tBodyGyroJerkMag-mean()-Avg	Average of time domain gyro angular velocity magnitude mean (hz)
tBodyGyroJerkMag-std()-Avg	Average of time domain gyro angular velocity magnitude standard deviation (hz)
fBodyAcc-mean()-X-Avg	Average of time domain mean body accelaration in X direction (hz)
fBodyAcc-mean()-Y-Avg	Average of time domain mean body accelaration in Y direction (hz)
fBodyAcc-mean()-Z-Avg	Average of time domain mean body accelaration in Z direction (hz)
fBodyAcc-std()-X-Avg	Average of time domain body accelaration standard deviation in X direction (hz)
fBodyAcc-std()-Y-Avg	Average of time domain body accelaration standard deviation in Y direction (hz)
fBodyAcc-std()-Z-Avg	Average of time domain body accelaration standard deviation in Z direction (hz)
fBodyAccJerk-mean()-X-Avg	Average of time domain body linear accelaration mean in X direction (hz)
fBodyAccJerk-mean()-Y-Avg	Average of time domain body linear accelaration mean in Y direction (hz)
fBodyAccJerk-mean()-Z-Avg	Average of time domain body linear accelaration mean in Z direction (hz)
fBodyAccJerk-std()-X-Avg	Average of time domain body linear accelaration standard deviation in X direction (hz)
fBodyAccJerk-std()-Y-Avg	Average of time domain body linear accelaration standard deviation in Y direction (hz)
fBodyAccJerk-std()-Z-Avg	Average of time domain body linear accelaration standard deviation in Z direction (hz)
fBodyGyro-mean()-X-Avg	Average of time domain body Gyroscopic accelaration mean in X direction (hz)
fBodyGyro-mean()-Y-Avg	Average of time domain body Gyroscopic accelaration mean in Y direction (hz)
fBodyGyro-mean()-Z-Avg	Average of time domain body Gyroscopic accelaration mean in Z direction (hz)
fBodyGyro-std()-X-Avg	Average of time domain body Gyroscopic accelaration standard deviation in X direction (hz)
fBodyGyro-std()-Y-Avg	Average of time domain body Gyroscopic accelaration standard deviation in Y direction (hz)
fBodyGyro-std()-Z-Avg	Average of time domain body Gyroscopic accelaration standard deviation in Z direction (hz)
fBodyAccMag-mean()-Avg	Average of time domain body accelaration magnitude mean (hz)
fBodyAccMag-std()-Avg	Average of time domain body accelaration magnitude standard deviation (hz)
fBodyBodyAccJerkMag-mean()-Avg	Average of time domain body linear acceleration magnitude mean (hz)
fBodyBodyAccJerkMag-std()-Avg	Average of time domainbody linear acceleration magnitude standard deviation (hz)
fBodyBodyGyroMag-mean()-Avg	Average of time domain body angular velocity magnitude mean (hz)
fBodyBodyGyroMag-std()-Avg	Average of time domain body angular velocity magnitude standard deviation (hz)
fBodyBodyGyroJerkMag-mean()-Avg	Average of time domain gyro angular velocity magnitude mean (hz)
fBodyBodyGyroJerkMag-std()-Avg	Average of time domain gyro angular velocity magnitude standard deviation (hz)

