MC’s Data Cleaning Assignment

Introduction:
This document explains the project done by me for “Getting and cleaning Data”, a Coursera Assignment.

Objective:
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. Goal is to present a tidy data that can be used for later analysis.

Instructions given:
 Create one R script called run_analysis.R that does the following.
	1.	Merges the training and the test sets to create one data set.
	2.	Extracts only the measurements on the mean and standard deviation for each measurement.
	3.	Uses descriptive activity names to name the activities in the data set
	4.	Appropriately labels the data set with descriptive variable names.
	5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Tools:
R Studio
GitHub Repository

Data Source:
One of the most exciting areas in all of data science right now is wearable computing - see for examplethis article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
What I did:
Unzipped the data downloaded from the sources mentioned above and saved it under the folder name: UCI HAR Dataset.
Analyzed the objectives of the project and defined the data fields and functions required to clean the source Data set and prepare the Tidy Data.
Details of Data Variables, and functions to get the objectives done are explained in the separate file codeBook.md
Saved the scripts I used to analyze and clean the data under run_analysis.R.
I also attached ReadMe.md and codeBook.md to explain the functioning of run_analysis.R
Also attached the tidydata.txt that contains data cleaned up using my scripts.
