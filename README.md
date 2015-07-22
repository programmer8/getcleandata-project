
### Introduction

One of the most exciting areas in all of data science right now is wearable computing.   Companies 
like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new 
users. This assignment is to pre-process data, collected from the accelerometers from the Samsung 
Galaxy S II smartphone, to be be used for later analysis.  The data was collected and provided by 
a group at the Non Linear Complex 
Systems Laboratory at the Università degli Studi di Genova in Italy.  Reference to their work is 
provided here for compliance with the terms for using their data: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


### Included files:

- README.md

- CodeBook.md : A description of the variables found in tidy_data.txt.

- run_analysis.R : The code to perform the transformations and write out the data.

- tidy_data.txt : The requested tidy data set (This data was NOT uploaded to GitHub, since 
it was submitted directly into Coursera.)


### Assignment Submission Details

The original data (for the assignment) can be found 
[here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 
This zip file must be located in the working directory in order for the script 
to work.  Unpacking the zip file is not necessary, as the script will directly retrieve what it needs.  The 
code in the script file is not wrapped up in a function call, so running the code is accomplished by 'source'ing 
it, i.e. source("run_analysis.R").

What follows is a brief overview of the steps taken to develop the tidy data set required for 
this assignment.  As always, if there is any doubt, the real documentation of what was done is the 
script that processed the data.

### Procedure for creating 'tidy_data.txt'

- Read in 'X_test.txt'

- Prepend subject identifiers from 'subject_test.txt' and activity labels from 
'y_test.txt'

- Read in 'X_train.txt'

- Prepend subject identifiers from 'subject_train.txt' and activity labels from 
'y_train.txt'

- Append set 2 to set 1

- Assign readable column names from 'features.txt'

- Identify desired colums and subset data

- Substitute 'dot' for hyphens and parens in column names and fix 'BodyBody' names

- Build new tidy data with 'aggregate' function call and sort it by activity and subject

- Write new tidy data to 'tidy_data.txt'

