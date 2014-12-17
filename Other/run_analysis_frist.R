files_full <- list.files( "UCI HAR Dataset/test", full.names = TRUE )
temp = data.frame()
test_data = data.frame() ## All raw data of Inertial Signals

temp <- read.table( file = files_full[4], header = FALSE, sep = "", skip = 0)
test_data <- rbind( test_data, temp )

temp <- read.table( file = files_full[2], header = FALSE, sep = "", skip = 0)
test_data <- cbind( test_data, temp )

temp <- read.fwf( file = files_full[3], widths = 8976, header = FALSE, sep = "", skip = 0)
test_data <- cbind( test_data, temp )


files_full <- list.files( "UCI HAR Dataset/train", full.names = TRUE )
temp = data.frame()
train_data = data.frame() ## All raw data of Inertial Signals

temp <- read.table( file = files_full[4], header = FALSE, sep = "", skip = 0)
train_data <- rbind( train_data, temp )

temp <- read.table( file = files_full[2], header = FALSE, sep = "", skip = 0)
train_data <- cbind( train_data, temp )

temp <- read.fwf( file = files_full[3], widths = 8976, header = FALSE, sep = "", skip = 0)
train_data <- cbind( train_data, temp )

whole_data <- rbind( test_data, train_data )


temp <- read.table( "UCI HAR Dataset/features.txt", header = FALSE, sep = "", skip = 0)

colnames(whole_data)[1] <- "Activity"
colnames(whole_data)[2] <- "Subject"

for ( i in 1:nrow(temp) ) {
	colnames(whole_data)[i+2] <- toString( temp[i,2] )
}

