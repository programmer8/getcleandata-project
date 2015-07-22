
zip.name = "getdata_projectfiles_UCI HAR Dataset.zip"

activity.names.file = "UCI HAR Dataset/activity_labels.txt"
activity.names = read.table(unz(zip.name, activity.names.file))


# Read in and reconstruct the 'test' data set

test.data.file = "UCI HAR Dataset/test/X_test.txt"
test.activity.file = "UCI HAR Dataset/test/y_test.txt"
test.subject.file = "UCI HAR Dataset/test/subject_test.txt"

test.data = read.table(unz(zip.name, test.data.file))
subjects = read.table(unz(zip.name, test.subject.file))
activities = read.table(unz(zip.name, test.activity.file))

act.labels = activity.names$V2[match(activities$V1, activity.names$V1)]
test.data = cbind(subjects, tolower(act.labels), test.data)


# Read in and reconstruct the 'train'ing data set

train.data.file = "UCI HAR Dataset/train/X_train.txt"
train.activity.file = "UCI HAR Dataset/train/y_train.txt"
train.subject.file = "UCI HAR Dataset/train/subject_train.txt"

train.data = read.table(unz(zip.name, train.data.file))
subjects = read.table(unz(zip.name, train.subject.file))
activities = read.table(unz(zip.name, train.activity.file))

act.labels = activity.names$V2[match(activities$V1, activity.names$V1)]
train.data = cbind(subjects, tolower(act.labels), train.data)


# Combine the two, and give meaningful column names

tidy.data = rbind(test.data, train.data)

col.names.file = "UCI HAR Dataset/features.txt"
col.names = read.table(unz(zip.name, col.names.file))

col.names = c("Subject", "Activity", as.character(col.names$V2))
colnames(tidy.data) = col.names


# Identify the columns of interest, and subset them.

keep.cols = grepl("mean()", col.names, fixed = TRUE) | grepl("std()", col.names, fixed = TRUE)
keep.cols[1:2] = TRUE
tidy.data = tidy.data[ , keep.cols]


# Substitute 'dot' for hyphens and parens in column names and fix 'BodyBody' names

col.names = colnames(tidy.data)
col.names = sub("-mean()", ".mean", col.names, fixed = TRUE)
col.names = sub("-std()", ".std", col.names, fixed = TRUE)
col.names = sub("BodyBody", "Body", col.names, fixed = TRUE)
colnames(tidy.data) = col.names


# Aggregate the mean() for every subject - activity combination. Sort by Activity and Subject.

new.data = aggregate(tidy.data[,-(1:2)], 
                     by = list(Activity = tidy.data$Activity, Subject = tidy.data$Subject), mean)
new.data = new.data[order(new.data$Activity, new.data$Subject), ]


# Save the new data

write.table(new.data, file = "tidy_data.txt", row.name=FALSE)
