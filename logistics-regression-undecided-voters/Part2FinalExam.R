#Packages needed to be installed 
library(caret)
library(ggplot2)
library(lattice)

#Data not in scientific notation 
options(scipen = 999)

#Retrieve CSV file to R
logistic.df <- read.csv("Logistic.csv")
View(logistic.df)

#Paritioning the data 50% for training and the rest for the validation 
set.seed(1)

train.rows <- sample(rownames(logistic.df),dim(logistic.df)[1]*0.5)
train.data <- logistic.df[train.rows,]
View(train.data)

valid.rows <- setdiff(rownames(logistic.df),train.rows)
valid.data <- logistic.df[valid.rows,]
View(valid.data)

#Creating Logistic regression model 
logit.reg <- glm(Undecided ~ Age + HomeOwner + Female + Married + HouseholdSize + Income + Education + Church, data = train.data, family = "binomial")
summary(logit.reg)
print(logit.reg)

#Confusion Matrix
logit.reg.pred <- predict(logit.reg, newdata = train.data, type = "response")
train.data$pred.glm = ifelse(logit.reg.pred>0.5, "1", "0")
train.data$pred.glm = as.factor(train.data$pred.glm)
str(train.data$pred.glm)

train.data$Undecided = as.factor(train.data$Undecided)
str(train.data$Undecided)

confusionMatrix(train.data$Undecided, train.data$pred.glm)
