# la fonction eigen: return les valeures propres 
vec <- c(1,0,0 , 0,1,0 , 0,0,1)
m <- matrix(vec , byrow = T , nrow = 3)
m

val_prop <- eigen(m)$values # return un vecteur contient les valuers propres de m
vec_prop <- eigen(m)$vectors # return une matrice contient des vecteures propres associée à chaque valeur propre de m 

print(val_prop) 
print(vec_prop)


# Charger les données
data(iris)

# Effectuer une ACP
acp <- prcomp(iris[, -5], scale = TRUE)
summary(acp)
# Graphique des valeurs propres
plot(acp, type = "l", main = "Valeurs propres")
plot(acp)
# Biplot
plot(acp, type = "biplot", main = "Biplot")

# Scree plot
plot(acp, type = "scree", main = "Scree plot")

# biplot
summary(acp)
biplot(acp)


# plot sur PC1 , PC2 :

plot(acp$x[,1:2] , 
     col = 1+1*(iris$Species == "setosa")+100*(iris$Species == "virginica") , 
     pch=20 )

grid()

legend("topleft" , legend = vec , col= c(1 , 2 , 101) , pch=20)

names <- unique(iris$Species)
vec <- as.factor(names)

vec





