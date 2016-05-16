# Getting and Cleaning Data - Final Project

## Description

This dataset is part of a an other experiment (see Source of Data section). The Tidy data set is the 
result of extra processing on the original data set. 


## Source of Data

The original data is from: "Human Activity Recognition Using Smartphones Dataset"
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Details of the experiment and the data set

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been 
video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% 
of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in 
fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which 
has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz 
cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time 
and frequency domain. See 'features_info.txt' for more details. 


## Data set variables

The original data has 561 variables for each observation. These variables are:

- BodyAcc-XYZ
- GravityAcc-XYZ
- BodyAccJerk-XYZ
- BodyGyro-XYZ
- BodyGyroJerk-XYZ
- BodyAccMag
- GravityAccMag
- BodyAccJerkMag
- BodyGyroMag
- BodyGyroJerkMag

Each variable has:

- Time and Frequency domain
- Three components: X,Y,Z

Here are the extra information for the values.

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between two vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

## Processing steps

The run_analysis.r is processing the file. 

Here is the processing steps:

- Loading the test and training data
- Merging the test and training data
- Binding two other fields (e.g. subject and activity id)
- Name the fields using features.txt
- Pick the variables which are mean or standard deviation of other fields.
- Replace the activityid by activity name using activity_label.txt
- Create the second independent data set with the average of each variable for each 
  activity and each subject.
  

The full list of variables:

[1] "subject"                                        
[2] "activityid"                                     
[3] "TimeBodyAcceleration-mean-X"                    
[4] "TimeBodyAcceleration-mean-Y"                    
[5] "TimeBodyAcceleration-mean-Z"                    
[6] "TimeBodyAcceleration-std-X"                     
[7] "TimeBodyAcceleration-std-Y"                     
[8] "TimeBodyAcceleration-std-Z"                     
[9] "TimeGravityAcceleration-mean-X"                 
[10] "TimeGravityAcceleration-mean-Y"                 
[11] "TimeGravityAcceleration-mean-Z"                 
[12] "TimeGravityAcceleration-std-X"                  
[13] "TimeGravityAcceleration-std-Y"                  
[14] "TimeGravityAcceleration-std-Z"                  
[15] "TimeBodyAccelerationJerk-mean-X"                
[16] "TimeBodyAccelerationJerk-mean-Y"                
[17] "TimeBodyAccelerationJerk-mean-Z"                
[18] "TimeBodyAccelerationJerk-std-X"                 
[19] "TimeBodyAccelerationJerk-std-Y"                 
[20] "TimeBodyAccelerationJerk-std-Z"                 
[21] "TimeBodyGyro-mean-X"                            
[22] "TimeBodyGyro-mean-Y"                            
[23] "TimeBodyGyro-mean-Z"                            
[24] "TimeBodyGyro-std-X"                             
[25] "TimeBodyGyro-std-Y"                             
[26] "TimeBodyGyro-std-Z"                             
[27] "TimeBodyGyroJerk-mean-X"                        
[28] "TimeBodyGyroJerk-mean-Y"                        
[29] "TimeBodyGyroJerk-mean-Z"                        
[30] "TimeBodyGyroJerk-std-X"                         
[31] "TimeBodyGyroJerk-std-Y"                         
[32] "TimeBodyGyroJerk-std-Z"                         
[33] "TimeBodyAccelerationMagnitude-mean"             
[34] "TimeBodyAccelerationMagnitude-std"              
[35] "TimeGravityAccelerationMagnitude-mean"          
[36] "TimeGravityAccelerationMagnitude-std"           
[37] "TimeBodyAccelerationJerkMagnitude-mean"         
[38] "TimeBodyAccelerationJerkMagnitude-std"          
[39] "TimeBodyGyroMagnitude-mean"                     
[40] "TimeBodyGyroMagnitude-std"                      
[41] "TimeBodyGyroJerkMagnitude-mean"                 
[42] "TimeBodyGyroJerkMagnitude-std"                  
[43] "FrequencyBodyAcceleration-mean-X"               
[44] "FrequencyBodyAcceleration-mean-Y"               
[45] "FrequencyBodyAcceleration-mean-Z"               
[46] "FrequencyBodyAcceleration-std-X"                
[47] "FrequencyBodyAcceleration-std-Y"                
[48] "FrequencyBodyAcceleration-std-Z"                
[49] "FrequencyBodyAccelerationJerk-mean-X"           
[50] "FrequencyBodyAccelerationJerk-mean-Y"           
[51] "FrequencyBodyAccelerationJerk-mean-Z"           
[52] "FrequencyBodyAccelerationJerk-std-X"            
[53] "FrequencyBodyAccelerationJerk-std-Y"            
[54] "FrequencyBodyAccelerationJerk-std-Z"            
[55] "FrequencyBodyGyro-mean-X"                       
[56] "FrequencyBodyGyro-mean-Y"                       
[57] "FrequencyBodyGyro-mean-Z"                       
[58] "FrequencyBodyGyro-std-X"                        
[59] "FrequencyBodyGyro-std-Y"                        
[60] "FrequencyBodyGyro-std-Z"                        
[61] "FrequencyBodyAccelerationMagnitude-mean"        
[62] "FrequencyBodyAccelerationMagnitude-std"         
[63] "FrequencyBodyBodyAccelerationJerkMagnitude-mean"
[64] "FrequencyBodyBodyAccelerationJerkMagnitude-std" 
[65] "FrequencyBodyBodyGyroMagnitude-mean"            
[66] "FrequencyBodyBodyGyroMagnitude-std"             
[67] "FrequencyBodyBodyGyroJerkMagnitude-mean"        
[68] "FrequencyBodyBodyGyroJerkMagnitude-std"    

