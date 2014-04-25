################################################################################
## Tidy Data
## Coursera Getting and Cleaning Data Project 1
## 04-24-2014 created by William Highsmith highsmith@gmail.com
################################################################################

##read data tables
dataTest <- read.table("./cleandata project/UCI HAR Dataset/test/x_test.txt")
dataTrain <- read.table("./cleandata project/UCI HAR Dataset/train/x_train.txt")

##read subject tables
subjectTest <- read.table("./cleandata project/UCI HAR Dataset/test/subject_test.txt")
subjectTrain <- read.table("./cleandata project/UCI HAR Dataset/train/subject_train.txt")

##read column and row names
cNames <- read.table("./cleandata project/UCI HAR Dataset/features.txt")
rNames <- read.table("./cleandata project/UCI HAR Dataset/activity_labels.txt", as.is="V2")

##read data indexes
indexTest <- read.table("./cleandata project/UCI HAR Dataset/test/y_test.txt")
indexTrain <- read.table("./cleandata project/UCI HAR Dataset/train/y_train.txt")

## Cleanup column names
colnames(cNames) <- c("index","columnName")
colnames(rNames) <- c("index","activityName")
colnames(dataTest) <- cNames[,"columnName"]
colnames(dataTrain) <- cNames[,"columnName"]

##copy of data with only required columns, all rows
selectCol <-  grep("mean\\(\\)|std\\(\\)", cNames$columnName)   ##Get index of 'mean' & 'std' columns 
dataTest2 <- dataTest[,selectCol]                               ##write col names to set
dataTrain2 <- dataTrain[,selectCol]                             ##write col names to set

##add index and subject to sets
dataTest2 <- cbind(indexTest[,1], dataTest2)
dataTrain2 <- cbind(indexTrain[,1], dataTrain2)
dataTest2 <- cbind(subjectTest[,1],dataTest2)
dataTrain2 <- cbind(subjectTrain[,1], dataTrain2)

##clean new column names
colnames(dataTest2)[1] <- "subject"
colnames(dataTrain2)[1] <- "subject"
colnames(dataTest2)[2] <- "index"
colnames(dataTrain2)[2] <- "index"

##append tables to 1 set
apndData <- rbind(dataTest2,dataTrain2)

##merge with rNames to add row names
finalData1 <- merge(rNames, apndData, by="index", all.y=T)

##drop activity index
finalData1$index <- NULL

##aggregate Tidy Datset by activityName and subject, take mean of each variable
tidyData1 <- aggregate(.~activityName+subject,finalData1,mean)

##write to file
write.table(tidyData1, file="./cleandata project/tidy_data.txt")

##hurray we're done. that was tough.

