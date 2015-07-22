
### Feature Selection

The features selected for this database were derived from a previously pre-processed database 
of accelerometer and gyroscope signals from a Samsung Galaxy S II smartphone.  It is therefore 
necessary to understand the original data source.  (The following discription comes directly from 
the source providers codebook.)

The features in the original database come from the accelerometer and gyroscope 3-axial 
raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were 
captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd 
order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, 
the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ 
and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk 
signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional 
signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to 
indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

From these, a large set of descriptive variables were estimated for each signal. 
'tidy_data.txt' is based on only two descriptive statistics, the mean and standard deviation.

### Structure of new data set

We are interested in the average value of the mean and standard deviation for each of
the 33 estimated signals grouped by activity and test subject.  Thus the new data set 
has 180 observations (6 activities X 30 test subjects) and 68 variables (2 to identify the 
activity and subject, 33 mean values, and 33 std. dev. values).  The values in the 
non-identifying variables are calculated by taking a mean() of all original values 
(each already either a mean or standard deviation) with identical indentifiers.

### Complete list of 68 variables

Activity  
Subject  
tBodyAcc.mean-X  
tBodyAcc.mean-Y  
tBodyAcc.mean-Z  
tBodyAcc.std-X  
tBodyAcc.std-Y  
tBodyAcc.std-Z  
tGravityAcc.mean-X  
tGravityAcc.mean-Y  
tGravityAcc.mean-Z  
tGravityAcc.std-X  
tGravityAcc.std-Y  
tGravityAcc.std-Z  
tBodyAccJerk.mean-X  
tBodyAccJerk.mean-Y  
tBodyAccJerk.mean-Z  
tBodyAccJerk.std-X  
tBodyAccJerk.std-Y  
tBodyAccJerk.std-Z  
tBodyGyro.mean-X  
tBodyGyro.mean-Y  
tBodyGyro.mean-Z  
tBodyGyro.std-X  
tBodyGyro.std-Y  
tBodyGyro.std-Z  
tBodyGyroJerk.mean-X  
tBodyGyroJerk.mean-Y  
tBodyGyroJerk.mean-Z  
tBodyGyroJerk.std-X  
tBodyGyroJerk.std-Y  
tBodyGyroJerk.std-Z  
tBodyAccMag.mean  
tBodyAccMag.std  
tGravityAccMag.mean  
tGravityAccMag.std  
tBodyAccJerkMag.mean  
tBodyAccJerkMag.std  
tBodyGyroMag.mean  
tBodyGyroMag.std  
tBodyGyroJerkMag.mean  
tBodyGyroJerkMag.std  
fBodyAcc.mean-X  
fBodyAcc.mean-Y  
fBodyAcc.mean-Z  
fBodyAcc.std-X  
fBodyAcc.std-Y  
fBodyAcc.std-Z  
fBodyAccJerk.mean-X  
fBodyAccJerk.mean-Y  
fBodyAccJerk.mean-Z  
fBodyAccJerk.std-X  
fBodyAccJerk.std-Y  
fBodyAccJerk.std-Z  
fBodyGyro.mean-X  
fBodyGyro.mean-Y  
fBodyGyro.mean-Z  
fBodyGyro.std-X  
fBodyGyro.std-Y  
fBodyGyro.std-Z  
fBodyAccMag.mean  
fBodyAccMag.std  
fBodyAccJerkMag.mean  
fBodyAccJerkMag.std  
fBodyGyroMag.mean  
fBodyGyroMag.std  
fBodyGyroJerkMag.mean  
fBodyGyroJerkMag.std  


