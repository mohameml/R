# la fonction eigen: return les valeures propres 
vec <- c(1,0,0 , 0,1,0 , 0,0,1)
m <- matrix(vec , byrow = T , nrow = 3)
m

val_prop <- eigen(m)$values # return un vecteur contient les valuers propres de m
vec_prop <- eigen(m)$vectors # return une matrice contient des vecteures propres associée à chaque valeur propre de m 

print(val_prop) 
print(vec_prop)


