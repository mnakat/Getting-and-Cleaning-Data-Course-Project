# Input data
Human Activity Recognition Using Smartphones Dataset
<https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI%20HAR%20Dataset.zip>


The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


# Data processing

### Prepare the raw dataset
- download the zip file and unzip
- move the unzipped files to working directory


### Merges the training and the test sets to create one data set
- load train dataset(UCI HAR Dataset/train/X_train.txt, UCI HAR Dataset/train/y_train.txt, UCI HAR Dataset/train/subject_train.txt)
- load test dataset(UCI HAR Dataset/test/X_test.txt, UCI HAR Dataset/test/y_test.txt, UCI HAR Dataset/test/subject_test.txt)
- merge train and test dataset
- load feature names(UCI HAR Dataset/features.txt) and set the name to the dataset
- merge train, test and subject dataset(merged_dataset)

### Extracts only the measurements on the mean and standard deviation for each measurement.
- select column names that represents the mean and standard deviation for each measurement.
- select subject and activity columns for data aggregation
- create a dataset(selected_dataset) with only selected columns for further data processing

### Uses descriptive activity names to name the activities in the data set
- load activity names(UCI HAR Dataset/activity_labels.txt)
- set activity names to the dataset(selected_dataset)

### From the data set in previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- calculate the average of each mesurements for each activity and each subject(average_dataset)
- save the tidy data set("average.txt") 

# Output data

The resulting average.txt dataset includes the average of mean and standard deviation variables for each activity and each subject.
The dataset has the following variables.

- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z
- tBodyGyro-std()-X
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z
- tBodyAccMag-mean()
- tBodyAccMag-std()
- tGravityAccMag-mean()
- tGravityAccMag-std()
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- tBodyGyroMag-mean()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()
- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z
- fBodyAcc-meanFreq()-X
- fBodyAcc-meanFreq()-Y
- fBodyAcc-meanFreq()-Z
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z
- fBodyAccJerk-meanFreq()-X
- fBodyAccJerk-meanFreq()-Y
- fBodyAccJerk-meanFreq()-Z
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z
- fBodyGyro-meanFreq()-X
- fBodyGyro-meanFreq()-Y
- fBodyGyro-meanFreq()-Z
- fBodyAccMag-mean()
- fBodyAccMag-std()
- fBodyAccMag-meanFreq()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std()
- fBodyBodyAccJerkMag-meanFreq()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroMag-meanFreq()
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std()
- fBodyBodyGyroJerkMag-meanFreq()
- angle(tBodyAccMean,gravity)
- angle(tBodyAccJerkMean),gravityMean)
- angle(tBodyGyroMean,gravityMean)
- angle(tBodyGyroJerkMean,gravityMean)
- angle(X,gravityMean)
- angle(Y,gravityMean)
- angle(Z,gravityMean)
