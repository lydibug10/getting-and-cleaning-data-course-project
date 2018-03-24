library(dplyr)

# read in dataset
test_x <- read.table("dataset/test/X_test.txt")
test_y <- read.table("dataset/test/y_test.txt")
test_subject <- read.table("dataset/test/subject_test.txt")
train_x <- read.table("dataset/train/X_train.txt")
train_y <- read.table("dataset/train/y_train.txt")
train_subject <- read.table("dataset/train/subject_train.txt")
features <- read.table("dataset/features.txt")[,2]
activity_labels <- read.table("dataset/activity_labels.txt")

# bind the datasets together
merged_x <- rbind(test_x, train_x)
merged_y <- rbind(test_y, train_y)
merged_subject <- rbind(test_subject, train_subject)

# Pull out just the mean and stddev and associate them to the new dataset
new_features <- grepl("mean|std", features)
new_merged_x <- merged_x[,new_features]
names(new_merged_x) <- features[new_features]

# name the activities
merged_y[,1] <- activity_labels[merged_y[,1],2]
names(merged_y) <- "activity"

# label the data using the subject names
names(merged_subject) <- "subject"

# bring the columsn in different variables into one table
dataset <- cbind(new_merged_x, merged_y, merged_subject)

# create summarized dataset based on averages
tidy <- dataset %>% group_by(subject, activity) %>% summarise_all(funs(mean))

write.table(tidy, "tidydata.txt")
