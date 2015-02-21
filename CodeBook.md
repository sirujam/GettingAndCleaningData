## CodeBook

Data is store in wide form.

### Method of tidying data
1. Read the dataset from test and training sets, feature lables (used for column) and activity label (used for Activity tagging).
2. Using bind_rows of dplyr package test and training sets are merged into three sets (subject set, measurement set, and activity set).
3. Using bind_cols all three sets are combined to one dataset. The dataset are in order Subject, Activity and measurements.
4. The columns are filtered with "mean()" and "std()" and stored in intermediate dataset.
5. Using normal indexing, activity labels are changed to descriptive name.
6. gsub is used to change labels names to make it descriptive and assigned to column.
7. The data is tidied using reshape2 function and stored to file in wide form.


### Variables
- Descripton of Variables are as below.

#### Subject                                                  
- Unique ID provided to 30 volunteers participated in experiment

#### Activity                                                 
- Activities performed during experiment. Activities can be
-- LAYING
-- SITTING
-- STANDING
-- WALKING
-- WALKING_DOWNSTAIRS
-- WALKING_UPSTAIRS
    
#### time-BodyAcceleration-Mean-X                             
- Mean Time based body acceleration as measured by accelerometer along x-axis of phone

#### time-BodyAcceleration-Mean-Y                             
- Mean Time based body acceleration as measured by accelerometer along y-axis of phone
                             
#### time-BodyAcceleration-Mean-Z                             
- Mean Time based body acceleration as measured by accelerometer along z-axis of phone

#### time-BodyAcceleration-StandardDeviation-X                
- Standard Deviation of body acceleration as measured by accelerometer along x-axis of phone

#### time-BodyAcceleration-StandardDeviation-Y                
- Standard Deviation of body acceleration as measured by accelerometer along y-axis of phone

#### time-BodyAcceleration-StandardDeviation-Z                
- Standard Deviation of body acceleration as measured by accelerometer along z-axis of phone

#### time-GravityAcceleration-Mean-X                          
- Mean Time based gravitational acceleration as measured by accelerometer along x-axis of phone

#### time-GravityAcceleration-Mean-Y                          
- Mean Time based gravitational acceleration as measured by accelerometer along y-axis of phone

#### time-GravityAcceleration-Mean-Z                          
- Mean Time based gravitational acceleration as measured by accelerometer along z-axis of phone

#### time-GravityAcceleration-StandardDeviation-X             
- Standard Deviation of gravitational acceleration as measured by accelerometer along x-axis of phone

#### time-GravityAcceleration-StandardDeviation-Y             
- Standard Deviation of body acceleration as measured by accelerometer along y-axis of phone

#### time-GravityAcceleration-StandardDeviation-Z             
- Standard Deviation of body acceleration as measured by accelerometer along z-axis of phone

#### time-BodyAccelerationJerk-Mean-X                         
- Mean Time based jerk signals as measured by accelerometer along x-axis

#### time-BodyAccelerationJerk-Mean-Y                         
- Mean Time based jerk signals as measured by accelerometer along y-axis

#### time-BodyAccelerationJerk-Mean-Z                         
- Mean Time based jerk signals as measured by accelerometer along z-axis

#### time-BodyAccelerationJerk-StandardDeviation-X            
- Standard Deviation of jerk signals as measured by accelerometer along x-axis

#### time-BodyAccelerationJerk-StandardDeviation-Y            
- Standard Deviation of jerk signals as measured by accelerometer along y-axis

#### time-BodyAccelerationJerk-StandardDeviation-Z            
- Standard Deviation of jerk signals as measured by accelerometer along z-axis

#### time-BodyGyroScope-Mean-X                                
- Mean Time based angular body velocity as measured by gyroscope along x-axis of phone

#### time-BodyGyroScope-Mean-Y                                
- Mean Time based angular body velocity as measured by gyroscope along y-axis of phone

### time-BodyGyroScope-Mean-Z                                
- Mean Time based angular body velocity as measured by gyroscope along z-axis of phone

#### time-BodyGyroScope-StandardDeviation-X                   
- Standard Deviation of angular body velocity as measured by gyroscope along x-axis of phone

#### time-BodyGyroScope-StandardDeviation-Y                   
- Standard Deviation of angular body velocity as measured by gyroscope along y-axis of phone

#### time-BodyGyroScope-StandardDeviation-Z                   
- Standard Deviation of angular body velocity as measured by gyroscope along z-axis of phone

#### time-BodyGyroScopeJerk-Mean-X                            
- Mean Time based change of angular body velocity(Jerk Signals) as measured by gyroscope along x-axis of phone

#### time-BodyGyroScopeJerk-Mean-Y                            
- Mean Time based change of angular body velocity(Jerk Signals) as measured by gyroscope along y-axis of phone

#### time-BodyGyroScopeJerk-Mean-Z                            
- Mean Time based change of angular body velocity(Jerk Signals) as measured by gyroscope along z-axis of phone

#### time-BodyGyroScopeJerk-StandardDeviation-X               
- Standard Deviation of change of angular body velocity(Jerk Signals) as measured by gyroscope along x-axis of phone

#### time-BodyGyroScopeJerk-StandardDeviation-Y               
- Standard Deviation of change of angular body velocity(Jerk Signals) as measured by gyroscope along y-axis of phone

#### time-BodyGyroScopeJerk-StandardDeviation-Z               
- Standard Deviation of change of angular body velocity(Jerk Signals) as measured by gyroscope along z-axis of phone

#### time-BodyAccelerationMagnitude-Mean                      
- Mean Time based magnitude of body acceleration in Euclidean Space

#### time-BodyAccelerationMagnitude-StandardDeviation         
- Standard Deviation of magnitude of body acceleration in Euclidean Space

#### time-GravityAccelerationMagnitude-Mean                   
- Mean Time based magnitude of gravity acceleration in Euclidean Space

#### time-GravityAccelerationMagnitude-StandardDeviation      
- Standard Deviation of magnitude of gravitational acceleration in Euclidean Space

#### time-BodyAccelerationJerkMagnitude-Mean                  
- Mean Time based magnitude of body acceleration Jerk in Euclidean Space

#### time-BodyAccelerationJerkMagnitude-StandardDeviation     
- Standard Deviation of magnitude of body acceleration Jerk in Euclidean Space

#### time-BodyGyroScopeMagnitude-Mean                         
- Mean Time based magnitude of angular velocity in Euclidean Space

#### time-BodyGyroScopeMagnitude-StandardDeviation            
- Standard Devitation of magnitude of angular velocity in Euclidean Space

#### time-BodyGyroScopeJerkMagnitude-Mean                     
- Mean Time based magnitude of change in angular velocity in Euclidean Space

#### time-BodyGyroScopeJerkMagnitude-StandardDeviation        
- Standard Deviation of magnitude of change in angular velocity in Euclidean Space

#### frequency-BodyAcceleration-Mean-X                        
- Mean Frequency based body acceleration as measured by accelerometer along x-axis of phone

#### frequency-BodyAcceleration-Mean-Y                        
- Mean Frequency based body acceleration as measured by accelerometer along y-axis of phone

#### frequency-BodyAcceleration-Mean-Z                        
- Mean Frequency based body acceleration as measured by accelerometer along z-axis of phone

#### frequency-BodyAcceleration-StandardDeviation-X           
- Standard Deviation of body acceleration in frequency domain as measured by accelerometer along x-axis of phone

#### frequency-BodyAcceleration-StandardDeviation-Y           
- Standard Deviation of body acceleration in frequency domain as measured by accelerometer along y-axis of phone

#### frequency-BodyAcceleration-StandardDeviation-Z           
- Standard Deviation of body acceleration in frequency domain as measured by accelerometer along z-axis of phone

#### frequency-BodyAccelerationJerk-Mean-X                    
- Mean Frequency based jerk signals as measured by accelerometer along x-axis

#### frequency-BodyAccelerationJerk-Mean-Y                    
- Mean Frequency based jerk signals as measured by accelerometer along y-axis

#### frequency-BodyAccelerationJerk-Mean-Z                    
- Mean Frequency based jerk signals as measured by accelerometer along z-axis

#### frequency-BodyAccelerationJerk-StandardDeviation-X       
- Standard Deviation of jerk signals in frequency domain as measured by accelerometer along x-axis

#### frequency-BodyAccelerationJerk-StandardDeviation-Y       
- Standard Deviation of jerk signals in frequency domain as measured by accelerometer along y-axis

#### frequency-BodyAccelerationJerk-StandardDeviation-Z       
- Standard Deviation of jerk signals in frequency domain as measured by accelerometer along z-axis

#### frequency-BodyGyroScope-Mean-X                           
- Mean Frequency based angular body velocity as measured by gyroscope along x-axis of phone

#### frequency-BodyGyroScope-Mean-Y                           
- Mean Frequency based angular body velocity as measured by gyroscope along y-axis of phone

#### frequency-BodyGyroScope-Mean-Z                           
- Mean Frequency based angular body velocity as measured by gyroscope along z-axis of phone

#### frequency-BodyGyroScope-StandardDeviation-X              
- Standard Deviation of angular body velocity in frequency domain as measured by gyroscope along x-axis of phone

#### frequency-BodyGyroScope-StandardDeviation-Y              
- Standard Deviation of angular body velocity in frequency domain as measured by gyroscope along y-axis of phone


#### frequency-BodyGyroScope-StandardDeviation-Z              
- Standard Deviation of angular body velocity in frequency domain as measured by gyroscope along z-axis of phone

#### frequency-BodyAccelerationMagnitude-Mean                 
- Mean Frequency based magnitude of body acceleration in Euclidean Space

#### frequency-BodyAccelerationMagnitude-StandardDeviation    
- Standard Deviation of magnitude of body acceleration in Euclidean Space in frequency domain

#### frequency-BodyAccelerationJerkMagnitude-Mean             
- Mean Frequency based magnitude of Jerk Signals in Euclidean Space

#### frequency-BodyAccelerationJerkMagnitude-StandardDeviation
- Standard Deviation of magnitude of Jerk Signals in Euclidean Space in frequency domain

#### frequency-BodyGyroScopeMagnitude-Mean                    
- Mean Frequency based magnitude of angular velocity in Euclidean Space

#### frequency-BodyGyroScopeMagnitude-StandardDeviation       
- Standard Deviation of magnitude of angular velocity in Euclidean Space in frequency domain

#### frequency-BodyGyroScopeJerkMagnitude-Mean                
- Mean Frequency based magnitude of change in angular velocity in Euclidean Space

#### frequency-BodyGyroScopeJerkMagnitude-StandardDeviation
- Standard Deviatoin of magnitude of change of angular velocity in Euclidean Space in frequency domain


### License

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

