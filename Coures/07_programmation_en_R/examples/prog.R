
add <- function(x , y) {
    z <- x + y
    return(z) 
}

muins <- function(x , y)  {
    return(x-y)
}


x1 <- 10
x2 <- 2

if(add(x1 , x2) == 12) {
    print("PASSED ADD")
} else {
   
    print("FALID")
} 


for (e in seq(1, 10 ,1)) {
   print(e)
}