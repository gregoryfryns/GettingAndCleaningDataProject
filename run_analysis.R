# download the file and unzip it

if (!file.exists("./UCI_HAR_Dataset.zip")) {
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL,"./UCI_HAR_Dataset.zip",mode="wb")
}
unzip("./UCI_HAR_Dataset.zip")

# load data in R

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE,sep="",col.names=c("code","activityName"))
features <- read.table("./UCI HAR Dataset/features.txt",header=FALSE,sep="",col.names=c("code","name"))

activities_test <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE,sep="")
activities_train <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE,sep="")
subjects_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE,sep="")

subjects_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE,sep="")
data_test <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE,sep="",col.names=features$name)
data_train <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE,sep="",col.names=features$name)

# take only the means() and std() values
filter <- grepl(".*-mean\\(\\).*",features$name) | grepl(".*-std\\(\\).*",features$name)
data_test <- data_test[,filter]
data_train <- data_train[,filter]

# append the subject and activity IDs and activity names
data_test <- cbind(activities_test,data_test)
data_test <- cbind(subjects_test,data_test)
colnames(data_test)[1:2] <- c("subject","activityCode")

data_train <- cbind(activities_train,data_train)
data_train <- cbind(subjects_train,data_train)
colnames(data_train)[1:2] <- c("subject","activityCode")

# add column with full activity name, remove activity code
data_test <- merge(activity_labels,data_test,by.x="code",by.y="activityCode",all.x=TRUE)
data_train <- merge(activity_labels,data_train,by.x="code",by.y="activityCode",all.x=TRUE)
data_test <- data_test[,c(-1)]
data_train <- data_train[,c(-1)]

# merge test and train tables
data_full <- rbind(data_test,data_train)

# create tidy table with means
groups <- list(subject=data_full$subject,activity=data_full$activity)
tidy <- aggregate(data_full[,-1:-2],by=groups,FUN=mean,na.rm=TRUE)
tidy <- tidy[order(tidy$subject,tidy$activity),]

# write the result in a text file
write.table(tidy,"./tidy.txt",row.names=FALSE)
