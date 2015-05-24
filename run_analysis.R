#R source code for Getting & cleaning data project

#Step 1: Bind Training Data Set with Subject, Activity & Measurement
train_X <- read.table("./UCI HAR Dataset/train/X_train.txt", sep="")
train_Y <- read.table("./UCI HAR Dataset/train/y_train.txt", sep="")
train_Sub <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep="")

train_Set <- cbind(train_Sub,train_Y,train_X)

#Step 2: Bind Test Data Set with Subject, Activity & Measurement
test_X <- read.table("./UCI HAR Dataset/test/X_test.txt", sep="")
test_Y <- read.table("./UCI HAR Dataset/test/y_test.txt", sep="")
test_Sub <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep="")

test_Set <- cbind(test_Sub,test_Y,test_X)

#Step3: Create a parent data set combining train & test
Samsung_Data <- rbind(train_Set,test_Set)

#Step4: Add column names for subject, activity & measurements
features <- read.table("./UCI HAR Dataset/features.txt", sep="")
names(Samsung_Data) <-c("Subject","Activity",as.character(features[,2]))

#Step5: Subset or filter mean & Std variables from Samsung_Data
FilterColIndex <- grep("Subject|Activity|mean\\(\\)|std\\(\\)", names(Samsung_Data), value = FALSE)
Samsung_Data_Mean_Std <- Samsung_Data[,FilterColIndex]

#Step6a: Assign Description to Activity column
activity_labels=c(WALKING=1,WALKING_UPSTAIRS=2,WALKING_DOWNSTAIRS=3,SITTING=4,STANDING=5,LAYING=6)
match_activity = match(Samsung_Data_Mean_Std$Activity,activity_labels)
Samsung_Data_Mean_Std$Activity_Desc = ifelse(is.na(match_activity),Samsung_Data_Mean_Std$Activity,names(activity_labels)[match_activity])

#Step6b: Re-Organize columns to have activity description next to activity
Index_Activity_Desc = grep("Activity_Desc", colnames(Samsung_Data_Mean_Std))
Total_Col <- ncol(Samsung_Data_Mean_Std) - 1
Samsung_Data_Mean_Std <- Samsung_Data_Mean_Std[,c(1:2,Index_Activity_Desc,3:Total_Col)]

#Step7: Calculate average of each activity for each subject
count = length(unique(Samsung_Data_Mean_Std$Subject))
act_count = length(unique(Samsung_Data_Mean_Std$Activity))
col_len = ncol(Samsung_Data_Mean_Std)-3
New_Avg_Data = NULL
for (i in 1:count){
     subject_id = rep(c(i),each=6) #Since there are 6 activities
     means = NULL
     meansdf = data.frame(row.names=1:6)
     temp.df = NULL
     temp.df = subset(Samsung_Data_Mean_Std,Samsung_Data_Mean_Std$Subject==i)

     for(j in 1:col_len){
         #calculate means of each activity for a given variable
         means <- tapply(temp.df[,j+3],temp.df$Activity_Desc,mean)
         act_names_dummy <- data.frame(c(names(means)))
         names(act_names_dummy) <- c("Activity_Desc")
         means <- data.frame(means)
         names(means) <- paste(colnames(temp.df)[[j+3]],"Avg",sep="-")
         meansdf <- cbind(meansdf,means)
     }
   meansdf <- cbind(subject_id,act_names_dummy,meansdf)
   New_Avg_Data = rbind(New_Avg_Data,meansdf)  
}

#Step8: Write or output tiday data set having averages of mean & SD for each activity & subject
write.table(New_Avg_Data, file="Samsung_Data_Avg_Mean_SD.txt", row.name=FALSE)

