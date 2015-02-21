library(dplyr)
library(reshape2)

## 0. Read the files required for loading data
downloadURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("UCI HAR Dataset")){
    if(file.exists("getdata-projectfiles-UCI HAR Dataset.zip")){
        unzip("getdata-projectfiles-UCI HAR Dataset.zip")
    }
    if(file.exists("UCI HAR Dataset")){
        ## If user downloads file directly from UCI website
        unzip("UCI HAR Dataset.zip")
    }
    else{
        stop(c("UCI HAR dataset file/folder does not exists\n Please download from ", downloadURL))    
    }
}
    
actLab <- read.table(file = "UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE, col.names = c("Act","Label"))
featLab <- read.table(file = "UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

subTest <- read.table(file = "UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")
X_Test <- read.table(file = "UCI HAR Dataset/test/X_test.txt", colClasses = c("numeric"))
Y_Test <- read.table(file = "UCI HAR Dataset/test/y_test.txt", colClasses = c("character"), col.names = "Activity")

subTrain <- read.table(file = "UCI HAR Dataset/train/subject_train.txt", col.names = "Subject")
X_Train <- read.table(file = "UCI HAR Dataset/train/X_train.txt", colClasses = c("numeric"))
Y_Train <- read.table(file = "UCI HAR Dataset/train/y_train.txt", colClasses = c("character"), col.names = "Activity")


## 1.  Merges the training and the test sets to create one data set.
subAll <- bind_rows(subTest, subTrain)
subX <- bind_rows(X_Test, X_Train)
subY <- bind_rows(Y_Test, Y_Train)

dataset <- bind_cols(subAll, subY, subX)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## Quick Observation shows duplicated columns but can be ignored as we don't need to import those columns as per question
reqColIndex <- featLab[[1]][grep("mean\\(\\)|std\\(\\)", ignore.case = TRUE, featLab[[2]], value = FALSE)]
new_dataset <- select(dataset, Subject, Activity, one_of(paste("V",reqColIndex,sep="")))


## 3. Uses descriptive activity names to name the activities in the data set
new_dataset$Activity <- actLab$Label[as.numeric(new_dataset$Activity)]


## 4. Appropriately labels the data set with descriptive variable names.
lblName <- c("Subject","Activity", featLab[[2]][reqColIndex])
lblName <- gsub("^t","time-",lblName)
lblName <- gsub("^f","frequency-",lblName)
lblName <- gsub("BodyBody","Body",lblName)
lblName <- gsub("Acc","Acceleration",lblName)
lblName <- gsub("mean\\(\\)","Mean",lblName)
lblName <- gsub("std\\(\\)","StandardDeviation",lblName)
lblName <- gsub("Gyro","GyroScope",lblName)
lblName <- gsub("Mag","Magnitude",lblName)
names(new_dataset) <- lblName


## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
melt_data <- melt(new_dataset,id.vars=c("Activity","Subject"))
tidy_data <- dcast(melt_data, Subject + Activity ~ variable, mean)

## 6.  Please upload your data set as a txt file created with write.table() using row.name=FALSE 
write.table(tidy_data,"tidy_data.txt", row.names=FALSE)
