

##Read the Activity files

dataActivityTest<-read.table(file.path(path_rf,"test","y_test.txt"),header=FALSE)
dataActivityTrain<-read.table(file.path(path_rf,"train","y_train.txt"),header=FALSE)

##read the Subject files

dataSubjectTrain<-read.table(file.path(path_rf,"train","subject_train.txt"),header =FALSE)
dataSubjectTest<-read.table(file.path(path_rf,"test","subject_test.txt"),header =FALSE)

##read the Features files

dataFeaturesTrain<-read.table(file.path(path_rf,"train","X_train.txt"),header=FALSE)
dataFeaturesTest<-read.table(file.path(path_rf,"test","X_test.txt"),header=FALSE)


##1.Merges the training and the test sets to create one data set.

dataSubject<-rbind(dataSubjectTest,dataSubjectTrain)
dataActivity<-rbind(dataActivityTest,dataActivityTrain)
dataFeatures<-rbind(dataActivityTest,dataActivityTrain)


##Set names to variables
names(dataSubject)<-c("subject")
names(dataActivity)<-c("activity")
dataFeaturesNames<-read.table(file.path(path_rf,"features.txt"), head=FALSE)
names(dataFeatures)<-dataFeaturesNames$V2

##Merge columns to get the data frame Data for all data

dataCombine<-cbind(dataSubject,dataActivity)
Data<-cbind(dataFeatures,dataCombine)

##2.Extracts only the measurements on the mean and standard deviation for each measurement.

subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)",dataFeaturesNames$V2)]
selectedNames<-c(as.character(subdataFeaturesNames),"subject","activity")
Data<-subset(Data,select=selectedNames)

##3.Uses descriptive activity names to name the activities in the data set

##Read and factorize
activityLabels<-read.table(file.path(path_rf,"activity_labels.txt"),header=FALSE)
Data$activity <- factor(Data$activity, levels = activityLabels$V1, labels = activityLabels$V2)


##Appropriately labels the data set with descriptive variable names.
names(Data)<-gsub("^t","time",names(Data))
names(Data)<-gsub("^f","frequency",names(Data))
names(Data)<-gsub("ACC","Accelerometer",names(Data))
names(Data)<-gsub("Gyro","Gyroscope",names(Data))
names(Data)<-gsub("Mag","Magnitude",names(Data))
names(Data)<-gsub("BodyBody","Body",name(Data))


##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr);
Data2<-aggregate(. -subject+activity,Data,mean)
Data2<-Data2[order(Data2$subject,Data2$activity),]
write.table(Data2,file = "tidydata.txt",row.name=FALSE)



