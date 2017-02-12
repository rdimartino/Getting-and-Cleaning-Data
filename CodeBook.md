#Code book
This code book describes the tidy dataset, [`tidy.txt`](tidy.txt), that is the output of [`run_analysis.R`](run_analysis.R).  The tidy data summarizes data collected from the accelerometers from the Samsung Galaxy S smartphone of 30 volunteers performing six activities.

##Identifiers

1. `subject` - The ID of volunteer subject; values range from 1 to 30
2. `activity` - The activity being performed by the `subject` during which the measurements were taken; one of six values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

##Measurements
All features are averages of all measurements grouped by the `subject` and the `activity`

###Body acceleration
3-axial time series accelerometer data due to body movement

1. `tBodyAcc_Mean_X` - Mean of the X direction
2. `tBodyAcc_Mean_Y` - Mean of the Y direction
3. `tBodyAcc_Mean_Z` - Mean of the Z direction
4. `tBodyAcc_StDev_X` - Standard deviation of the X direction
5. `tBodyAcc_StDev_Y` - Standard deviation of the X direction
6. `tBodyAcc_StDev_Z` - Standard deviation of the X direction

###Gravitational acceleration
3-axial time series accelerometer data due to gravity

7. `tGravityAcc_Mean_X` - Mean of the X direction
8. `tGravityAcc_Mean_Y` - Mean of the Y direction
9. `tGravityAcc_Mean_Z` - Mean of the Z direction
10. `tGravityAcc_StDev_X` - Standard deviation of the X direction
11. `tGravityAcc_StDev_Y` - Standard deviation of the Y direction
12. `tGravityAcc_StDev_Z` - Standard deviation of the Z direction

###Linear body jerk
Linear body acceleration derived in time to obtain Jerk signals

13. `tBodyAccJerk_Mean_X` - Mean of the X direction
14. `tBodyAccJerk_Mean_Y` - Mean of the Y direction
15. `tBodyAccJerk_Mean_Z` - Mean of the Z direction
16. `tBodyAccJerk_StDev_X` - Standard deviation of the X direction
17. `tBodyAccJerk_StDev_Y` - Standard deviation of the Y direction
18. `tBodyAccJerk_StDev_Z` - Standard deviation of the Z direction

###Body rotation
3-axial time seriers gyropscope data

19. `tBodyGyro_Mean_X` - Mean of the X direction
20. `tBodyGyro_Mean_Y` - Mean of the Y direction
21. `tBodyGyro_Mean_Z` - Mean of the Z direction
22. `tBodyGyro_StDev_X` - Standard deviation of the X direction
23. `tBodyGyro_StDev_Y` - Standard deviation of the Y direction
24. `tBodyGyro_StDev_Z` - Standard deviation of the Z direction

###Rotational body jerk
Gyroscopic body acceleration derived in time to obtain Jerk signals

25. `tBodyGyroJerk_Mean_X` - Mean of the X direction
26. `tBodyGyroJerk_Mean_Y` - Mean of the Y direction
27. `tBodyGyroJerk_Mean_Z` - Mean of the Z direction
28. `tBodyGyroJerk_StDev_X` - Standard deviation of the X direction
29. `tBodyGyroJerk_StDev_Y` - Standard deviation of the Y direction
30. `tBodyGyroJerk_StDev_Z` - Standard deviation of the Z direction

###Magnitudes
Magnitudes of the three-dimensional signals calculated using the Euclidean norm

31. `tBodyAccMag_Mean` - Mean of the linear body acceleration
32. `tBodyAccMag_StDev` - Standard deviation of the linear body acceleration
33. `tGravityAccMag_Mean` - Mean of the linear gravitational acceleration
34. `tGravityAccMag_StDev` - Standard deviation of the linear gravitational acceleration
35. `tBodyAccJerkMag_Mean` - Mean of the linear body jerk
36. `tBodyAccJerkMag_StDev` - Standard deviation of the linear body jerk
37. `tBodyGyroMag_Mean` - Mean of the rotational acceleration
38. `tBodyGyroMag_StDev` - Standard deviation of the rotational acceleration
39. `tBodyGyroJerkMag_Mean` - Mean of the rotational jerk
40. `tBodyGyroJerkMag_StDev` - Standard deviation of the rotational jerk

###FFT
Fast Fourier Transform (FFT) was applied to each of the above signals (except gravitional measurements). Note the `f` for FFt replacing the `t` for time-series

41. `fBodyAcc_Mean_X`
42. `fBodyAcc_Mean_Y`
43. `fBodyAcc_Mean_Z`
44. `fBodyAcc_StDev_X`
45. `fBodyAcc_StDev_Y`
46. `fBodyAcc_StDev_Z`
47. `fBodyAccJerk_Mean_X`
48. `fBodyAccJerk_Mean_Y`
49. `fBodyAccJerk_Mean_Z`
50. `fBodyAccJerk_StDev_X`
51. `fBodyAccJerk_StDev_Y`
52. `fBodyAccJerk_StDev_Z`
53. `fBodyGyro_Mean_X`
54. `fBodyGyro_Mean_Y`
55. `fBodyGyro_Mean_Z`
56. `fBodyGyro_StDev_X`
57. `fBodyGyro_StDev_Y`
58. `fBodyGyro_StDev_Z`
59. `fBodyAccMag_Mean`
60. `fBodyAccMag_StDev`
61. `fBodyBodyAccJerkMag_Mean`
62. `fBodyBodyAccJerkMag_StDev`
63. `fBodyBodyGyroMag_Mean`
64. `fBodyBodyGyroMag_StDev`
65. `fBodyBodyGyroJerkMag_Mean`
66. `fBodyBodyGyroJerkMag_StDev`

