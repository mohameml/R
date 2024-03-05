# solution fiche 2 : Matrice

## Q1 : 

A <- 1:3
B <- 4:6

mat <- rbind(A , B)
mat


## Q2 :

mat <- matrix(1:9 , nrow = 3)
mat

## Q3 :

is.matrix(mat)

## Q4 :

mat2 <- matrix(1:25 , nrow= 5 , byrow = T)
mat2


## Q5 :

mat2[2:3 , 2:3]

## Q6 

mat2[4: 5,  4:5]


# Q7 : sum of the all elments in mat2

sum(rowSums(mat2)) # 325 
# ou
sum(colSums(mat2))
# ou 
sum(mat2)

# Q8 : 

mat.uinf <- matrix(runif(20 , 0 , 100) , nrow= 4 , byrow = T )
mat.uinf

