# Libraries
library(dplyr)

# Check if dataset is in working directory and unzipped
# Then download and/or unzip if necessary
filename <- "UCI HAR Dataset.zip"

if (!file.exists(filename)) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, filename, method="libcurl")
}
if (!file.exists("UCI HAR Dataset")) {
  unzip(filename)
}

# Load activity and feature labels
activities <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = TRUE, col.names = c('activityLabel', 'activityName'))
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = TRUE, col.names = c('featureLabel', 'featureName'))

# Prepare feature column names
features$featureColName <- gsub(x=features$featureName, pattern="-", replacement="_") %>%
  gsub(pattern="mean\\(\\)", replacement="Mean") %>%
  gsub(pattern="std\\(\\)", replacement="StDev")

# Load training feature data adding the feature column names
# then bind the subjects and activities
train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$featureColName)
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt", col.names = c("activityLabel"))
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names= c("subject"), colClasses = c("factor"))
train <- cbind(trainSubjects, trainActivities, train)

# Load testing feature data adding the feature column names
# then bind the subjects and activities
test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$featureColName)
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt", col.names = c("activityLabel"))
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names= c("subject"), colClasses = c("factor"))
test <- cbind(testSubjects, testActivities, test)

# Merge training and testing data
# then add the activity descriptions with left join
# then select only the subject, activity, and mean and std features
clean_data <- rbind(train, test) %>%
  left_join(activities, by="activityLabel") %>%
  select(subject, activity=activityName, matches("_Mean|_StDev", ignore.case = FALSE))

# Group by each subject and activity
# then get the mean for each column
# then write to tidy.txt
tidy_data <- group_by(clean_data, subject, activity) %>% 
  summarize_each(funs(mean))
write.table(tidy_data, "tidy.txt", row.names = FALSE)
