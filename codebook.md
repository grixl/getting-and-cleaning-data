# Data source
A full description of the data set used for this project is available at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original data set was obtained from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Transformations 

1. Merged the training and the test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement.
3. Applied descriptive activity names to name the activities in the data set
    * 1 WALKING
    * 2 WALKING_UPSTAIRS
    * 3 WALKING_DOWNSTAIRS
    * 4 SITTING
    * 5 STANDING
    * 6 LAYING
4. Appropriately labeled the data set with descriptive variable names.
    * Expanded variable names starting with ```t``` to ```time```
    * Expanded variable names starting with ```f``` to ```frequency```
    * Expanded variable names starting with ```Acc``` to ```Acceleration```
    * Expanded variable names starting with ```Gyro``` to ```Gyroscope```
    * Expanded variable names starting with ```Mag``` to ```Magnitude```
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Tidy data set variable names
[1] "subject"                                              
[2] "activity"                                             
[3] "timeBodyAcceleration-mean()-X"                        
[4] "timeBodyAcceleration-mean()-Y"                        
[5] "timeBodyAcceleration-mean()-Z"                        
[6] "timeGravityAcceleration-mean()-X"                     
[7] "timeGravityAcceleration-mean()-Y"                     
[8] "timeGravityAcceleration-mean()-Z"                     
[9] "timeBodyAccelerationJerk-mean()-X"                    
[10] "timeBodyAccelerationJerk-mean()-Y"                    
[11] "timeBodyAccelerationJerk-mean()-Z"                    
[12] "timeBodyGyroscope-mean()-X"                           
[13] "timeBodyGyroscope-mean()-Y"                           
[14] "timeBodyGyroscope-mean()-Z"                           
[15] "timeBodyGyroscopeJerk-mean()-X"                       
[16] "timeBodyGyroscopeJerk-mean()-Y"                       
[17] "timeBodyGyroscopeJerk-mean()-Z"                       
[18] "timeBodyAccelerationMagnitude-mean()"                 
[19] "timeGravityAccelerationMagnitude-mean()"              
[20] "timeBodyAccelerationJerkMagnitude-mean()"             
[21] "timeBodyGyroscopeMagnitude-mean()"                    
[22] "timeBodyGyroscopeJerkMagnitude-mean()"                
[23] "frequencyBodyAcceleration-mean()-X"                   
[24] "frequencyBodyAcceleration-mean()-Y"                   
[25] "frequencyBodyAcceleration-mean()-Z"                   
[26] "frequencyBodyAcceleration-meanFreq()-X"               
[27] "frequencyBodyAcceleration-meanFreq()-Y"               
[28] "frequencyBodyAcceleration-meanFreq()-Z"               
[29] "frequencyBodyAccelerationJerk-mean()-X"               
[30] "frequencyBodyAccelerationJerk-mean()-Y"               
[31] "frequencyBodyAccelerationJerk-mean()-Z"               
[32] "frequencyBodyAccelerationJerk-meanFreq()-X"           
[33] "frequencyBodyAccelerationJerk-meanFreq()-Y"           
[34] "frequencyBodyAccelerationJerk-meanFreq()-Z"           
[35] "frequencyBodyGyroscope-mean()-X"                      
[36] "frequencyBodyGyroscope-mean()-Y"                      
[37] "frequencyBodyGyroscope-mean()-Z"                      
[38] "frequencyBodyGyroscope-meanFreq()-X"                  
[39] "frequencyBodyGyroscope-meanFreq()-Y"                  
[40] "frequencyBodyGyroscope-meanFreq()-Z"                  
[41] "frequencyBodyAccelerationMagnitude-mean()"            
[42] "frequencyBodyAccelerationMagnitude-meanFreq()"        
[43] "frequencyBodyBodyAccelerationJerkMagnitude-mean()"    
[44] "frequencyBodyBodyAccelerationJerkMagnitude-meanFreq()"
[45] "frequencyBodyBodyGyroscopeMagnitude-mean()"           
[46] "frequencyBodyBodyGyroscopeMagnitude-meanFreq()"       
[47] "frequencyBodyBodyGyroscopeJerkMagnitude-mean()"       
[48] "frequencyBodyBodyGyroscopeJerkMagnitude-meanFreq()"   
[49] "timeBodyAcceleration-std()-X"                         
[50] "timeBodyAcceleration-std()-Y"                         
[51] "timeBodyAcceleration-std()-Z"                         
[52] "timeGravityAcceleration-std()-X"                      
[53] "timeGravityAcceleration-std()-Y"                      
[54] "timeGravityAcceleration-std()-Z"                      
[55] "timeBodyAccelerationJerk-std()-X"                     
[56] "timeBodyAccelerationJerk-std()-Y"                     
[57] "timeBodyAccelerationJerk-std()-Z"                     
[58] "timeBodyGyroscope-std()-X"                            
[59] "timeBodyGyroscope-std()-Y"                            
[60] "timeBodyGyroscope-std()-Z"                            
[61] "timeBodyGyroscopeJerk-std()-X"                        
[62] "timeBodyGyroscopeJerk-std()-Y"                        
[63] "timeBodyGyroscopeJerk-std()-Z"                        
[64] "timeBodyAccelerationMagnitude-std()"                  
[65] "timeGravityAccelerationMagnitude-std()"               
[66] "timeBodyAccelerationJerkMagnitude-std()"              
[67] "timeBodyGyroscopeMagnitude-std()"                     
[68] "timeBodyGyroscopeJerkMagnitude-std()"                 
[69] "frequencyBodyAcceleration-std()-X"                    
[70] "frequencyBodyAcceleration-std()-Y"                    
[71] "frequencyBodyAcceleration-std()-Z"                    
[72] "frequencyBodyAccelerationJerk-std()-X"                
[73] "frequencyBodyAccelerationJerk-std()-Y"                
[74] "frequencyBodyAccelerationJerk-std()-Z"                
[75] "frequencyBodyGyroscope-std()-X"                       
[76] "frequencyBodyGyroscope-std()-Y"                       
[77] "frequencyBodyGyroscope-std()-Z"                       
[78] "frequencyBodyAccelerationMagnitude-std()"             
[79] "frequencyBodyBodyAccelerationJerkMagnitude-std()"     
[80] "frequencyBodyBodyGyroscopeMagnitude-std()"            
[81] "frequencyBodyBodyGyroscopeJerkMagnitude-std()" 
