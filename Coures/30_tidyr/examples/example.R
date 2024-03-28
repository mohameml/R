
comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)

df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)

df

# la fonction gather() :


library(tidyr)

gather(df , Qtrs ,Rev , Qtr1:Qtr4)

library(ggplot2)

ggplot(mpg, aes(cty, hwy)) +
  # to create a scatterplot
  geom_point() 

