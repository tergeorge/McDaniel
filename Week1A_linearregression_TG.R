# Assignment for week1 A: Data Mining 

# Create a vector for years_experienced and salary 
years_experienced = c(1.1,1.3, 1.5, 2.0, 2.2, 2.9, 3.0, 3.2, 3.2, 3.7)
salary = c(39343, 46205, 37731, 43525, 39891, 56642, 60150, 54445, 64445, 57189)

# Create a data frame with years_experienced and salary
trainingset = data.frame(years_experienced, salary)
#plot a scatter plot to see the relationship between salary and years of experience
scatter.smooth(years_experienced, salary, main='Years experienced vs salary')
library(caTools)
# Get the linear regression model
lm.r= lm(formula = salary ~ years_experienced,
         data = trainingset)
summary(lm.r) # Get summary of regression model

# Check if residuals follow homoscedasticity
#define residuals
res <- resid(lm.r)

#produce residual vs. fitted plot
plot(fitted(lm.r), res)

#add a horizontal line at 0 
abline(0,0)
