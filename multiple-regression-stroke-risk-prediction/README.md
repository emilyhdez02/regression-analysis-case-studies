# Multiple Regression Model 
Before creating a multiple regression model, the package “car” was installed and loaded. The CSV file “Stroke.csv” was retrieved and added to the R code. 

The Smoker column had categorical observations of Yes and No. To use the column Smoker in the multiple regression model, dummy variables had to be created. The number 1 was used to indicate a smoker (Yes) and 0 to indicate a nonsmoker (No).

In creating the multiple regression model, the response variable was the Risk of stroke, and the explanatory variables were age, systolic blood pressure, and smoking. 

# The Coefficient Interpretation is as follows: 
- Age: When a patient age is older, the risk of a patient having a stroke increases by 1.077.
- Blood Pressure: When a patient’s blood pressure is high, the risk of a patient having a stroke increases by 0.252.
- Smoker: When a patient is a smoker, the risk of having a stroke increases by 8.740.


# Criteria Tests
To understand if this model is appropriate for predicting customer spending, we evaluate the Multiple Regression model using the four criteria: Adjusted R-square, Statistical Tests, Residual Analysis, and Multicollinearity. For a multiple regression model, it needs to pass at least 2 out of 4 criterias to classify the model as ‘good’.  

## Criteria 1: Adjusted R Square 
The model provided an adjusted r-square of .8498. It can be interpreted as 84.98% of the variation in our response variable (Risk), which can be explained by our explanatory variables (Age, Blood Pressure, and Smoker). Since our r-squared is greater than 0.64 (0.8498 > 0.64), our model passes the first criterion.

## Criteria 2: Statistical Tests
Explanatory Variables	Values
Age	.00 < .05
Blood Pressure	.00 < .05
Smoker	.01 < .05

Based on the statistical testing, all four predictor variables are significantly related to the response variable Risk. Each variable is less than our alpha of 0.05, resulting in rejecting the null hypothesis in favor of the alternative. This suggests that each variable contributes to predicting the outcome of the Risk variable. Our model passes criteria two. 

## Criteria 3: Residual Analysis  
This residual vs. predicted plot above illustrates the relationship between the residuals and the predicted values from the multiple regression model. Residuals should be randomly scattered around zero across all predicted values, indicating that the model fits well across the range. The plot doesn't show any distinct patterns or curves (randomness), which supports the assumption of no linearity between the predictors and the responses variable, Risk. Since there is no clear pattern, the model passes the criterion 

## Criteria 4: Multicollinearity 
The VIF test is used to test for multicollinearity. VIF values range between 5 to 10. If, in the model, the VIF value of variables is greater than 5, then there is multicollinearity, and if the VIF is greater than 10, then there is severe multicollinearity. The following code was used for multicollinearity: 
 
Based on the results, all variables passed the test. The output was FALSE for all predictors, meaning none of the variables have a square root of their VIF greater than 5. This indicates that multicollinearity is not present. 

Overall, the multiple regression model passes all four tests, meaning the model is statistically significant and can be used to predict patients’ risk of a stroke. 
	
# Is smoking a significant factor in the risk of a stroke?

Based on the multiple regression model summary, smoking is a significant factor in the risk of a stroke. When conducting statistical tests, the p-value for the gender coefficient is 0.01, which is less than the significance level of 0.05. This means we reject the null hypothesis in favor of the alternative. 

## What is the probability of a stroke over the next 10 years for John Joe, a 68-year-old smoker who has a systolic blood pressure of 175? What action might the physician recommend for this patient?

Currently, John is 68, has a blood pressure of 175, and is a smoker; his probability of experiencing a stroke is 34.27%. If John continues to smoke for the next 10 years, while maintaining his blood pressure the same, the probability of experiencing a stroke is 45.03%. His probability of having a stroke increases by 10.76%. 

His physician might recommend that he stop smoking. If John stops smoking, when he reaches the age of 78 while maintaining a blood pressure of 175, his probability of experiencing a stroke is 36.29%. Which is less than if he continued smoking. His probability decreases from 45.03% to 36.29% (an 8.74% decrease).

# Forward Stepwise Regression
The stepwise regression method was used to reduce the number of predictors. Forward stepwise regression was used, which is an approach that starts from the null model and adds a variable that improves the model the most, one at a time until the stopping criterion is met.

The stepwise regression model suggested the same model created in part a. The stepwise provided the same formula, coefficient interpretation, r-square and results. The stepwise concluded that all variables used in the multiple regression model are statically significant. 

# Model Considerations
In addition to Age, Blood Pressure, and Smoker status, several other factors could be included in the model to better predict the risk of stroke. For instance, cholesterol, if the patient is obese, if the patient is physically active, and the type of diet they have. 

A non-linear model is not suggested since the model was able to pass all criteria, which identifies the model as a “good” model. Based on the residual analysis, the linear model appears to be appropriate for predicting the probability of a stroke. The residual plot showed a random distribution with no patterns, indicating that the linear model captures the relationship between the predictors (Age, Blood Pressure, and Smoker) and the response variable (Risk). Since there is no pattern in the residuals, such as curvature or funnel shapes, there is no strong evidence to suggest that a non-linear model would improve the fit. Therefore, the linear model suffices for this analysis and provides a straightforward solution to the problem.
