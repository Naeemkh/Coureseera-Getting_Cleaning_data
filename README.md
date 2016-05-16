## Getting and Cleaning Data - Final Project 

=========================================================

This project is about doing processing on "Human Activity Recognition Using Smartphones Dataset" inorder to get
a tidy data set for future uses. The data is generated at the Smartlab - Non linear Complex Systems Laboratory DITEN -
University degli Studi di Genova Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The data is divided into two groups of "test" and "training" which each one of them has the following subfiles:
file: test or train
==============================

* X_file.txt
* y_file.txt
* subject_file.txt

This is also true for training data set.

X_file.txt is the values of each observation according to the features.txt file. For more info refere to the 
features_info.txt file.

y_file.txt is the activity labels. See activity_labels.txt for activity names.


subject_file.txt represent who performed the activity for each window sample.



This package include following files and folders
===================================================
- 'README.md'
- 'run_analysis.r' : Merge the data and subset based on (mean and std) and give a summary of data based on activity and subject
- 'tidy_data.txt'  : Is the result of running the run_analysis.r.
- 'CodeBook.md'    : Provides more information about variables of each observation.
- 'UCI_HAR_Dataset': Provides the actual data. For more details about this folder see the UCI_HAR_Dataset/README.txt

Notes:
====================================================
This data set and the run_analysis.r file has been developed to provide a tidy data set for future uses.
Here is the step of processing the original data:

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

- The () in the features name is removed.
- Following replacement are done:
- - Acc -> Acceleration
- - Initial f and t -> Frequency and Time, respectively.
- - Mag -> Magnitude 