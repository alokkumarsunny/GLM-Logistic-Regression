data = read.table(".//Data//Cont by Age.txt" , head(T))
attach(data)
data
Prop = Using/Total
plot(Age,Prop)

y = cbind(Using, Total-Using)
glmOddvsAgeFactor = glm(y~factor(Age) , family = binomial(link = logit))
exp(glmOddvsAgeFactor$coefficients[1] + glmOddvsAgeFactor$coefficients[2])

g1 = "Group 1 (age < 25)" 
g2 = "Group 2 (age 25 - 29)" 
g3 = "Group 3 (age 30 - 39)" 
g4 = "Group 4 (age 40 - 49)" 
