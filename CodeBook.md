==================================================================

### Getting and Cleaning Data - Course Project

==================================================================

CodeBook.md Version 1.0

==================================================================

* Author: Po Tak Chow, Teddy
* Email: teddychowpt@gmail.com

==================================================================

### Code Book

#### Sample Output Example

```
> head(result)
```

```
  subject           activity tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z
1       1            WALKING         0.2773308      -0.017383819        -0.1111481
2       1   WALKING_UPSTAIRS         0.2554617      -0.023953149        -0.0973020
3       1 WALKING_DOWNSTAIRS         0.2891883      -0.009918505        -0.1075662
4       1            SITTING         0.2612376      -0.001308288        -0.1045442
5       1           STANDING         0.2789176      -0.016137590        -0.1106018
6       1             LAYING         0.2215982      -0.040513953        -0.1132036
```

==================================================================

Dimension: 180 rows x 68 columns

```
> dim(result)
```

```
[1] 180  68
```

==================================================================

#### Column Name

```
> colnames(result)
```

```
 [1] "subject"                     "activity"                    "tBodyAcc-mean()-X"          
 [4] "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"           "tGravityAcc-mean()-X"       
 [7] "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"        "tBodyAccJerk-mean()-X"      
[10] "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"       "tBodyGyro-mean()-X"         
[13] "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"          "tBodyGyroJerk-mean()-X"     
[16] "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"      "tBodyAccMag-mean()"         
[19] "tGravityAccMag-mean()"       "tBodyAccJerkMag-mean()"      "tBodyGyroMag-mean()"        
[22] "tBodyGyroJerkMag-mean()"     "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[25] "fBodyAcc-mean()-Z"           "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
[28] "fBodyAccJerk-mean()-Z"       "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[31] "fBodyGyro-mean()-Z"          "fBodyAccMag-mean()"          "fBodyBodyAccJerkMag-mean()" 
[34] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroJerkMag-mean()" "tBodyAcc-std()-X"           
[37] "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"            "tGravityAcc-std()-X"        
[40] "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"         "tBodyAccJerk-std()-X"       
[43] "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"        "tBodyGyro-std()-X"          
[46] "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"           "tBodyGyroJerk-std()-X"      
[49] "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"       "tBodyAccMag-std()"          
[52] "tGravityAccMag-std()"        "tBodyAccJerkMag-std()"       "tBodyGyroMag-std()"         
[55] "tBodyGyroJerkMag-std()"      "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"           
[58] "fBodyAcc-std()-Z"            "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"       
[61] "fBodyAccJerk-std()-Z"        "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"          
[64] "fBodyGyro-std()-Z"           "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-std()"  
[67] "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-std()"
```

==================================================================

##### 1: Subject
* From 1 to 30  (for 30 volunteers within an age bracket of 19-48 years)

##### 2: Activity
* Each volunteer performed 6 activities as follows listed:
    1. WALKING
    2. WALKING_UPSTAIRS
    3. WALKING_DOWNSTAIRS
    4. SITTING
    5. STANDING
    6. LAYING
    
==================================================================
    
### Feature Vector
    
#### Mean

* **Time Domain**       

    Signals were captured at a constant rate of 50 Hz and then, they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
    
    The acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

    Followings are the averages of means of body accelerations in X, Y and Z axes with inertial signals come from accelerometer:
    
        * 3 to 5: tBodyAcc-mean()
            1. tBodyAcc-mean()-X
            2. tBodyAcc-mean()-Y
            3. tBodyAcc-mean()-Z
        
    Followings are the averages of means of gravity accelerations in X, Y and Z axes with inertial signals come from accelerometer:
    
        * 6 to 8: tGravityAcc-mean()
            1. tGravityAcc-mean()-X
            2. tGravityAcc-mean()-Y
            3. tGravityAcc-mean()-Z
    
    The body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
    
    Followings are the averages of means of Jerk signals obtained from body acceleration in X, Y and Z axes:
    
        * 9 to 11: tBodyAccJerk-mean()
            1. tBodyAccJerk-mean()-X
            2. tBodyAccJerk-mean()-Y
            3. tBodyAccJerk-mean()-Z
    
    Followings are the averages of means of body angular velocities obtained from gyroscope in X, Y and Z axes:
    
        * 12 to 14: tBodyGyro-mean()
            1. tBodyGyro-mean()-X
            2. tBodyGyro-mean()-Y
            3. tBodyGyro-mean()-Z

    Followings are the averages of means of Jerk signals obtained from body angular velocities in X, Y and Z axes:

        * 15 to 17: tBodyGyroJerk-mean()
            1. tBodyGyroJerk-mean()-X
            2. tBodyGyroJerk-mean()-Y
            3. tBodyGyroJerk-mean()-Z
    
    Followings are the averages of means of magnitudes of those three-dimensional signals calculated by using the Euclidean norm:
    
        * 18: tBodyAccMag-mean()
        * 19: tGravityAccMag-mean()
        * 20: tBodyAccJerkMag-mean()
        * 21: tBodyGyroMag-mean()
        * 22: tBodyGyroJerkMag-mean()
    
* **Frequency Domain** 

    A Fast Fourier Transform (FFT) was applied to some of those signals producing the inertial signals for following variables:
    
    Followings are the averages of means of body accelerations in X, Y and Z axes with inertial signals come from accelerometer:
    
        * 23 to 25: fBodyAcc-mean()
            1. fBodyAcc-mean()-X
            2. fBodyAcc-mean()-Y
            3. fBodyAcc-mean()-Z
    
    Followings are the averages of means of Jerk signals obtained from body acceleration in X, Y and Z axes:
    
        * 26 to 28: fBodyAccJerk-mean()
            1. fBodyAccJerk-mean()-X
            2. fBodyAccJerk-mean()-Y
            3. fBodyAccJerk-mean()-Z
    
    Followings are the averages of means of body angular velocities obtained from gyroscope in X, Y and Z axes:
    
        * 29 to 31: fBodyGyro-mean()
            1. fBodyGyro-mean()-X
            2. fBodyGyro-mean()-Y
            3. fBodyGyro-mean()-Z
    
    Followings are the averages of means of magnitudes of these three-dimensional signals calculated by using the Euclidean norm:
    
        * 32: fBodyAccMag-mean()
        * 33: fBodyBodyAccJerkMag-mean()
        * 34: fBodyBodyGyroMag-mean()
        * 35: fBodyBodyGyroJerkMag-mean()

==================================================================

#### Standard Deviation

* **Time Domain** 

    Signals were captured at a constant rate of 50 Hz and then, they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
    
    The acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

    Followings are the averages of standard deviations of body accelerations in X, Y and Z axes with inertial signals come from accelerometer:
    
        * 36 to 38: tBodyAcc-std()
            1. tBodyAcc-std()-X
            2. tBodyAcc-std()-Y
            3. tBodyAcc-std()-Z
            
    Followings are the averages of standard deviations of gravity accelerations in X, Y and Z axes with inertial signals come from accelerometer:
    
        * 39 to 41: tGravityAcc-std()
            1. tGravityAcc-std()-X
            2. tGravityAcc-std()-Y
            3. tGravityAcc-std()-Z
    
    The body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
    
    Followings are the averages of standard deviations of Jerk signals obtained from body acceleration in X, Y and Z axes:

        * 42 to 44: tBodyAccJerk-std()
            1. tBodyAccJerk-std()-X
            2. tBodyAccJerk-std()-Y
            3. tBodyAccJerk-std()-Z
            
    Followings are the averages of standard deviations of body angular velocities obtained from gyroscope in X, Y and Z axes:
    
        * 45 to 47: tBodyGyro-std()
            1. tBodyGyro-std()-X
            2. tBodyGyro-std()-Y
            3. tBodyGyro-std()-Z
    
    Followings are the averages of standard deviations of Jerk signals obtained from body angular velocities in X, Y and Z axes:
    
        * 48 to 50: tBodyGyroJerk-std()
            1. tBodyGyroJerk-std()-X
            2. tBodyGyroJerk-std()-Y
            3. tBodyGyroJerk-std()-Z
    
    Followings are the averages of standard deviations of magnitudes of those three-dimensional signals calculated by using the Euclidean norm:
    
        * 51: tBodyAccMag-std()
        * 52: tGravityAccMag-std()
        * 53: tBodyAccJerkMag-std()
        * 54: tBodyGyroMag-std()
        * 55: tBodyGyroJerkMag-std()
    
* **Frequency Domain**
    
    A Fast Fourier Transform (FFT) was applied to some of those signals producing the inertial signals for following variables:
    
    Followings are the averages of standard deviations of body accelerations in X, Y and Z axes with inertial signals come from accelerometer:
    
        * 56 to 58: fBodyAcc-std()
            1. fBodyAcc-std()-X
            2. fBodyAcc-std()-Y
            3. fBodyAcc-std()-Z
    
    Followings are the averages of standard deviations of Jerk signals obtained from body acceleration in X, Y and Z axes:
    
        * 59 to 61: fBodyAccJerk-std()
            1. fBodyAccJerk-std()-X
            2. fBodyAccJerk-std()-Y
            3. fBodyAccJerk-std()-Z
    
    Followings are the averages of standard deviations of body angular velocities obtained from gyroscope in X, Y and Z axes:
    
        * 62 to 64: fBodyGyro-std()
            1. fBodyGyro-std()-X
            2. fBodyGyro-std()-Y
            3. fBodyGyro-std()-Z
    
    Followings are the averages of standard deviations of magnitudes of these three-dimensional signals calculated by using the Euclidean norm:
    
        * 65: fBodyAccMag-std()
        * 66: fBodyBodyAccJerkMag-std()
        * 67: fBodyBodyGyroMag-std()
        * 68: fBodyBodyGyroJerkMag-std()

==================================================================
