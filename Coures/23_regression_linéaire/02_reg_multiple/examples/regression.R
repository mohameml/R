# cour régression linéaire avce la commnade lm : 

data()
library(readr)
setwd("/home/mohameml/github/02_Info/01_programmation/06_R/Coures/12_regression_linéaire/examples")

data <- read.csv("PISA2018subset.csv")

View(data)
getwd()

head(data)

# on sélectionne les étudients en fr : 
dataFR <- subset(data , country == "FRA")
head(dataFR)

# Aprés  on creé  un objet de régression en R avce lm pour étudier l'effet de math sur read :


FRmathread <- lm(dataFR$math ~ dataFR$read , data=dataFR)
FRmathread
plot(dataFR$read , dataFR$math , 
     main="Régression linéaire" , 
     pch=16 , 
     xlab="read",
     ylab="math"
)

abline(FRmathread , col="green")

summary(FRmathread)

plot(dataFR$read , dataFR$math)

lines(dataFR$read , fitted.values(FRmathread))


## les différentes des attributes de modéle : 

coefficients(FRmathread)

residuals(FRmathread)

fitted.values(FRmathread)

plot(dataFR$read , fitted.values(FRmathread))


plot(FRmathread)


# modéle de régression linéaire multiplle : 

FR_math_read_sc <- lm(dataFR$math ~dataFR$read , data = dataFR)
summary(FR_math_read_sc)




# regression 

data()
head(iris)
tail(iris)

x <- 1:10
y <- 2*x
a <- c(15 , 3 , 2.5 , 5 , 3.8 , 1.2 , 3.1 , 4.1 , 3.2 , 1.5 )
z <- x+ 2*a

df <- data.frame(x,y,z)
df

m1 <- lm(y~ x , data =df)
summary(m1)

m2 <- lm(z~x+a-1 , data =df)
summary(m2)


m3 <- lm(z~x+a+x*a-1 , data = df)
summary(m3)

m4 <- lm(z~x+a+- 1+x:a , data = df)
summary(m4)



### 

plot(mpg~wt , data = mtcars , pch=20)






