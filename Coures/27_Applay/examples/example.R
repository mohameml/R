# exemples des fonctions apply en R


v <- 1:10

addrand <- function(x) {
    rand <- sample(1:10, 1)
    return(rand+x)
}

print(addrand(10))


res.l <- lapply(v, FUN = addrand)
print(res.l)


res.v <- sapply(v , addrand)
print(res.v)

# utilisation d'une fonction anonyme : lambda 
res.times2 <- sapply(v , function(x) {x*2})
print(res.times2)



# la fonction apply 

mat <- matrix(1:9 , nrow = 3 , byrow = T )
mat

apply(mat, MARGIN = 2, FUN = sum )
