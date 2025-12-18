#Packages needed to install
library(car)
options(scipen=999)
stroke.df <- read.csv("Stroke.csv", header = TRUE)
View(stroke.df)

#Creating Dummies 1 = smoker, 0 indicating a nonsmoker 
stroke.df$smoker <- ifelse(stroke.df$Smoker == 'Yes', 1, 0) 

#Creating multiple regression model 
multi.reg <- lm(Risk ~ Age + Blood.Pressure + smoker, data = stroke.df)
summary(multi.reg)

#Predicted values for Y
pred_y_mr <- fitted(multi.reg)
#standardized residual 
residual_mr <- rstandard(multi.reg)
#Plot sr_mr vs. pred_y_mr
plot(pred_y_mr, residual_mr, main = "Residual vs. Predicted Plot", xlab = "Predicted", ylab = "Residual")

#Multicollinearity 
vif(multi.reg)
sqrt(vif(multi.reg))>5

#Pobability of stroke
coeff <- coef(multi.reg)

# Values for John Joe
Age <- 78
Blood_Pressure <- 175
Smoker <- 0

# Calculate predicted Risk
Risk <- coeff["(Intercept)"] + coeff["Age"] * Age + coeff["Blood.Pressure"] * Blood_Pressure + coeff["smoker"] * Smoker
print(Risk)

#Forward stepwise regression 
reg.step.for <- step(multi.reg, direction = "forward", data = stroke.df, trace = TRUE)
summary(reg.step.for)
print(reg.step.for)

