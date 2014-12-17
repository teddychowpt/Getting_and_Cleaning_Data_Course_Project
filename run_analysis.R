##================================================================================================================
## The goal of this script is to prepare a tidy data that can be used for later analysis use.
##
## This R script called "run_analysis.R" is created to do following five steps:
## 	Step 1. Merges the training and the test sets to create one data set. 
## 	Step 2. Uses descriptive activity names to name the activities in the data set
## 	Step 3. Appropriately labels the data set with descriptive variable names. 
## 	Step 4. Extracts only the measurements on the mean and standard deviation for each measurement.
## 	Step 5. From the data set in step 4, creates a second, independent tidy data set with the average 
##            of each variable for each activity and each subject.
##
## Aftering running the script, finally, a text file in ".txt" file format, called "tidy_data_set_result.txt" 
## to save the tidy data set result would be created and stored in the working directory. 
##================================================================================================================

##================================================================================================================
## Step 1 ##
## Read the data from the "test" folder
## Use a data frame, called "test_data", to store the test data set with its subject and activity added in columns
##================================================================================================================

files_full <- list.files( "UCI HAR Dataset/test", full.names = TRUE )
temp = data.frame()
test_data = data.frame() 

temp <- read.table( file = files_full[2], header = FALSE, sep = "", skip = 0)
test_data <- rbind( test_data, temp )

temp <- read.table( file = files_full[4], header = FALSE, sep = "", skip = 0)
test_data <- cbind( test_data, temp )

temp <- read.fwf( file = files_full[3], widths = 8976, header = FALSE, sep = "", skip = 0)
test_data <- cbind( test_data, temp )

##================================================================================================================
## Read the data from the "train" folder
## Use a data frame, called "train_data", to store the training data set with its subject and activity added in columns
##================================================================================================================

files_full <- list.files( "UCI HAR Dataset/train", full.names = TRUE )
temp = data.frame()
train_data = data.frame() 

temp <- read.table( file = files_full[2], header = FALSE, sep = "", skip = 0)
train_data <- rbind( train_data, temp )

temp <- read.table( file = files_full[4], header = FALSE, sep = "", skip = 0)
train_data <- cbind( train_data, temp )

temp <- read.fwf( file = files_full[3], widths = 8976, header = FALSE, sep = "", skip = 0)
train_data <- cbind( train_data, temp )

##================================================================================================================
## Merges the training and the test sets to create one data set.
## Use a data frame, called "whole_data", to store it.
##================================================================================================================

whole_data = data.frame()
whole_data <- rbind( test_data, train_data )

##================================================================================================================
## Step 2 ##
## Uses descriptive activity names to name the activities in the data set
##================================================================================================================

activity <- c( "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING" )

for ( i in 1:nrow(whole_data) ) {
	if ( whole_data[i,2] == 1 ) {
		whole_data[i,2] <- activity[1]
	} else if ( whole_data[i,2] == 2 ) {
			whole_data[i,2] <- activity[2]
		} else if ( whole_data[i,2] == 3 ) {
				whole_data[i,2] <- activity[3]
			} else if ( whole_data[i,2] == 4 ) {
					whole_data[i,2] <- activity[4]
				} else if ( whole_data[i,2] == 5 ) {
						whole_data[i,2] <- activity[5]
					} else if ( whole_data[i,2] == 6 ) {
							whole_data[i,2] <- activity[6]
						}
}

##================================================================================================================
## Step 3 ##
## Appropriately labels the data set with descriptive variable names.
##================================================================================================================

temp <- read.table( "UCI HAR Dataset/features.txt", header = FALSE, sep = "", skip = 0)

colnames(whole_data)[2] <- "activity"
colnames(whole_data)[1] <- "subject"

for ( i in 1:nrow(temp) ) {
	colnames(whole_data)[i+2] <- toString( temp[i,2] )
}

##================================================================================================================
## Step 4 ##
## Extracts only the measurements on the mean and standard deviation for each measurement.
##================================================================================================================

mean_data = data.frame()
std_data = data.frame()
new_data = data.frame()

mean_data <- whole_data[,grep( "mean()", colnames(whole_data), fixed = TRUE ) ]
std_data <- whole_data[,grep( "std", colnames(whole_data), fixed = TRUE ) ]

new_data <- cbind( whole_data[,"subject"], whole_data[,"activity"] )
new_data <- cbind( new_data, mean_data )
new_data <- cbind( new_data, std_data )

colnames(new_data)[2] <- "activity"
colnames(new_data)[1] <- "subject"

new_data <- new_data[order(new_data[,2]),]
new_data <- new_data[order(new_data[,1]),]

##================================================================================================================
## Step 5 ##
## From the data set (called "new_data") in step 4, creates a second, independent tidy data set (called "average") 
## with the average of each variable for each activity and each subject.
##================================================================================================================

average = data.frame()
temp = data.frame()

for ( i in 1:30 ) {
	for ( j in 1:6 ) {
		temp <- new_data[(new_data$subject == i & new_data$activity == activity[j]),]

		average[(i-1) * 6 + j,1] <- i
		average[(i-1) * 6 + j,2] <- activity[j]

		for ( k in 3:ncol(temp) ) {
			average[(i-1) * 6 + j,k] <- mean( temp[, k] )
		}
	}
}

colnames(average)[2] <- "activity"
colnames(average)[1] <- "subject"

for ( i in 3:ncol(new_data) ) {
	colnames(average)[i] <- colnames(new_data)[i]
}

##================================================================================================================
## Finally ##
## Use a data frame, called "result", to store the tidy data set result and print its first six rows of data with 
## the corresponding names of columns and its dimension in console for format checking and preview.
##
## A text file in ".txt" file format, called "tidy_data_set_result.txt" to save the tidy data set result is 
## created and stored in the working directory for later analysis use.
##================================================================================================================

result = data.frame()
result <- average
print(head(result))
print( dimension <- c( "Dimension:", dim(result), "(row & column)" ) )

write.table( result, file = "tidy_data_set_result.txt", quote = FALSE, sep = "\t", eol = "\n", dec = ".", row.names = FALSE, col.names = TRUE)

##================================================================================================================
## Remark:
## Please note that the seperator used for creating the text file is tab, "\t".
##================================================================================================================
