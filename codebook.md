Code Book for getting and cleaning data


Data Source
This dataset is derived from the “Human Activity Recognition Using SmartPhones Data Set” which was available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Feature Selection
README.txt file gives detailed information on the dataset.  The files that are used to load data are listed as follows:
	•	test/subject_test.txt
	•	test/X_test.txt
	•	test/y_test.txt
	•	train/subject_train.txt
	•	train/X_train.txt
	•	train/y_train.txt

	✓	Reading Data from the targeted files
	•	  Values of variable Activity consist of data from Y_train.txt and Y_test.txt
	•	  Values of variable Subject consist of data from subject_train.txt and subject_test.txt
	•	  Values of variable Features consist of data from X_train.txt and X_test.txt
	•	  Names of variable Features come from features.txt
	•	  Levels of variable Activity come from activity_labels.txt

Used Activity, Subject and Features as part of the descriptive variable names for data in data frame.


	✓	Read data from the files into the variables:
	•	Used dataActivityTest and dataActivityTrain to read and save the Activity files
	•	Used dataSubjectTest and dataSubjectTrain to read and save the Subject files.
	•	Used dataFeaturesTest and dataFeaturesTrain to read and save the Features files.

	✓	For looking the properties of the variables, used str function.


	✓	Merge the training and test sets to create one data set:
	•	First concatenate the data tables by rows using rbind function
	•	Set names to variables
	•	Merge columns to get the data frame Data for all data.

	✓	Extracts only the measurements on the mean and standard deviation for each measurement
	•	Subset name of features by measurements on the mean and standard deviation.
	•	Subset the data frame Data by selected names of Features
	•	Check the structures of the data frame Data

	✓	Uses descriptive activity names to name the activities in the data set
	•	Read descriptive activity names from activity_labels.txt
	•	Factorize variable activity in the data frame data using descriptive activity names.

	✓	Appropriately labels the data set with descriptive variable names
	•	Prefix t is replaced by time
	•	Acc is replaced by Accelerometer
	•	Gyro is replace by Gyroscope
	•	prefix f is replaced by frequency
	•	Mag is replaced by Magnitude
	•	BodyBody is replaced by Body

	✓	Created the second, independent tidy data set and output it to tidydata.txt

