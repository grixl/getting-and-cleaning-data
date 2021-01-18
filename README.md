# getting-and-cleaning-data
## Johns Hopkins datascience project
This repo contains the following files
1. README.md - This file
2. CodeBook.md - The code book describes the variables, the data, and transformations performed to clean up the data downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
3. run_analysis.R - 
    * Merges the training and the test sets to create one data set.
    * Extracts the measurements on the mean and standard deviation for each measurement.
    * Use descriptive activity names to name activies in data set
    * Label the data set with descriptive variable names.
    * From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
4. tidy_data.txt - This file contains the final output from run_analysis.R, the tidy data set contains the average of each variable for each activity and each subject
