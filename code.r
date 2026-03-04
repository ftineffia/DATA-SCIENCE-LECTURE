#filter
library(dplyr)
library(readr)
student_data<- read.csv("C:/Users/MSI/Documents/DEGREE 2ND YEAR 2ND SEM/DS/student_data.csv")
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

#iris
data <- iris
head(data)
tail(data)
str(data) 

summary (data$Sepal.Length)

#quantile
A<-c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
quantile(A)
quantile(A,0.25)
quantile(A,0.75)
quantile(A,0.25)
quantile(A,0.75)

 #exercise
hist(iris$Sepal.Length,
     main = "Histogram of Sepal Length",
     xlab = "Sepal Length",
     col = "lightblue",
     border = "black")

boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length",
        col = c("pink", "lightgreen", "lightblue"))

plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     col = iris$Species)

#outliers
 library(readr)
dfplayers<-read.csv("C:/Users/MSI/Documents/DEGREE 2ND YEAR 2ND SEM/DS/players.csv")
           
median_age <- median(dfplayers$Age, na.rm =TRUE)
dfplayers$Age[dfplayers$Age<18 |
dfplayers$Age>38]<-median_age
View(dfplayers)

data<-c(30,24,26,28,29,28,27,26,32,34,13,15,14,31,29,28,24,25,30,34,35,27,30,34,44,48)
boxplot(data, main = "Boxplot")                    

first_q<-quantile(data,0.25)
third_q<-quantile(data,0.75)

iqr<-IQR(data)
le<-first_q - 1.5 * iqr 
ue<-third_q + 1.5 * iqr 

# Drop the values
data_new<-data
data_new <- data_new[!data_new<le]
data_new <- data_new[!data_new>ue]
data_new

#Replace the values with mean
data_new <- data
avg <- round(mean(data_new)) #for the purpose of example we round up value
data_new[data_new<le] <- avg
data_new[data_new>ue] <- avg
data_new

#Replace the values with le or ue value
data_new <- data
data_new[data_new<le] <- le
data_new[data_new>ue] <- ue
data_new

boxplot(data_new, main = "Boxplot")
                                
