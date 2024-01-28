# exemples de manipluation de vecteur 

# ==================== fonction c() =================
v1 <- c(1,2,20 , 10 , 9 , 89 )
v1
mode(v1)
typeof(v1)


# ========================= seq() ==================
v2 <- seq(1 , 10 , 1)
v2

v3 <- seq(15 , 30 ,5)
v3


# ====================== letters =======================

v4 <- letters[1:5]
v4

# ============= Accées ===========
vec <- c(1,2,3,5,90)

s <- sum(vec)

print("the sum of vec is = ")
print(s)

var <- c(-20 , 10 , -13 , 20)
var
var_positive <- var[var > 0 ]
var_positive

var_cond <- var[sum(var) - var > 0 ]
var_cond

#
vec1 <- rep(0 , 10)
vec1

vec1[1] <-  10 
vec1[2] <- -10 

vec1

vec1[10] <- 40 
vec1 

vec1[11] <- 13
vec1

vec1[15] <- 11
vec1

print(vec1[16])

vec1

vec1[1]

length(vec1)


e <- 10:20
e




