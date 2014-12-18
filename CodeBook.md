## Data codebook for the Getting and Cleanding Data project

* Raw data: 
  The UCI HAR Dataset (Human Activity Recognition Using Smartphones Dataset)
  (from UCI HAR Dataset readme file)
  >The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
  >
  >The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' [in the UCI HAR Dataset folder] for more details. 

* Processed data: tidy.txt
  subject
    Identifies the subjects who performed the activity. Its range is from 1 to 30.
  activity
    Identifies the activity that was performed by the subject. Possible values are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING
  tBodyAcc.mean...X
    mean value for the X component of the body acceleration signal, expressed in g, for each subject/activity pair.
  tBodyAcc.mean...Y
    mean value for the Y component of the body acceleration signal, expressed in g, for each subject/activity pair. 
  tBodyAcc.mean...Z
    mean value for the Z component of the body acceleration signal, expressed in g, for each subject/activity pair. 
  tBodyAcc.std...X
    standard deviation for the X component of the body acceleration signal, expressed in g, for each subject/activity pair.
  tBodyAcc.std...Y
    standard deviation for the Y component of the body acceleration signal, expressed in g, for each subject/activity pair.
  tBodyAcc.std...Z
    standard deviation for the Z component of the body acceleration signal, expressed in g, for each subject/activity pair.
  tGravityAcc.mean...X
    mean value for the X component of the gravity signal, expressed in g, for each subject/activity pair.
  tGravityAcc.mean...Y
    mean value for the Y component of the gravity signal, expressed in g, for each subject/activity pair.
  tGravityAcc.mean...Z
    mean value for the Z component of the gravity signal, expressed in g, for each subject/activity pair.
  tGravityAcc.std...X
    standard deviation for the X component of the gravity signal, expressed in g, for each subject/activity pair.
  tGravityAcc.std...Y
    standard deviation for the Y component of the gravity signal, expressed in g, for each subject/activity pair.
  tGravityAcc.std...Z
    standard deviation for the Z component of the gravity signal, expressed in g, for each subject/activity pair.
  tBodyAccJerk.mean...X
  tBodyAccJerk.mean...Y
  tBodyAccJerk.mean...Z
  tBodyAccJerk.std...X
  tBodyAccJerk.std...Y
  tBodyAccJerk.std...Z
  tBodyGyro.mean...X
  tBodyGyro.mean...Y
  tBodyGyro.mean...Z
  tBodyGyro.std...X
  tBodyGyro.std...Y
  tBodyGyro.std...Z
  tBodyGyroJerk.mean...X
  tBodyGyroJerk.mean...Y
  tBodyGyroJerk.mean...Z
  tBodyGyroJerk.std...X
  tBodyGyroJerk.std...Y
  tBodyGyroJerk.std...Z
  tBodyAccMag.mean..
  tBodyAccMag.std..
  tGravityAccMag.mean..
  tGravityAccMag.std..
  tBodyAccJerkMag.mean..
  tBodyAccJerkMag.std..
  tBodyGyroMag.mean..
  tBodyGyroMag.std..
  tBodyGyroJerkMag.mean..
  tBodyGyroJerkMag.std..
  fBodyAcc.mean...X
  fBodyAcc.mean...Y
  fBodyAcc.mean...Z
  fBodyAcc.std...X
  fBodyAcc.std...Y
  fBodyAcc.std...Z
  fBodyAccJerk.mean...X
  fBodyAccJerk.mean...Y
  fBodyAccJerk.mean...Z
  fBodyAccJerk.std...X
  fBodyAccJerk.std...Y
  fBodyAccJerk.std...Z
  fBodyGyro.mean...X
  fBodyGyro.mean...Y
  fBodyGyro.mean...Z
  fBodyGyro.std...X
  fBodyGyro.std...Y
  fBodyGyro.std...Z
  fBodyAccMag.mean..
  fBodyAccMag.std..
  fBodyBodyAccJerkMag.mean..
  fBodyBodyAccJerkMag.std..
  fBodyBodyGyroMag.mean..
  fBodyBodyGyroMag.std..
  fBodyBodyGyroJerkMag.mean..
  fBodyBodyGyroJerkMag.std..
