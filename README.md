#### Introudction

This is submission of course Project Assignment of __Getting and Cleaning Data__ Course in Data Science Specialization. The Github contains  

  1. __run\_analysis.R__ --> Source code used for tidying the original data
  2. __CodeBook.md__ --> Codebook explaining variables of tidied data and steps used to extract dataset.
  3. __Readme.md__ --> This file containing general information.  

The script has not been separated into smaller units to preserve wholesome view of the process.

#### Requirement for Script Execution  
 
1. There should be either zipped file _getdata-projectfiles-UCI HAR Dataset.zip_ or unzipped folder _UCI HAR Dataset_ in the same directory as R source file _run\_analysis.r_. Following are the files, script will use,
    - activity_labels.txt
    - features.txt
    - test/subject_test.txt
    - test/X_test.txt
    - test/y_test.txt
    - train/subject_train.txt
    - train/X_train.txt
    - train/y_train.txt  


2.If zip file is missing, zip file can be downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
The file can be also downloaded from [UCI website](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip).

3. The tidied data will be stored as _tidy\_data.txt_.

4. The code has dependencies on following packages.
    - [dply package](http://cran.rstudio.com/web/packages/dplyr/)
    - [reshape2 package](http://cran.rstudio.com/web/packages/reshape2/)


#### Method of tidying data

1. Read the dataset from test and training sets, feature lables (used for column) and activity label (used for Activity tagging).
2. Using bind_rows of dplyr package test and training sets are merged into three sets (subject set, measurement set, and activity set).
3. Using bind_cols all three sets are combined to one dataset. The dataset are in order Subject, Activity and measurements.
4. The columns are filtered with "mean()" and "std()" and stored in intermediate dataset.
5. Using normal indexing, activity labels are changed to descriptive name.
6. gsub is used to change labels names to make it descriptive and assigned to column.
7. The data is tidied using reshape2 function and stored to file in wide form.

#### License

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
