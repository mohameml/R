# exercice sur les conditions : 

# ex01 : 
x <- 3

if(x %% 2 == 0) {
    print("Even number")
} else {
    print("Not Even number")
}

# ex02 : 

y <- matrix() 
z <- c()

if( is.matrix(y)  ) {
    print("IS MATRIX")
} else {
    print("IS Not MATRIX")
}

# ex03 : 

x <- c(3,7,1)

sprintf("%d %d %d" , max(x) , x[x!=max(x) & x!=min(x)] , min(x) )
