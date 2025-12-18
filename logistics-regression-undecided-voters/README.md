# Predicting Undecided Voters Turnout

Campaign organizers for both the Republican and Democratic parties are interested in identifying individual undecided voters who would consider voting for their party in an upcoming election. A non-partisan group has collected data on a sample of voters with tracked variables, including whether or not they are undecided regarding their candidate preference, age, whether they own a home, gender, marital status, household size, income, years of education, and whether they attend church.  

Used Undecided as the target (or response) variable and Age, Home Owner, Female, Married, Household Size, Income, Education, and Church as input (predictors) variables. 

The dataset is provided in the Logistic.csv file.
	 
## Partitioning the Data
Before creating a multiple regression model, the packages “caret,” “ggplot2,” and “lattice” were installed and loaded. The outputs were coded to not appear in scientific notation. The CSV file “Logistic.csv” was retrieved and added to the R code. 

Partitioned the data into training and validation. First, the seed was set to 1.  From logistic.df, 50% of the data was for training and 50% for validation. 

The partition resulted in the training data set containing 5000 observations and 9 variables, while the validation data set also had 5000 observations and 9 variables. 

 
## Logistic Regression Model 
In creating the logistic regression model, the response variable was Undecided, and the explanatory variables were Age, Home Owner, Female, Married, Household Size, Income, Education, and Church. 

## Coefficient Interpretation
- Age: When a voter is older, the chance of the voter being undecided decreases by 0.016.
- Home Owner: When the voter is a homeowner, the chance of the voter being undecided increases by 0.555.
- Female: When a voter identifies themselves as female, the chance of the voter being undecided increases by 1.197.
- Married: When a voter is married, the chance of the voter being undecided increases by 0.249.
- Household Size: When the voter has a larger household, the chance of the voter increases by 0.177.
- Income: The higher the voter’s income is, the chance of the voter being undecided decreases by 0.006.
- Education: When a voter has an education, the chance of the voter being undecided increases by .205.
- Church: For voters that attend church, the chance of the voter being undecided decreases by 1.663.

## Which variables increase the chance of a voter being undecided? Which variables decrease the chance of a voter being decided?

- The following variables increase the chance of a voter being undecided:
Homeowner, Female, Married, Household Size, and Education.
- The following variables decrease the chance of a voter being undecided: 
Age, Income, and Church.

## Confusion Matrix

- True Negatives: 2467 cases where the model predicted decided (0), and the actual value was also decided (0). 
- False Positives: 501 cases where the model predicted undecided (1), but the actual value was decided (0). 
- False Negatives: 767 cases where the model predicted decided (0), but the actual values were undecided (1). 
- True Positives: 1265 cases where the model predicted undecided(1), and the actual value was also undecided(1) 
 
The Logistic Regression Model had an overall accuracy of 74.64%. It correctly predicted admission status for 74.64% of the validation data. 
	 
## Sensitivity and Specificity of the Model 
The confusion matrix provided a sensitivity of 0.7664 and a specificity of 0.7163. The model correctly identifies approximately 72% of voters who are undecided. It does a reasonably good job of detecting undecided voters but misses about 28% of them (false negatives). Some voters who are undecided are being misclassified as decided. On the other hand, the model also identifies about 76% of voters who are decided. The model performs slightly better when classifying voters who are not undecided. However, about 24% of decided voters are incorrectly classified as undecided (false positives). Overall, the model is great, but the slight trade-off between sensitivity and specificity means that some improvements can be made to reduce errors in classification

