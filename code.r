#filter
library(dplyr)
library(readr)
student_data<- read.csv("C:/Users/MSI/Documents/DEGREE 2ND YEAR 2ND SEM/DS/LECTURE 8/.RData")
Student_fail<- student_data %>% filter(final_exam_mark< 40)
View(Student_fail)

#arrange
mydata<- student_data%>% filter(Final_Exam > 40) %>% arrange(final_exam_mark) 
View(mydata)
mydata1<- student_data %>% filter(final_exam_mark > 40) %>% arrange(desc(final_exam_mark)) 
View(mydata1)

#select
mydata <- student_data%>% select(student_id,coursework_mark, final_exam_mark) 
View(mydata)
glimpse()

#mutate
mydata = student_data%>% mutate(Total_Mark=(coursework_mark + final_exam_mark/200*100)
View(mydata)

data <- iris
                                
