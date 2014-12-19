GettingAndCleaningDataProject
=============================

This repository contains the information requested in the course project for the Coursera class "Getting and Cleaning Data" (see https://class.coursera.org/getdata-016/human_grading)

In here you will find :
* the raw data : Human Activity Recognition Using Smartphones Dataset, Version 1.0 [1]. The raw data is available in its zipped verisionin the file called "UCI_HAR_Dataset.zip" and unzipped in the "UCI HAR Dataset" folder.
* the "run_analysis.R" script that performs the following operations on the raw data as requested in the assignment :
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  _note : the script contained in this repository filtered the column names and kept only the ones containing "-mean()" and "-std()". This means the columns like "fBodyAccJerk-meanFreq()-X" are not taken into account._
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* the "tidy.txt" file, which contains the output of the 5th step described above
* this "README.md" file
* the codebook.txt file, containing the code book that describes the values presented in the "tidy.txt" file


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
