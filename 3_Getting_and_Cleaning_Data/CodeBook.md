# Getting and Cleaning Data Project


## Source Data
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.Retrieved from UCI repository, available at <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

## Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities _(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)_ wearing a smartphone _(Samsung Galaxy S II)_ on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals _(accelerometer and gyroscope)_ were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap _(128 readings/window)_. The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Attribute Information
The dataset has 10,299 instances and 561 attributes.

For each record in the dataset it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* A 561-feature vector with time and frequency domain variables.
* Its activity label.
* An identifier of the subject who carried out the experiment.

## Tidy Data Set

The tidy data set contains the average of each variable for each of the 6 activities and each of the 30 subjects. The dataset has 68 columns, where 66 are numeric variables, and two are factors indicating the activity and subject id.

1.	subjectId
2.	activity
3.	tBodyAcc-mean-X
4.	tBodyAcc-mean-Y
5.	tBodyAcc-mean-Z
6.	tBodyAcc-std-X
7.	tBodyAcc-std-Y
8.	tBodyAcc-std-Z
9.	tGravityAcc-mean-X
10.	tGravityAcc-mean-Y
11.	tGravityAcc-mean-Z
12.	tGravityAcc-std-X
13.	tGravityAcc-std-Y
14.	tGravityAcc-std-Z
15.	tBodyAccJerk-mean-X
16.	tBodyAccJerk-mean-Y
17.	tBodyAccJerk-mean-Z
18.	tBodyAccJerk-std-X
19.	tBodyAccJerk-std-Y
20.	tBodyAccJerk-std-Z
21.	tBodyGyro-mean-X
22.	tBodyGyro-mean-Y
23.	tBodyGyro-mean-Z
24.	tBodyGyro-std-X
25.	tBodyGyro-std-Y
26.	tBodyGyro-std-Z
27.	tBodyGyroJerk-mean-X
28.	tBodyGyroJerk-mean-Y
29.	tBodyGyroJerk-mean-Z
30.	tBodyGyroJerk-std-X
31.	tBodyGyroJerk-std-Y
32.	tBodyGyroJerk-std-Z
33.	tBodyAccMag-mean
34.	tBodyAccMag-std
35.	tGravityAccMag-mean
36.	tGravityAccMag-std
37.	tBodyAccJerkMag-mean
38.	tBodyAccJerkMag-std
39.	tBodyGyroMag-mean
40.	tBodyGyroMag-std
41.	tBodyGyroJerkMag-mean
42.	tBodyGyroJerkMag-std
43.	fBodyAcc-mean-X
44.	fBodyAcc-mean-Y
45.	fBodyAcc-mean-Z
46.	fBodyAcc-std-X
47.	fBodyAcc-std-Y
48.	fBodyAcc-std-Z
49.	fBodyAccJerk-mean-X
50.	fBodyAccJerk-mean-Y
51.	fBodyAccJerk-mean-Z
52.	fBodyAccJerk-std-X
53.	fBodyAccJerk-std-Y
54.	fBodyAccJerk-std-Z
55.	fBodyGyro-mean-X
56.	fBodyGyro-mean-Y
57.	fBodyGyro-mean-Z
58.	fBodyGyro-std-X
59.	fBodyGyro-std-Y
60.	fBodyGyro-std-Z
61.	fBodyAccMag-mean
62.	fBodyAccMag-std
63.	fBodyBodyAccJerkMag-mean
64.	fBodyBodyAccJerkMag-std
65.	fBodyBodyGyroMag-mean
66.	fBodyBodyGyroMag-std
67.	fBodyBodyGyroJerkMag-mean
68.	fBodyBodyGyroJerkMag-std


## Data Analysis
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Note:
For more information about the project. you can visit <https://github.com/bliz25/datasciencecoursera/blob/master/3_Getting_and_Cleaning_Data/README.md>.
