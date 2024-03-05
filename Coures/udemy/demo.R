# type 
a <- 2
a
a <- "sidi"

i <- NaN
i
type(i)
class(i)
a

# conversion 

as.logical("T")

#

concatenation <- paste("sidi", "bonjour" , sep =" ") # sep pour la séparation  

#    
# Création d'un vecteur avec des valeurs manquantes
mon_vecteur <- c(1, 2, NA, 4, NA, 6)

# Utilisation de is.na pour vérifier les valeurs manquantes
resultat <- is.na(mon_vecteur)

print(resultat)

nb_valeurs_manquantes <- sum(is.na(mon_vecteur))

print(nb_valeurs_manquantes)

mon_vecteur <- c(1, 2, NA, 4, NA, 6)

# Utilisation de sum() avec na.rm = TRUE pour exclure les valeurs manquantes
resultat_sans_na <- sum(mon_vecteur)

print(resultat_sans_na)


letters[1:4]
LETTERS

v <- c(1,2,3)
v
append(v ,4)
v
coprint("First line")
print("Seconde line")

# ceci est un commentaire 

e = 1


type(e)
typeof(e)

a <- T 
a
F

"hello"
'hello'
a <- 'hello'
b <- "hello" # le bon style 
class(a) # return la classe de a 
class(1) # numeric
class(T) # logical 


# vector 

v <- c(T , F , T , F)
v

v2 <- c(T , 20 , 40)
v2

v3 <- c('USA' , 20 , 31)
v3


# fonction names of vector 

temps <- c(1 , 3, 5 , 8 , 10 , 7 ,8)
temps
length(temps)
names(temps) <- c("Lun", "mar" , "mer" , "jeu" , "ven" , "sam" , "dim")

temps
# the opérations of vector 

# sum , mean , sd , max , min , prod

v <- c(10 , 12 , 1 , 3 , 2)
v

comp <- v < 2 
comp

v <- v == 2 
v

v1 <- c(1 ,3 , 2)
V2 <- c(2,5 , 6)
v1 < V2 
v <- c(1,2,3,4)
v
names(v) <- c('a','b','c','d')
v
v['a']

my.filter <- v > 2

v[my.filter]


a <- as.numeric("12.1")
a

a <- 2
class(a)
typeof(a) # double 
?double

mode(a)

a <- 10L
a
class(a)

a <- Inf

class(a)
typeof(a)
