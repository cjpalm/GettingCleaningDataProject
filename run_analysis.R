## Load data. assume it is in subdir of working dir.
train.data.dt <- read.table("./UCI HAR Dataset/train/X_train.txt");
test.data.dt <- read.table("./UCI HAR Dataset/test/X_test.txt");
## load activity labels.
test.labels.dt <- read.table("./UCI HAR Dataset/test/y_test.txt");
train.labels.dt <- read.table("./UCI HAR Dataset/train/y_train.txt");
##load subject IDs
train.subject.dt <- read.table("./UCI HAR Dataset/train/subject_train.txt");
test.subject.dt <- read.table("./UCI HAR Dataset/test/subject_test.txt");
## load names of measurements
features.dt <- read.table("./UCI HAR Dataset/features.txt");
##  vector of activities that correspond to labels
activities <- c("walking","walking.upstairs","walking.downstairs","sitting","standing","laying")
## clean up feature names
features.dt[[2]] <- tolower(features.dt[[2]]);
features.dt[[2]]  <- gsub("\\(\\)","",features.dt[[2]])
features.dt[[2]]  <- gsub("\\)","",features.dt[[2]])
features.dt[[2]]  <- gsub("\\(",".",features.dt[[2]])
features.dt[[2]]  <- gsub(",",".",features.dt[[2]])
features.dt[[2]]  <-  gsub("-",".",features.dt[[2]])
## merge train and test data,labels and subjects
all.data.dt <- rbind(train.data.dt,test.data.dt)
all.labels.dt <- rbind(train.labels.dt,test.labels.dt)
all.text.labels.dt <- activities[all.labels.dt[[1]]]
all.subject.dt <- rbind(train.subject.dt,test.subject.dt)
## column names to data
colnames(all.data.dt) <-c(features.dt[[2]])
## subset all mean features - "exclude meanfreq" features
mean.features.dt <- features.dt[grep("mean",features.dt[[2]]) ,]
mean.features.dt <- mean.features.dt[grep("freq",mean.features.dt[[2]],invert=TRUE),]
## subest all std.dev. features.
std.features.dt <- features.dt[grep("std",features.dt[[2]]) ,]
## combine mean and std.dev. and sort them
mean.std.features.dt <- rbind(mean.features.dt,std.features.dt) 
columns.to.keep <- sort(mean.std.features.dt[[1]])
## extract columns to keep
mean.std.data.dt <- all.data.dt[,columns.to.keep]
##


# create data frame 
mean.std.data.df <- data.frame(mean.std.data.dt,all.text.labels.dt,all.subject.dt)

## add proper column headers
newcolnames <- colnames(mean.std.data.df)
newcolnames[74] <- "activity"
newcolnames[75] <- "subject"
colnames(mean.std.data.df) <- newcolnames

#split the data 
s <- split(mean.std.data.df,list(mean.std.data.df$activity,mean.std.data.df$subject), drop=TRUE )
# calculate the means
finaltable <- lapply(s,function(x) colMeans(x[,newcolnames[1:73]]))

