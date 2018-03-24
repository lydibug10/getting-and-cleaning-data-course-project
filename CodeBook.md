# CodeBook

## Data
The data comes from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

It's corresponding readme outlines the different files:
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


## Variables
1. *test_x* The x-axis of the test dataset
2. *test_y* The y-axis of the test dataset
3. *test_subject* The subject index for the test dataset
4. *train_x* The x-axis of the train dataset
5. *train_y* The y-axis of the train dataset
6. *train_subject* The subject index for the train dataset
7. *features* The descriptive names for the x_* datasets
8. *activity_labels* A list of features (e.g. WALKING, SITTING, STANDING)
9. *merged_x* The test and train x datasets merged
10. *merged_y* The test and train y datasets merged
11. *merged_subject* The test and train subject datasets merged
12. *new_features* Only the mean and standard deviation features
13. *new_merged_x* The x dataset that is culled to mean and standard deviation features
14. *dataset* The combined new dataset with correct column labels
15. *tidy* The summarized dataset using the mean function
