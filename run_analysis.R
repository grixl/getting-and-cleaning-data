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

# load test data set
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

# load training data set
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# read feature names and name column
feature_names <- read.table("./UCI HAR Dataset/features.txt")
names(X_test) <- feature_names[,2]
names(X_train) <- feature_names[,2]

names(subject_test) <- "subject"
names(subject_train) <- "subject"

names(y_test) <- "activity"
names(y_train) <- "activity"

# Step 1: merge the test and training data set
test_data <- cbind(subject_test, y_test, X_test)
train_data <- cbind(subject_train, y_train, X_train)
combined_data <- rbind(test_data, train_data)

# Step 2: Extracts only the measurements on the mean and standard deviation 
# for each measurement. 
mean_cols <- grep("mean", names(combined_data), value = TRUE)
std_cols <- grep("std", names(combined_data), value = TRUE)
extract_cols <- c("subject", "activity")
extract_cols <- append(extract_cols, mean_cols)
extract_cols <- append(extract_cols, std_cols)

meanstd_data <- combined_data[,extract_cols]

# Step 3: Uses descriptive activity names to name the activities in the data set
activity_names <- read.table("./UCI HAR Dataset/activity_labels.txt")
meanstd_data$activity <- factor(meanstd_data$activity, labels = activity_names[,2])

# Step 4: Appropriately labels the data set with descriptive variable names. 
names(meanstd_data) <- gsub("^t", "time", names(meanstd_data))
names(meanstd_data) <- gsub("^f", "frequency", names(meanstd_data))
names(meanstd_data) <- gsub("Acc", "Acceleration", names(meanstd_data))
names(meanstd_data) <- gsub("Gyro", "Gyroscope", names(meanstd_data))
names(meanstd_data) <- gsub("Mag", "Magnitude", names(meanstd_data))

# Step 5: creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject.
tidydata <- aggregate(.~subject+activity, data = meanstd_data, mean)

# write tidy data set to file
write.table(tidydata, "tidydata.txt", row.names = FALSE)







