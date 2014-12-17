==================================================================

### Getting and Cleaning Data - Course Project

==================================================================

README.md Version 1.0

==================================================================

* Author: Po Tak Chow, Teddy
* Email: teddychowpt@gmail.com

==================================================================

##### Purpose:
* This project is to demonstrate my ability to collect, work with, and clean a data set. 
    
##### Goal:
* The goal is to prepare tidy data that can be used for later analysis use. 

Following items are required to be submitted:

1. A **tidy data set**                              
    (called "**tidy_data_set_result.txt**", in ".txt" text file format, created with write.table() using row.name=FALSE)
    
2. A **link** to a Github repository with my script                              
    (The script is called "**run_analysis.R**" for performing the analysis)
    
3. A **code book**                              
    (called "**CodeBook.md**" to describes the variables, the data, and works that I performed to clean up the data.) 
    
4. This **README.md** is also included in the repo with my scripts.

##### Requirement:
I need to create one R script called "**run_analysis.R**" that does the following:                              

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##### Working Directory:                              
* "**getdata_projectfiles_UCI HAR Dataset**"                              

Following files are included in the working directory:                              

* "UCI HAR Dataset" folder
* "run_analysis.R"
* "CodeBook.md"
* "README.md"
* "tidy_data_set_result.txt"    (created by running the "run_analysis.R"" script)

##### Procedure of Use:
1. Check whether the current working directory has already been changed to "**getdata_projectfiles_UCI HAR Dataset**".
2. Check whether the script, "run_analysis.R", has already been placed in the current working directory.
3. Input a command, "**source("run_analysis.R")**", in R Console and enter it as follows.
```
> source("run_analysis.R")
```

4. Wait until the first six rows of data of the processed tidy data set and its dimension information are showing in the R console. Following is an output example:

```
  subject           activity tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z
1       1            WALKING         0.2773308      -0.017383819        -0.1111481
2       1   WALKING_UPSTAIRS         0.2554617      -0.023953149        -0.0973020
3       1 WALKING_DOWNSTAIRS         0.2891883      -0.009918505        -0.1075662
4       1            SITTING         0.2612376      -0.001308288        -0.1045442
5       1           STANDING         0.2789176      -0.016137590        -0.1106018
6       1             LAYING         0.2215982      -0.040513953        -0.1132036
```
```
[1] "Dimension:"     "180"            "68"             "(row & column)"
```
You can also input the command shown as follows to check it. 
```
> head(result)
```

5. The processed tidy data set is stored in a data frame called "result" and it can be used for later analysis use.
6. A text file in ".txt" file format, called "**tidy_data_set_result.txt**" to save the tidy data set result is created and stored in the working directory for later analysis use.

Please check the "**CodeBook.md**" for more details on the variables and data.

##### Remark:                              
Tidy data principles:      

* Each variable measured should be in one column. 
* Each different observation of that variable should be in a different row.

==================================================================

##### Data (for the project): 

* "**UCI HAR Dataset**"

##### Source:

* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##### Description:

The dataset was created from experiments, carried out with a group of 30 volunteers within an age bracket of 19-48 years by wearing a smartphone (Samsung Galaxy S II) on the waist.. 

Each person performed six activities:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING, STANDING
5. LAYING

Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured.

The obtained dataset has been randomly partitioned into two sets:

1. 70% for the training data
2. 30% for the test data

A full description is available at the site listed below. Check it out for more details:

* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

For each record, it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

The dataset includes the following files which are placed in the "UCI HAR Dataset" folder:

* "README.txt"
* "features_info.txt"       (Shows information about the variables used on the feature vector.)
* "features.txt"            (List of all features.)
* "activity_labels.txt"     (Links the class labels with their activity name.)
* "train/X_train.txt"       (Training set.)
* "train/y_train.txt"       (Training labels.)
* "test/X_test.txt"         (Test set.)
* "test/y_test.txt"         (Test labels.)

Following files are available for the train and test data. (Their descriptions are equivalent.) 

* "train/subject_train.txt"                         
    (Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.)
    
* "train/Inertial Signals/total_acc_x_train.txt"    
    (The acceleration signal from the smartphone accelerometer X axis in standard gravity units "g". Every row shows a 128 element vector. The same description applies for the "total_acc_x_train.txt" and "total_acc_z_train.txt" files for the Y and Z axis.)
    
* "train/Inertial Signals/body_acc_x_train.txt"     
    (The body acceleration signal obtained by subtracting the gravity from the total acceleration.)
    
* "train/Inertial Signals/body_gyro_x_train.txt"     
    (The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.)

##### Notes: 

* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.

For more information about the dataset, please contact: activityrecognition@smartlab.ws

==================================================================

##### Data Set License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

==================================================================