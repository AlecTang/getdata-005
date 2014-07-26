## This run_analysis.R that does the following. 
##      Merges the training and the test sets to create one data set.
##      Extracts only the measurements on the mean and standard deviation for each measurement. 
##      Uses descriptive activity names to name the activities in the data set
##      Appropriately labels the data set with descriptive variable names. 
##      Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

run_analysis <- function(num = -1) {
        
        #Read column names for the data file from from features.txt        
        dataHeader <- read.table(header=FALSE, file="./UCIData/features.txt")
        #print(dataHeader)
        
        #Read activity label from activity_labels.txt
        activityLabel <- read.table(header=FALSE, file="./UCIData/activity_labels.txt")
        colnames(activityLabel) <- c("labelID", "label")
        #print(activityLabel)
        
        #Read train data, subject and label from the files
        trainData <- read.table(file="./UCIData/train/X_train.txt", header=FALSE, col.names=dataHeader$V2, nrows=num)
        #print(trainData)
        trainSubject <- read.fwf("./UCIData/train/subject_train.txt", widths = c(2), n=num)
        #print(trainSubject)
        trainLabel <- read.fwf("./UCIData/train/y_train.txt", widths = c(1), n=num)
        #print(trainLabel)
        
        #Column combine the subject, lable and data
        train <- cbind(subject = trainSubject$V1, labelID = trainLabel$V1, trainData)
        
        #Read test data, subject and label from the files
        testData <- read.table(file="./UCIData/test/X_test.txt", header=FALSE, col.names=dataHeader$V2, nrows=num)
        #print(testData)
        testSubject <- read.fwf("./UCIData/test/subject_test.txt", widths = c(2), n=num)
        #print(testSubject)
        testLabel <- read.fwf("./UCIData/test/y_test.txt", widths = c(1), n=num)
        #print(testLabel)
        
        #Column combine the subject, lable and data
        test <- cbind(subject = testSubject$V1, labelID = testLabel$V1, testData)
        
        #Row combine the train and test data
        data <-rbind(train, test)
        data <- merge(data, activityLabel, by.x="labelID", by.y="labelID")
        #print(data)
        
        #Extract only the mean and standard derivation data columns
        resultData <- 
                data[,grepl("mean.", colnames(data), ignore.case=TRUE) |  
                             grepl("std.", colnames(data), ignore.case=TRUE)]
        
        #Column combine the subject, activility label and result data set
        resultData <- cbind(subject=data$subject, label=data$label, resultData)
        #print(resultData)
        
        #Aggregate the result to arrive at the tidy data set
        tidyData <- aggregate(resultData, by=list(resultData$subject, resultData$label), FUN=mean, na.rm=TRUE)
        
        #Remove the subject and label column from the aggregated result
        tidyData <- tidyData[,!names(tidyData) %in% c("subject","label")]
        
        #Rename the Group 1 and Group 2 to subject and 
        names(tidyData)[1]<-paste("subject")
        names(tidyData)[2]<-paste("label")
        #print(tidyData)
        
        #Write out the tidyData to a txt file for submission
        write.table(tidyData, file="tidyData.txt", sep = "\t")
        #write.csv(file="tidyData.txt", tidyData)
}
