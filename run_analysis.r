# Getting and Cleaning data
# Final project

# load the necessary libraries
library(plyr)

# 1) Merging the training and the test sets to create one data set.
# In order to that, first I load the data from the data folder.

train_data_x   <- read.table("UCI_HAR_Dataset/train/X_train.txt")
train_data_y   <- read.table("UCI_HAR_Dataset/train/y_train.txt")
subject_train  <- read.table("UCI_HAR_Dataset/train/subject_train.txt")

test_data_x    <- read.table("UCI_HAR_Dataset/test/X_test.txt")
test_data_y    <- read.table("UCI_HAR_Dataset/test/y_test.txt")
subject_test   <- read.table("UCI_HAR_Dataset/test/subject_test.txt")

# binding the data in this order  X_test subject_test  activity
train_data <- cbind(train_data_x,subject_train,train_data_y)
test_data  <- cbind(test_data_x,subject_test,test_data_y)

# binding train and data in rows
data_file <- rbind(train_data,test_data)

# populating the name of the columns
features <- read.table("UCI_HAR_Dataset/features.txt")
features_name <- as.character(features[,2])
names(data_file) <- c(features_name,"subject","activityid")



# 2) Extracting only the measurements on the mean and standard deviation for each measurement.
# I'm getting the measures which have mean and std in it (note that there are some variable with mean embded in the name
# I'm using \\(\\) to make sure that I'm choosing the right one. Since I combined the features, subject, and activityid
# I also need to include "subject" and "activity"

data_file_mean_std <- data_file[,grepl("mean\\(\\)|std\\(\\)|subject|activityid", names(data_file))]

# 3) Uses descriptive activity names to name the activities in the data set

activity_labels <- read.table("UCI_HAR_Dataset/activity_labels.txt")
names(activity_labels) <- c("activityid","activity")

data_file_mean_std$activityid <- factor(data_file_mean_std$activityid, levels = activity_labels$activityid, labels = activity_labels$activity)


# 4) Appropriately labels the data set with descriptive variable names.
# Based on the features names we can do couple of activities to generate descriptive variable names. 

# remove the extra "()" paranthesis after variable names
names(data_file_mean_std) <- gsub("\\(\\)","",names(data_file_mean_std))

# substituting t by Time
names(data_file_mean_std) <- gsub("^t","Time",names(data_file_mean_std))

# substituting f by Frequency
names(data_file_mean_std) <- gsub("^f","Frequency",names(data_file_mean_std))

# substituting Acc by Acceleration
names(data_file_mean_std) <- gsub("Acc","Acceleration",names(data_file_mean_std))

# substituting Mag by Magnitude
names(data_file_mean_std) <- gsub("Mag","Magnitude",names(data_file_mean_std))


# 5) From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.

second_data_set <- ddply(data_file_mean_std, .(subject, activityid), function(x) colMeans(x[, 1:66]))
write.table(second_data_set, "tidy_data.txt", row.name=FALSE)



