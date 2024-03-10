# exercice sur data-frame in R : 

# Q1 : 
age <- c(22 , 25 , 26)
Weight <- c(150 , 165 , 120)
Sex <-c('M' ,'M' , 'F')

df <- data.frame(
  age=age ,
  weight=Weight,
  sex=Sex
)

row.names(df) <-c('Sam', 'Frank' , 'Amy')

df


## Q2 : mtcars 

is.data.frame(mtcars)

## Q3 : 
mat <- matrix(1:25,nrow = 5)
mat
df <- as.data.frame(mat)
df


## Q4 : 

df <- mtcars
View(df)
str(df)

## Q5 :

head(df)

## Q6 : 
mean(df$mpg)

## Q7 : 

subset(df , cyl==6)

## Q8 : 

df[, c("am" , "gear" ,"carb")]

df$performance <- df$hp/df$wt
head(df)
View(df)


## Q9 :

?round()
df$performance <-  round(df$performance , 2)
df

## Q10 :  What is the average mpg for cars that have more than 100 hp AND a wt value of more than 2.5.
sub <- subset(df , hp >= 100 & wt >= 2.5)
sub
mean(sub$mpg)

## Q11 : 
# What is the mpg of the Hornet Sportabout
df["Hornet Sportabout" , "mpg"] # 18.7 




