files_full <- list.files( "UCI HAR Dataset/test/Inertial Signals", full.names = TRUE )
temp = data.frame()
raw_data = data.frame() ## All raw data of Inertial Signals

for ( i in 1:length(files_full) ) {
	temp <- read.fwf( file = files_full[i], widths = 2048, header = FALSE, sep = "", skip = 0)
	for ( j in (1 + length(temp$file_no)):nrow(temp) ) {
		temp$file_no[j] <- i
	}
	raw_data <- rbind( raw_data, temp )
}

temp = data.frame()
temp <- rbind( temp, raw_data["file_no"] )
temp <- cbind( temp, raw_data[,1:(ncol(raw_data) - 1)] )

tail(raw_data)

