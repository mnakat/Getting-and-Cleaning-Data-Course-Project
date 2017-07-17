# Getting and Cleaning Data Course Project

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# download the file and unzip
# move the unzipped files to working directory

# load dplyr
library(dplyr)

# 1. Merges the training and the test sets to create one data set

# load train dataset
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# load test dataset
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# merge train and test dataset
x_merged <- rbind(x_train, x_test)
y_merged <- rbind(y_train, y_test)
subject_merged <- rbind(subject_train, subject_test)

# load feature names
features <- read.table("UCI HAR Dataset/features.txt")

# set column names
colnames(x_merged) <- features$V2
colnames(y_merged) <- "activity"
colnames(subject_merged) <- "subject"

# merge three dataset
merged_dataset <- cbind(subject_merged, y_merged, x_merged)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

# select column names that represents the mean and standard deviation for each measurement.
# select subject and activity columns for data aggregation
column_ind_to_extract <- grep("subject|activity|mean|Mean|std", colnames(merged_dataset))

# select columns for further data processing
selected_dataset <- merged_dataset[, column_ind_to_extract] 


# 3. Uses descriptive activity names to name the activities in the data set

# load activity names
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

# set activity names and set the column type as factor
selected_dataset$activity <- factor(selected_dataset$activity, levels = activities$V1, labels = activities$V2)
# set subject column type as factor
selected_dataset$subject <- factor(selected_dataset$subject)


# 4. Appropriately labels the data set with descriptive variable names.
# all the column names are set in step 1.


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# calculate the average of each mesurements for each activity and each subject.
# (exclude suject, activity column from aggregation)
average_dataset <- aggregate(selected_dataset[,3:88], 
                             by=list(selected_dataset$subject, selected_dataset$activity), FUN=mean)

# set column names 
colnames(average_dataset)[1] <- "subject"
colnames(average_dataset)[2] <- "activity"

# save the tidy data set
write.table(average_dataset, file = "average.txt", row.name = FALSE) 