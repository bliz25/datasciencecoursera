#Getting and Cleaning Data Course Project

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(data.table)
library(dplyr)

#Load Human Activity Recognition Using Smartphones Data Set
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./HAR_data.zip")
unzip(zipfile = "./HAR_data.zip")

# Load activity labels and features
activity_labels <- fread(file = "./UCI HAR Dataset/activity_labels.txt", col.names = c("activityLabel", "activityName"))
features <- fread(file = "./UCI HAR Dataset/features.txt", col.names = c("index", "featureName"))


#Load training set #
#------------------#

train <- fread(file = "./UCI HAR Dataset/train/X_train.txt", col.names = features$featureName)

#Load activity labels
train_activity <- fread(file = "./UCI HAR Dataset/train/Y_train.txt", col.names = c("activity"))
#Load subjects ids
train_subjects <- fread(file = "./UCI HAR Dataset/train/subject_train.txt", col.names = c("subjectId"))
#Create dataframe with subjectId - features - activityLabel
train <- cbind(train_subjects, train_activity, train)

#Load test set     #
#------------------#
test <- fread(file = "./UCI HAR Dataset/test/X_test.txt", col.names = features$featureName)

#Load activity labels
test_activity <- fread(file = "./UCI HAR Dataset/test/Y_test.txt", col.names = c("activity"))
#Load subjects ids
test_subjects <- fread(file = "./UCI HAR Dataset/test/subject_test.txt", col.names = c("subjectId"))
#Create dataframe with subjectId - features - activityLabel
test <- cbind(test_subjects,  test_activity, test)

#-----------------------------------------------------------------#
# 1. Merges the training and the test sets to create one data set 
#-----------------------------------------------------------------#
dataset <- rbind(train, test)

#--------------------------------------------------------------------------------------------#
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#--------------------------------------------------------------------------------------------#

#Select only fetaures with mean and standard deviation 
mean_std_features <- features[grep("(mean|std)\\(\\)", features[, featureName]), featureName]

#Extracts only the measurements on the mean and standard deviation from the complete dataset
dataset <- dataset[, c("activity", "subjectId", mean_std_features), with = FALSE]

#--------------------------------------------------------------------------------------------#
# 3. Uses descriptive activity names to name the activities in the data set
#--------------------------------------------------------------------------------------------#

#Convert activity labels (numeric) to a more explicit name (eg. From 1 to WALKING)
dataset$activity <- factor(dataset[, activity],
                           levels = activity_labels[["activityLabel"]],
                           labels = activity_labels[["activityName"]])

#--------------------------------------------------------------------------------------------#
# 4. Appropriately labels the data set with descriptive variable names
#--------------------------------------------------------------------------------------------#
colnames(dataset) <- gsub('[()]', '', colnames(dataset))

# Convert csubject id to factor
dataset$subjectId <- as.factor(dataset[, subjectId])

#----------------------------------------------------------------------------------------------------------------------#
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#----------------------------------------------------------------------------------------------------------------------#

tidy_dataset <- dataset %>% 
    group_by(subjectId, activity) %>% 
    summarize_all(mean)


fwrite(x = tidy_dataset, file = "tidyData.txt", quote = FALSE)
