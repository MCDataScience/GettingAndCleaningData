{\rtf1\ansi\ansicpg1252\cocoartf1404\cocoasubrtf470
{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red245\green245\blue245;\red249\green249\blue249;
\red32\green94\blue198;\red0\green0\blue233;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid1\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl840\partightenfactor0

\f0\b\fs72 \cf2 \cb3 \expnd0\expndtw0\kerning0
MC\'92s Data Cleaning Assignment
\b0 \
\pard\pardeftab720\sl320\partightenfactor0

\fs28 \cf2 \cb1 \uc0\u8232 \cb3 \
\pard\pardeftab720\sl560\partightenfactor0

\b\fs48 \cf2 Introduction:
\b0 \
\pard\pardeftab720\sl320\partightenfactor0

\fs28 \cf2 This document explains the project done by me for \'93Getting and cleaning Data\'94, a Coursera Assignment.\
\cb1 \uc0\u8232 \cb3 \
\pard\pardeftab720\sl560\partightenfactor0

\b\fs48 \cf2 Objective:
\b0 \
\pard\pardeftab720\sl320\partightenfactor0

\fs28 \cf2 \cb4 The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. Goal is to present a tidy data that can be used for later analysis.\
\pard\pardeftab720\sl320\partightenfactor0
\cf2 \cb1 \uc0\u8232 \cb4 \
\pard\pardeftab720\sl560\partightenfactor0

\b\fs48 \cf2 Instructions given:
\b0 \
\pard\pardeftab720\sl320\sa400\partightenfactor0

\fs28 \cf2  Create one R script called run_analysis.R that does the following.\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl320\sa200\partightenfactor0
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	1.	}\expnd0\expndtw0\kerning0
Merges the training and the test sets to create one data set.\cb1 \
\ls1\ilvl0\cb4 \kerning1\expnd0\expndtw0 {\listtext	2.	}\expnd0\expndtw0\kerning0
Extracts only the measurements on the mean and standard deviation for each measurement.\cb1 \
\ls1\ilvl0\cb4 \kerning1\expnd0\expndtw0 {\listtext	3.	}\expnd0\expndtw0\kerning0
Uses descriptive activity names to name the activities in the data set\cb1 \
\ls1\ilvl0\cb4 \kerning1\expnd0\expndtw0 {\listtext	4.	}\expnd0\expndtw0\kerning0
Appropriately labels the data set with descriptive variable names.\cb1 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl320\partightenfactor0
\ls1\ilvl0\cf2 \cb4 \kerning1\expnd0\expndtw0 {\listtext	5.	}\expnd0\expndtw0\kerning0
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.\
\pard\pardeftab720\sl320\partightenfactor0
\cf2 \cb1 \uc0\u8232 \
\pard\pardeftab720\sl560\partightenfactor0

\b\fs48 \cf2 Tools:
\b0 \
\pard\pardeftab720\sl320\partightenfactor0

\fs28 \cf2 R Studio\
GitHub Repository\
\uc0\u8232 \
\pard\pardeftab720\sl560\partightenfactor0

\b\fs48 \cf2 Data Source:
\b0 \
\pard\pardeftab720\sl320\sa400\partightenfactor0

\fs28 \cf2 \cb4 One of the most exciting areas in all of data science right now is wearable computing - see for example{\field{\*\fldinst{HYPERLINK "http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/"}}{\fldrslt \cf5 \ul \ulc5 this article }}. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:\
\pard\pardeftab720\sl320\sa400\partightenfactor0
{\field{\*\fldinst{HYPERLINK "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"}}{\fldrslt \cf6 \ul \ulc6 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones}}\cf5 \
\pard\pardeftab720\sl320\sa400\partightenfactor0
\cf2 The data for the project:\
\pard\pardeftab720\sl320\sa400\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"}}{\fldrslt \cf6 \ul \ulc6 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip}}\cf5 \
\pard\pardeftab720\sl560\sa400\partightenfactor0

\b\fs48 \cf0 What I did:
\b0 \
\pard\pardeftab720\sl320\sa400\partightenfactor0

\fs28 \cf0 Unzipped the data downloaded from the sources mentioned above and saved it under the folder name: UCI HAR Dataset.\
Analyzed the objectives of the project and defined the data fields and functions required to clean the source Data set and prepare the Tidy Data.\
Details of Data Variables, and functions to get the objectives done are explained in the separate file codeBook.md\
Saved the scripts I used to analyze and clean the data under run_analysis.R.\
I also attached ReadMe.md and codeBook.md to explain the functioning of run_analysis.R\
Also attached the tidydata.txt that contains data cleaned up using my scripts.\
\pard\pardeftab720\sl320\sa400\partightenfactor0
\cf5 \cb1 \uc0\u8232 \cb4 \
\pard\pardeftab720\sl320\sa400\partightenfactor0
\cf2 \cb1 \uc0\u8232 \cb4 \
\pard\pardeftab720\sl320\partightenfactor0
\cf2 \cb1 \uc0\u8232 \
}