# dataframe :
state.x77
head(state.x77)
View(state.x77)
state.x77
tail(state.x77)

summary(state.x77)
str(state.x77)
data()

donnees_avec_noms_ligne <- data.frame(
  Nom = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 30, 22, 35),
  Score = c(92, 85, 78, 95),
  row.names = c("Obs1", "Obs2", "Obs3", "Obs4")
)

View(donnees_avec_noms_ligne)


days <- c('Mon' ,'Tue' , 'Wed'  ,'Thur' , 'Fri')
temps <- c(22.2 , 21 , 23 , 24.3 , 25)
rain <- c(T , T , F , F , T)

df <- data.frame(days,temps , rain)
df

head(women)
str(women)
summary(women)



# df : 

days <- c('Mon' ,'Tue' , 'Wed'  ,'Thur' , 'Fri')
temps <- c(22.2 , 21 , 23 , 24.3 , 25)
rain <- c(T , T , F , F , T)

df <- data.frame(days,temps , rain)
df

# return : un vecteur 
df$days

# return : dataframe 
df['days']
class(df['days'])


# subset :
View(df)
df.sub <- subset(df , rain == T)
str(df)
colnames(df)
rownames(df)


df.temp.over.23 <- subset(df , temps > 24)
df.temp.over.23


# sort : data.frame 

# une fonction order 


# exemple 1 :

temp.sort <- order(df$temps)
temp.sort
df[temp.sort , ]

# croissnate : 
df[order(df$temps) , ]
# decroissnate :
df[order(-df$temps) , ]

# 



df
df.c <- cbind(df , taille = c(12 , 13 , 24 , 11 , 15))

df.n <- rbind(df.c , list("Mon" , 25 , T , 11))
df.n

df.n[order(df.n$temps , -df.n$taille) , ]

df
df$temps
df["temps"]
df[, "temps"]
df[ , c("temps" , "rain")]




# Exemple avec un vecteur
vecteur <- c(10, 5, 8, 3, 7)
indices_ordre <- order(vecteur)
print(indices_ordre)
vecteur_ordonne <- vecteur[indices_ordre]



