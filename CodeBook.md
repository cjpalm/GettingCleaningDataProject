## Code Book
purpose of study was outlined in course assignment:
Create an independent tidy data set with the average of each mean and Standard Deviation variable for each activity and each subject from the original data set

##  Description of initial study
this is background information on what data was collected.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
data source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 



## Study design

The assignment gave specific instructions about how to merge extract the data set;
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive activity names. 
  5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
  
  All step were done by the run_analysis.R script. Comments in the script detail the exact process taken.
  
  The variables to use were chosen were those that were defined in the "features_info.txt" file as having "mean(): Mean value" and "std(): Standard deviation"  These two sets of variables (features) best fit the description given in the assignment.

## Code book 

The Activity and subject variables are listed first, these are the column headers in the tidy data set.  They are in the format <activity>.<subjectID>

laying.1  
sitting.1  
standing.1  
walking.1  
walking.downstairs.1  
walking.upstairs.1  
laying.2  
sitting.2  
standing.2  
walking.2  
walking.downstairs.2  
walking.upstairs.2  
laying.3
sitting.3  
standing.3  
walking.3  
walking.downstairs.3  
walking.upstairs.3  
laying.4  
sitting.4  
standing.4  
walking.4  
walking.downstairs.4  
walking.upstairs.4  
laying.5  
sitting.5  
standing.5  
walking.5  
walking.downstairs.5  
walking.upstairs.5  
laying.6  
sitting.6  
standing.6  
walking.6  
walking.downstairs.6  
walking.upstairs.6  
laying.7  
sitting.7  
standing.7  
walking.7  
walking.downstairs.7  
walking.upstairs.7  
laying.8  
sitting.8  
standing.8  
walking.8  
walking.downstairs.8  
walking.upstairs.8  
laying.9  
sitting.9  
standing.9  
walking.9  
walking.downstairs.9  
walking.upstairs.9  
laying.10   
sitting.10   
standing.10   
walking.10   
walking.downstairs.10   
walking.upstairs.10   
laying.11   
sitting.11   
standing.11   
walking.11   
walking.downstairs.11   
walking.upstairs.11   
laying.12   
sitting.12   
standing.12   
walking.12   
walking.downstairs.12   
walking.upstairs.12   
laying.13   
sitting.13   
standing.13   
walking.13   
walking.downstairs.13   
walking.upstairs.13   
laying.14   
sitting.14   
standing.14   
walking.14   
walking.downstairs.14   
walking.upstairs.14   
laying.15   
sitting.15   
standing.15   
walking.15   
walking.downstairs.15   
walking.upstairs.15   
laying.16   
sitting.16   
standing.16   
walking.16   
walking.downstairs.16   
walking.upstairs.16   
laying.17   
sitting.17   
standing.17   
walking.17   
walking.downstairs.17   
walking.upstairs.17   
laying.18   
sitting.18   
standing.18   
walking.18   
walking.downstairs.18   
walking.upstairs.18   
laying.19   
sitting.19   
standing.19   
walking.19   
walking.downstairs.19   
walking.upstairs.19   
laying.20   
sitting.20   
standing.20   
walking.20   
walking.downstairs.20   
walking.upstairs.20   
laying.21   
sitting.21   
standing.21   
walking.21   
walking.downstairs.21   
walking.upstairs.21   
laying.22   
sitting.22   
standing.22   
walking.22   
walking.downstairs.22   
walking.upstairs.22   
laying.23   
sitting.23   
standing.23   
walking.23   
walking.downstairs.23   
walking.upstairs.23   
laying.24   
sitting.24   
standing.24   
walking.24   
walking.downstairs.24   
walking.upstairs.24   
laying.25   
sitting.25   
standing.25   
walking.25   
walking.downstairs.25   
walking.upstairs.25   
laying.26   
sitting.26   
standing.26   
walking.26   
walking.downstairs.26   
walking.upstairs.26   
laying.27   
sitting.27   
standing.27   
walking.27   
walking.downstairs.27   
walking.upstairs.27   
laying.28   
sitting.28   
standing.28   
walking.28   
walking.downstairs.28   
walking.upstairs.28   
laying.29   
sitting.29   
standing.29   
walking.29   
walking.downstairs.29   
walking.upstairs.29   
laying.30   
sitting.30   
standing.30   
walking.30   
walking.downstairs.30   
walking.upstairs.30   

Below is the list of variables included in the original study, for which averages by activity and subject were calculated. These are the row headers in the tidy data set. variables with "mean" in the name are mean variables, those with "std" are standard deviation variables.  

tbodyacc.mean.x  
tbodyacc.mean.y  
tbodyacc.mean.z  
tbodyacc.std.x  
tbodyacc.std.y  
tbodyacc.std.z  
tgravityacc.mean.x  
tgravityacc.mean.y  
tgravityacc.mean.z  
tgravityacc.std.x  
tgravityacc.std.y  
tgravityacc.std.z  
tbodyaccjerk.mean.x  
tbodyaccjerk.mean.y  
tbodyaccjerk.mean.z  
tbodyaccjerk.std.x    
tbodyaccjerk.std.y    
tbodyaccjerk.std.z    
tbodygyro.mean.x    
tbodygyro.mean.y    
tbodygyro.mean.z    
tbodygyro.std.x   
tbodygyro.std.y   
tbodygyro.std.z   
tbodygyrojerk.mean.x    
tbodygyrojerk.mean.y    
tbodygyrojerk.mean.z    
tbodygyrojerk.std.x   
tbodygyrojerk.std.y  
tbodygyrojerk.std.z  
tbodyaccmag.mean  
tbodyaccmag.std  
tgravityaccmag.mean  
tgravityaccmag.std  
tbodyaccjerkmag.mean  
tbodyaccjerkmag.std  
tbodygyromag.mean  
tbodygyromag.std  
tbodygyrojerkmag.mean  
tbodygyrojerkmag.std  
fbodyacc.mean.x  
fbodyacc.mean.y  
fbodyacc.mean.z  
fbodyacc.std.x  
fbodyacc.std.y  
fbodyacc.std.z  
fbodyaccjerk.mean.x  
fbodyaccjerk.mean.y  
fbodyaccjerk.mean.z  
fbodyaccjerk.std.x  
fbodyaccjerk.std.y  
fbodyaccjerk.std.z  
fbodygyro.mean.x  
fbodygyro.mean.y  
fbodygyro.mean.z  
fbodygyro.std.x  
fbodygyro.std.y  
fbodygyro.std.z  
fbodyaccmag.mean  
fbodyaccmag.std  
fbodybodyaccjerkmag.mean  
fbodybodyaccjerkmag.std  
fbodybodygyromag.mean  
fbodybodygyromag.std  
fbodybodygyrojerkmag.mean  
fbodybodygyrojerkmag.std  
angle.tbodyaccmean.gravity  
angle.tbodyaccjerkmean.gravitymean  
angle.tbodygyromean.gravitymean  
angle.tbodygyrojerkmean.gravitymean  
angle.x.gravitymean  
angle.y.gravitymean  
angle.z.gravitymean  
