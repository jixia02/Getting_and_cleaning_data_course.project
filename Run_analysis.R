## 2017.03.22
## Jixia Liu
## Getting and Cleaning Data Course Project
## run_analysis.R

## Regular expression references : https://msdn.microsoft.com/en-us/library/gg578045(v=vs.110).aspx

## setup working directory
setwd("~/coursera/Getting_and_Cleaning_Data")
dir.create("./Courseproject")
setwd("~/coursera/Getting_and_Cleaning_Data/Courseproject")

## download dataset and unzip it
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,dest="dataset.zip",mode="wb",method="curl")
unzip("dataset.zip",exdir="./")
# > list.files()
# [1] "dataset.zip"     "UCI HAR Dataset"

## Read data
getwd()
[1] "/Users/liujixia/coursera/Getting_and_Cleaning_Data/Courseproject"
test.subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt",col.names="subject")
test.data <- read.table("./UCI HAR Dataset/test/X_test.txt")
test.lables <- read.table("./UCI HAR Dataset/test/y_test.txt",col.names="lable")

train.subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt",col.names="subject")
train.data <- read.table("./UCI HAR Dataset/train/X_train.txt")
train.lables <- read.table("./UCI HAR Dataset/train/y_train.txt",col.names = "lable")

## step 1. Merges the training and the test sets to create one data set. 
data <- rbind(cbind(test.subjects,test.lables,test.data),cbind(train.subjects,train.lables,train.data))
# > dim(data)
# [1] 10299   563
# > dim(train.data)
# [1] 7352  561
# > dim(test.data)
# [1] 2947  561

## step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# read features
features <- read.table("./UCI HAR Dataset/features.txt",strip.white=TRUE, stringsAsFactors=FALSE)
# > dim(features)
# [1] 561   2

# only retain features of mean and standard deviation
features.mean.std <- features[grep("mean\\(\\)|std\\(\\)",features$V2),]
# > dim(features.mean.std)
# [1] 66  2

# select only the means and standard deviations from data
# increment by 2 because data has subjects and labels in the beginning
data.mean.std <- data[,c(1,2,features.mean.std$V1+2)]
# > dim(data.mean.std)
# [1] 10299    68

## step 3: Uses descriptive activity names to name the activities in the data set
# read the activity labels
labels <- read.table("./UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)

# > labels
# V1                 V2
# 1  1            WALKING
# 2  2   WALKING_UPSTAIRS
# 3  3 WALKING_DOWNSTAIRS
# 4  4            SITTING
# 5  5           STANDING
# 6  6             LAYING

# unique(data.mean.std$lable)
# [1] 5 4 6 1 3 2

# replace labels in data with descriptive lable names
data.mean.std$lable <- labels[data.mean.std$lable, 2]

## step 4: Appropriately labels the data set with descriptive variable names.
# make a list of the current column names and features names
colnames <- c("subject", "label", features.mean.std$V2)
# removing non-alphabetic character and converting to lowercase 
colnames <- tolower(gsub("[^[:alpha:]]","",colnames)) 
# use the list as column names for data
colnames(data.mean.std) <- colnames


## step 5: From the data set in step 4, creates a second, independent tidy data set with
## the average of each variable for each activity and each subject.
#  find the mean for each combination of subject and label
aggr.data <- aggregate(data.mean.std[,3:ncol(data.mean.std)],by=list(subject=data.mean.std$subject,label=data.mean.std$label),mean)

write.table(format(aggr.data, scientific=T), "tidydata.txt",
            row.names=F, col.names=F, quote=2)




