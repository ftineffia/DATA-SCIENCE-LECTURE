library(dplyr)
library(readr)
student_data<- read.csv("C:/Users/MSI/Documents/DEGREE 2ND YEAR 2ND SEM/DS/LECTURE 8/.RData")
Student_fail<- student_data %>% filter(final_exam_mark< 40)
