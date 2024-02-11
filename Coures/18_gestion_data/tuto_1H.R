# tutoriel 1H : R programming 101
#############
# The four quadrants : console , write , env , plot
# how to get help when you need it 
?mean
?ChickWeight

# Objetc and functions 
2+3

a <- 5 
b <- 6 

a+b
sum(a,b)

ages <- c(5,6)
ages 
sum(ages)
log(ages)

names <-c("John" , "James")
names
friends <- data.frame(names , ages)
friends
View(friends)
str(friends) # for the structs of data frame 

friends$names
friends$ages

friends[1,1] 
friends[1,]
friends[,1]

# Built in data stes to practice with 
data() # give a summry of all data in R 
View(starwars)

# Installation du package dplyr
install.packages("dplyr")
# Charger le package dplyr

library(dplyr)

# Charger le jeu de données starwars
data(starwars)

# Visualiser les données
View(starwars)


# Installing and using packages
install.packages("tidyverse")

install.packages("tidyverse")
library(tidyverse)
# pipe operator : %>% ou shift + crlt + M
starwars
View(starwars)
starwars %>% 
  filter(height > 150 & mass < 200) %>%
  mutate(height_in_meters = height/100) %>% 
  select(height_in_meters , mass) %>% 
  arrange(mass) %>% 
  View()
  
starwars %>% 
  filter(height > 150 & mass < 200) %>%
  mutate(height_in_meters = height/100) %>% 
  select(height_in_meters , mass) %>% 
  arrange(mass) %>% 
  plot()


# Création d'une matrice 3x3 avec des valeurs de 1 à 9
matrice <- matrix(1:9, nrow = 3, ncol = 3)

# Affichage de la matrice
print(matrice)


####################################
##################################
#=================== Explore your data ======================

# view thr data structure and types of variables 
View(msleep)
glimpse(msleep) # donner une description de la data : (row , colums , types)

head(msleep)

class(msleep$name)

length(msleep) # give the number of columls in data set 
length(msleep$name) # the number of rows 

names(msleep) # give the all names of data set 

unique(msleep$vore) # renvoie un vecteur sans rédodance

?complete.cases
missing <- !complete.cases(msleep) # donne un vecteur logique de true et false 
missing
msleep[missing ,] # affiche les lignes qui contient NA(missing value)
length(msleep[missing ,]$name)




####################################
##################################
#=================== clean your data ======================

# select variables from a data set 
starwars %>% 
  select(name , height , mass)
# or 
starwars %>% 
  select(1:3)

# selct with the name of colum like :

starwars %>% 
  select(ends_with("color"))

# evrything()

starwars  %>% 
  select(name , height , mass , everything())

# changing varibale name 

starwars %>% 
  rename("Nom" = "name") %>% 
  head()

# changing the type of varaible 
class(starwars$hair_color) # charcter


  

starwars$hair_color <- as.factor(starwars$hair_color)

class(starwars$hair_color) # factor

# une autre methode avce mutate 

starwars %>% 
  mutate(hair_color = as.character(hair_color))

# changing thr order levels i n the factor  

df <- starwars 
df$sex <- as.factor(df$sex)
glimpse(df)
levels(df$sex)

df <- df %>% 
  mutate(sex = factor(sex , levels = c("male" , "famle")))

levels(df$sex)
df



# filter some rows withn condition : 
starwars %>% 
  select(mass , sex) %>% 
  filter( mass < 55 & sex == "male")


# Recode data 
starwars %>% 
  select(sex) %>% 
  mutate( sex = recode(sex , 
                       "male" = "man" ,
                       "female" = "woman" ))



# Dealing with missing data
mean(starwars$height , na.rm=TRUE)


# la fonction drop_na
library(tidyr)
starwars %>% 
  select(sex)




