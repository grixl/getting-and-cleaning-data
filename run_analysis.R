# Filename: run_analysis.R 
#
# This program will merge the training and test data set from the Human Activity 
# Recognition database built from the recordings of 30 subjects performing 
# activities of daily living. It will create a tidy data set as described in 
# README.md

# download the data set 
if (!file.exists("Dataset.zip")) {
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                      "Dataset.zip",
                      method = "curl")
}

# unzip file
unzip("Dataset.zip", overwrite = TRUE)

setwd("UCI HAR Dataset")

# load test data set
subject_test <- read.table("./test/subject_test.txt")
X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")

# load training data set
subject_train <- read.table("./train/subject_train.txt")
X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")

# read feature names and name column
feature_names <- read.table("./features.txt")
names(X_test) <- feature_names[,2]
names(X_train) <- feature_names[,2]

names(subject_test) <- "subject-id"
names(subject_train) <- "subject-id"

names(y_test) <- "activity-id"
names(y_train) <- "activity-id"

# Step 1: merge the test and training data set
test_data <- cbind(subject_test, y_test, X_test)
train_data <- cbind(subject_train, y_train, X_train)
combined_data <- rbind(test_data, train_data)

# Step 2: Extracts only the measurements on the mean and standard deviation 
# for each measurement. 
mean_cols <- grep("mean", names(combined_data), ignore.case = TRUE, value = TRUE)
std_cols <- grep("std", names(combined_data), ignore.case = TRUE, value = TRUE)
extract_cols <- c("subject-id", "activity-id")
extract_cols <- append(extract_cols, mean_cols)
extract_cols <- append(extract_cols, std_cols)

meanstd_data <- combined_data[,extract_cols]

# Step 3: Uses descriptive activity names to name the activities in the data set
activity_names <- read.table("./activity_labels.txt")
names(activity_names) <- c("activity-id", "activity-name")

# Step 4: Appropriately labels the data set with descriptive variable names. 

# Step 5: creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject.








