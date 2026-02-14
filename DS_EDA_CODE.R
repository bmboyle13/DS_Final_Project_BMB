Sys.info()[["user"]]
mydata <- read.csv("/Users/brandonboyle/Downloads/dec 2024 data.csv")
str(mydata)
summary(mydata)
colMeans(is.na(mydata)) * 100
sapply(mydata, range, na.rm=TRUE)
summary(mydata$Delay)
summary(mydata$Dep_Time)
summary(mydata$Actual_Dep)
num_data <- mydata[, c("Dep_Time", "Actual_Dep", "Delay")]
cor(num_data, use="complete.obs")
table(mydata$Carrier)
prop.table(table(mydata$Carrier))

table(mydata$Cancelled)
prop.table(table(mydata$Cancelled))
boxplot(mydata$Delay)
mydata[mydata$Delay > 300, ]
table(mydata$Origin)
count(mydata$Origin)
table(mydata$Airline.Name)
