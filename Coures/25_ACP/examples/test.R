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



# ========================

# visualisation de la projetcion du nugaes de points :

df <- iris

head(df)

names <- unique(iris$Species)
names

acp <- prcomp(df[, - 5])

# projection sur PC1 , PC2
plot(acp$x[, 1:2] , col = 1+ 1*(df$Species == names[2]) + 100*(df$Species == names[3]) , pch = 20   )
grid()
legend("topleft", legend = names  , col = c(1, 2 ,100) , pch = 20)



# les composantes pricipales sont céntrées 
acp$x[,1]

# ========== verifications des proprétes de PC

# PC_i <- acp$x[,i]





# mean(PC_i) = 0
# var(PC_i) = lambda_i 
# M-orthogonaux ie sum(PC_i*PC_j) = 0



# qualité de representation des individus :

ind.1 <- acp$x[1,]

qualite <- function(x ,j) {
  q <- x[j]^2 / sum(x^2)
  return(q)  
}


print(qualite(acp$x[1,] , 2))

# choix de q: 


lambada <- acp$sdev^2
lambada.norme <- lambada/sum(lambada)
lambada.norme

?cumsum 
# Returns a vector whose elements are the cumulative sums,

cumsum(lambada.norme)[cumsum(lambada.norme) >= 0.99]



round(mean(lambada))


# ======

lambada[lambada > mean(lambada)]

# 

plot(lambada.norme , type="l" )





