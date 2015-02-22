##Description of data in `smartphone_tidy_data.txt`
### Introduction
Data in the table `smartphone_tidy_data.txt` are tidied data from the Human Activity Recognition Using Smartphones Dataset Version 1.0.

The description of the study and the dataset are available at the following urls:  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip

Tidying included selecting only the mean and standard deviation measurements from the original data, renaming them, 
then summarizing the measurements as means grouped by subject and activity.

### Data
*subject* is an integer code indicating the person on which the observations were made   
*activity* is a string describing the activity being performed during the observation. The variable can take one of six values  
		walking  
		walkingupstairs  
        walkingdownstairs  
		sitting  
        standing  
		laying

The remaining data are measurements.  They are named based on whether the original data were reported as mean or standard deviation, came from the accelerometer or gyroscope, and were the time-interval data (_in_t_domain) or its transform to frequency (_in_f_domain).  Further notation is included for whether the acceleration was resolved as being from the subject's motion (body) or gravity, and whether the acceleration was reported as a jerk and/or magnitude.  Lastly, acceleration was measured as axial components along x, y, and z.
	  
mean\_of\_body\_acceleration\_x\_component\_in\_t\_domain  
mean\_of\_body\_acceleration\_y\_component\_in\_t\_domain  
mean\_of\_body\_acceleration\_z\_component\_in\_t\_domain  
sd\_of\_body\_acceleration\_x\_component\_in\_t\_domain  
sd\_of\_body\_acceleration\_y\_component\_in\_t\_domain  
sd\_of\_body\_acceleration\_z\_component\_in\_t\_domain  
mean\_of\_gravity\_acceleration\_x\_component\_in\_t\_domain  
mean\_of\_gravity\_acceleration\_y\_component\_in\_t\_domain  
mean\_of\_gravity\_acceleration\_z\_component\_in\_t\_domain  
sd\_of\_gravity\_acceleration\_x\_component\_in\_t\_domain  
sd\_of\_gravity\_acceleration\_y\_component\_in\_t\_domain  
sd\_of\_gravity\_acceleration\_z\_component\_in\_t\_domain  
mean\_of\_body\_acceleration\_jerk\_x\_component\_in\_t\_domain  
mean\_of\_body\_acceleration\_jerk\_y\_component\_in\_t\_domain  
mean\_of\_body\_acceleration\_jerk\_z\_component\_in\_t\_domain  
sd\_of\_body\_acceleration\_jerk\_x\_component\_in\_t\_domain  
sd\_of\_body\_acceleration\_jerk\_y\_component\_in\_t\_domain  
sd\_of\_body\_acceleration\_jerk\_z\_component\_in\_t\_domain  
mean\_of\_body\_gyro\_x\_component\_in\_t\_domain  
mean\_of\_body\_gyro\_y\_component\_in\_t\_domain  
mean\_of\_body\_gyro\_z\_component\_in\_t\_domain  
sd\_of\_body\_gyro\_x\_component\_in\_t\_domain  
sd\_of\_body\_gyro\_y\_component\_in\_t\_domain  
sd\_of\_body\_gyro\_z\_component\_in\_t\_domain  
mean\_of\_body\_gyro\_jerk\_x\_component\_in\_t\_domain  
mean\_of\_body\_gyro\_jerk\_y\_component\_in\_t\_domain  
mean\_of\_body\_gyro\_jerk\_z\_component\_in\_t\_domain  
sd\_of\_body\_gyro\_jerk\_x\_component\_in\_t\_domain  
sd\_of\_body\_gyro\_jerk\_y\_component\_in\_t\_domain  
sd\_of\_body\_gyro\_jerk\_z\_component\_in\_t\_domain  
mean\_of\_body\_acceleration\_magnitude\_in\_t\_domain  
sd\_of\_body\_acceleration\_magnitude\_in\_t\_domain  
mean\_of\_gravity\_acceleration\_magnitude\_in\_t\_domain  
sd\_of\_gravity\_acceleration\_magnitude\_in\_t\_domain  
mean\_of\_body\_acceleration\_jerk\_magnitude\_in\_t\_domain  
sd\_of\_body\_acceleration\_jerk\_magnitude\_in\_t\_domain  
mean\_of\_body\_gyro\_magnitude\_in\_t\_domain  
sd\_of\_body\_gyro\_magnitude\_in\_t\_domain  
mean\_of\_body\_gyro\_jerk\_magnitude\_in\_t\_domain  
sd\_of\_body\_gyro\_jerk\_magnitude\_in\_t\_domain  
mean\_of\_body\_acceleration\_x\_component\_in\_f\_domain  
mean\_of\_body\_acceleration\_y\_component\_in\_f\_domain  
mean\_of\_body\_acceleration\_z\_component\_in\_f\_domain  
sd\_of\_body\_acceleration\_x\_component\_in\_f\_domain  
sd\_of\_body\_acceleration\_y\_component\_in\_f\_domain  
sd\_of\_body\_acceleration\_z\_component\_in\_f\_domain  
mean\_of\_body\_acceleration\_jerk\_x\_component\_in\_f\_domain  
mean\_of\_body\_acceleration\_jerk\_y\_component\_in\_f\_domain  
mean\_of\_body\_acceleration\_jerk\_z\_component\_in\_f\_domain  
sd\_of\_body\_acceleration\_jerk\_x\_component\_in\_f\_domain  
sd\_of\_body\_acceleration\_jerk\_y\_component\_in\_f\_domain  
sd\_of\_body\_acceleration\_jerk\_z\_component\_in\_f\_domain  
mean\_of\_body\_gyro\_x\_component\_in\_f\_domain  
mean\_of\_body\_gyro\_y\_component\_in\_f\_domain  
mean\_of\_body\_gyro\_z\_component\_in\_f\_domain  
sd\_of\_body\_gyro\_x\_component\_in\_f\_domain  
sd\_of\_body\_gyro\_y\_component\_in\_f\_domain  
sd\_of\_body\_gyro\_z\_component\_in\_f\_domain  
mean\_of\_body\_acceleration\_magnitude\_in\_f\_domain  
sd\_of\_body\_acceleration\_magnitude\_in\_f\_domain  
mean\_of\_body\_acceleration\_jerk\_magnitude\_in\_f\_domain  
sd\_of\_body\_acceleration\_jerk\_magnitude\_in\_f\_domain  
mean\_of\_body\_gyro\_magnitude\_in\_f\_domain  
sd\_of\_body\_gyro\_magnitude\_in\_f\_domain  
mean\_of\_body\_gyro\_jerk\_magnitude\_in\_f\_domain  
sd\_of\_body\_gyro\_jerk\_magnitude\_in\_f\_domain  *


###References
Original data are reported and discussed in the following publication

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
