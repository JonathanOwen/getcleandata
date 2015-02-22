## Script for tidying smartphone accelerometer and gyroscope data from
## a study of 30 subjects performing 6 activities.
## 
## An explanation of the study is at 
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
## Dataset is available at either
## http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip
## or
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##
## See README.md and codebook.md for more details

## Data are assumed to be in 'test' and 'train' sub-directories of
## 'UCI HAR Dataset' directory

## Read data for test group
measurements_for_test_group <- read.table("UCI HAR Dataset/test/X_test.txt")
activities_for_test_group <- read.table("UCI HAR Dataset/test/y_test.txt")
subjects_for_test_group <- read.table("UCI HAR Dataset/test/subject_test.txt")

## Combine subjects, activities, and measurements for test group
test_group_table <- cbind(subjects_for_test_group, activities_for_test_group,
                          measurements_for_test_group)

## Read data for train group
measurements_for_train_group <- read.table("UCI HAR Dataset/train/X_train.txt")
activities_for_train_group <- read.table("UCI HAR Dataset/train/y_train.txt")
subjects_for_train_group <- read.table("UCI HAR Dataset/train/subject_train.txt")

## Combine subjects, activities, and measurements for test group
train_group_table <- cbind(subjects_for_train_group, activities_for_train_group,
                           measurements_for_train_group)


## Combine tables for test and train group
combined_data <- rbind(test_group_table, train_group_table)


## Find column numbers for means and std from features.txt file
features_table <- read.table("UCI HAR Dataset/features.txt")
columns_of_measurement_means <-
        features_table[grep("*-mean\\(\\)",features_table$V2),1]
columns_of_measurement_std <-
        features_table[grep("*-std\\(\\)",features_table$V2),1]

## Combine and sort column numbers
columns_of_measurement_mean_and_std <- 
        c(columns_of_measurement_means, columns_of_measurement_std)
columns_of_measurement_mean_and_std <- 
        sort(columns_of_measurement_mean_and_std)
## Add 2 to get measurement column numbers after subject and activity 
## in merged data
columns_of_measurement_mean_and_std <- columns_of_measurement_mean_and_std + 2

## Select only measurements with mean and std from merged data
selected_data <- combined_data[,c(1,2,columns_of_measurement_mean_and_std)]

## Replace activity codes with strings using convention of all lower case,
## no spaces
activities <- c("walking","walkingupstairs","walkingdownstairs",
                "sitting","standing","laying")
selected_data[,2] <- activities[selected_data[,2]]

## Get measurement labels from features table
measurement_names <- features_table[,2]
## Select only labels containing -mean() or -std()
selected_measurements <- 
        measurement_names[columns_of_measurement_mean_and_std - 2]

## Create vector of names to edit (and preserve original names)
alt_measurement_names <- selected_measurements

## Create a vector to store edits to paste before or after names
name_changes <- rep("not specified",length(selected_measurements))

## For means use prefix 'mean_of_' for std deviations use prefix 'sd_of_'
mean_names <- grep("-mean\\(\\)",alt_measurement_names, value = FALSE)
name_changes[mean_names] <- "mean_of_"
std_names <- grep("-std\\(\\)",alt_measurement_names, value = FALSE)
name_changes[std_names] <- "sd_of_"

## Paste prefixes onto names
alt_measurement_names <- paste0(name_changes,alt_measurement_names)

## Drop '-mean()" and '-std()' from names
alt_measurement_names <- gsub("-mean\\(\\)","",alt_measurement_names)
alt_measurement_names <- gsub("-std\\(\\)","",alt_measurement_names)

## For create and paste suffixes for time domain and frequency domain
## measurements
time_domain <- grep("_of_t",alt_measurement_names, value = FALSE)
frequency_domain <- grep("_of_f",alt_measurement_names, value = FALSE)
name_changes[time_domain] <- "_in_t_domain"
name_changes[frequency_domain] <- "_in_f_domain"
alt_measurement_names <- paste0(alt_measurement_names,name_changes)

## Drop t and f remaining from original names
alt_measurement_names <- gsub("of_t","of_",alt_measurement_names)
alt_measurement_names <- gsub("of_f","of_",alt_measurement_names)

## Clean up error in original names
alt_measurement_names <- gsub("BodyBody","body",alt_measurement_names)

## Expand 'acc' and "mag". Separate terms by underscore.Replace dash with 
## underscore
alt_measurement_names <- gsub("Acc","_acceleration",alt_measurement_names)
alt_measurement_names <- gsub("-","_",alt_measurement_names)
alt_measurement_names <- gsub("Gyro","_gyro",alt_measurement_names)
alt_measurement_names <- gsub("Jerk","_jerk",alt_measurement_names)
alt_measurement_names <- gsub("Mag","_magnitude",alt_measurement_names)

## Show that -X, -Y, -Z refer to x, y, and z components of measurement
alt_measurement_names <- gsub("_X_","_x_component_",alt_measurement_names)
alt_measurement_names <- gsub("_Y_","_y_component_",alt_measurement_names)
alt_measurement_names <- gsub("_Z_","_z_component_",alt_measurement_names)

## Convert everything to lower case
alt_measurement_names <- tolower(alt_measurement_names)

## Add subject and activity
alt_measurement_names <- c("subject","activity", alt_measurement_names)

## Rename columns with new measurement names
names(selected_data) <- alt_measurement_names

## dplyr package is required for tidying
## install.packages("dplyr")
library(dplyr)

## Tidy data by grouping by subject and activity and finding means of all
## measurements
tidy_data <- selected_data %>% group_by(subject,activity) %>% 
        summarise_each(funs(mean))

## Write table to file 'smartphone_tidy_data.txt'
write.table(tidy_data, file = "smartphone_tidy_data.txt", 
            row.names = FALSE, quote = FALSE)

