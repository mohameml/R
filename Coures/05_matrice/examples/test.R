# matrice en R :

vec <- 1:9

matr <- matrix(vec , nrow = 3 , byrow = TRUE)

print(matr)


# Création d'un vecteur
vec <- c(3, 7, 11)

# Création d'une matrice avec le vecteur comme colonne
ma_matrice <- matrix(vec)

print(ma_matrice) # une matrice de taille 3*1



vec <- 1:9
matr <- matrix(vec , nrow=4 )



# Exemples : Google vs MCFS 

goog <- c(452 , 430 , 400 ,400,410 )
msfc <- c(200 , 210 , 150 , 140 , 400)

data <- matrix(c(goog , msfc) , nrow = 2 , byrow = TRUE) 
print(data)

colnames(data) <- c("MOn" , "Tues" ,"Wond" , "Thrues" , "Fri")
rownames(data) <- c("Google" , "MFSC")
print(data)


colnames(data)


# section 2
mat <- matrix(1:25 , byrow = T , nrow = 5)

print(mat)

# section 3:
goog <- c(452 , 430 , 400 ,400,410 )
msfc <- c(200 , 210 , 150 , 140 , 400)

data <- matrix(c(goog , msfc) , nrow = 2 , byrow = TRUE) 
print(data)

colnames(data) <- c("MOn" , "Tues" ,"Wond" , "Thrues" , "Fri")
rownames(data) <- c("Google" , "MFSC")


print(data)


FB <- c(110 , 10 , 0 , 130 ,100)

data <- rbind(data , FB )
print(data) # the row name is the name of vector


avg <- rowMeans(data)
avg

data <- cbind(data , avg)
print(data)
summary(data)
data
colSums(data)

rowSums(data)




mat <- matrix(1:9 , nrow = 3 , byrow = T)
mat
t(mat)
det(mat)

mat_i <- solve(mat)
mat_i

vec <- c(1 , 0 , 0 , 0 , 1 , 0 , 0 , 0 , 1)
length(vec)
I <- matrix(vec , nrow = 3 , byrow= T)
I
solve(I)

print(eigen(I)$values)
print(eigen(I)$vectors)


# section 

mat <- matrix(1:50 , nrow =5 ,byrow=T)
mat
# mat[i,,j]
print(mat[1,7])

#mat[i,]
print(mat[1,])

#mat[,k]
print(mat[,5])

# mat[i:j, ]
print(mat[1:3 ,])

# mat[, i:j]
print(mat[,1:3])

# mat[i:j,k:l]
mat[3:4 , 6:7]

# mat[c(i1, i2) , c(j1 ,j2)]
mat[c(1, 2), c(3,6)]
mat
