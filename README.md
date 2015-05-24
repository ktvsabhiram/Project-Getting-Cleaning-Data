# Getting-Cleaning-Data Project Read me

This is the readme file for Getting & cleaning data project.
The code is written to filter the data and dervie the required parameters as outlined in project instructions.

Pre-requisite to or before executing the code:

1. This code is developed in Rstudio Version 0.98.1103 

2. The script assumes that the required data is already downloaded and available. There is no exclusive check coded to ensure that the data exists or not.

3. The folders containing the data downloaded for the project should not be renamed.
 
4. Place the run_analysis.R script and the folder having data to processed in your working directory 


Below procedure indicate how the code works:

1: Reads the training data set with the subject, activity & measurements taken. These are binded to train_Set data frame

2: Reads the test data set with the subject, activity & measurements taken. These are binded to test_Set data frame

3: Merges training & test data set into single set "Samsung_Data"

4: Adds column names for subject ID, Activity & each measurement. With this, the Samsung_Data becomes the raw combined data set with column names as required by step#1 of project instruction (Step4 of instruction)

5: Creates a filter to extract data for variables containing "mean" & "std" keywords and then extracts data frame "Samsung_Data_Mean_Std" as per this filter (Step#2 of instructions)

6: Adds activity description column to represent each activity ID and re-orgranizes data frame to have activity ID & activity description in adjacent columns (step#3 of instruction)

7: This is the key logic to calculate the average of variables extracted in #5 above for each activity & each subject. 

8: Writes a table of tidy data containing the subject ID, Activity Description & average of variables extracted. This is 68 variable data frame containing 180 observations (30 subject IDs X 6 activities per subject). The first two variables in this tidy set correspond to subject ID & activity description. 

