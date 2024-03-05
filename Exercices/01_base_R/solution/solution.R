# exercice 01 :

## Q1 :
2^5
# 32 

## Q2 :
stock.prices <- c(23,27,23,21,34)
stock.prices

## Q3 
names(stock.prices) <- c("Mon" ,"Tues" , "Wed" , "Thu" , "Fri")
stock.prices


## Q4 : mean 
moyenne <- mean(stock.prices)
moyenne
# 25.6 

## Q5 :the days that the prices > 23$

over.23 <- stock.prices[stock.prices > 23]
over.23

## Q6 : Use a built-in function to find the day the price was the highest

max <- max(stock.prices)
max

days <- stock.prices[stock.prices == max]
days


