# Getting and Cleaning Data Course Project
[JHU Getting and Cleaning Data](https://www.coursera.org/specializations/jhu-data-science) Week 4 assignment

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set.

The data linked to in the [`run_analysis.R`](run_analysis.R) script represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at [the site where the data was obtained](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

##Analysis
Executing the provided `run_analysis.R` script performs the following actions:

1. Checks if the dataset is in working directory and unzipped; then downloads and/or unzip if necessary
2. Loads the activity and feature labels
3. Prepares feature column names from the feature labels, by replacing some characters (removing invalid column name characters) and formatting some of the column names
4. Loads the training feature data while adding the feature column names; thens bind the training subjects and activities to the feature data
5. Loads the testing feature data while adding the feature column names; thens bind the testing subjects and activities to the feature data
6. Merges the training and testing data; then adds the activity descriptions; and selects only the subject, activity, and the measurements on the mean and standard deviation for each feature
7. Grouping by each subject and activity, calculates the average for each feature measurement column
8. And finally, the output is a tidy data set of these averages by subject and activity in the file [`tidy.txt`](tidy.txt)

##Dependency
You will need the [`dplry`](https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html) package to run the script.

##Code book
Also included in this repo is a code book that describes the variables, the data, and all transformations and work that I performed to clean up the data called [`CodeBook.md`](CodeBook.md).
