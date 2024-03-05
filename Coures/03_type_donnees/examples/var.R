a = 2
print(a)
a = "sidi"
print(a)

.si = 1
print(.si)

a <- 10
a
mode(a)
b <- 10L
b 
mode(b)
is.numeric(a)
c <- 2+1i
c
mode(c)

d <- 12.3456667
d
mode(d)

e <- NaN
e
mode(e)

f <- Inf 
f
mode(f)
typeof(a)
a
typeof(b)

class(a)
class(e)

typeof(e)
typeof(f)





# =================== 

v <- TRUE 
e <- FALSE 
v
typeof(v)
typeof(e)
a.1 <- v & e 
a.1
a.2 <- v | e
a.2
tab <- c(v ,e)
all(tab)
any(tab)


# concatanation des chaines de caractéres :

ch1 <- "bonjour"
ch2 <- "tout le mond"

ch3 <- paste(ch1,ch2, sep="-")
ch3

x <- nchar(ch1)
x
print(ch1[1])

cara1 <- ch1[2] # NA 
cara1

print(substr(ch2,1,2))
print(ch2[2])
print(ch2[3])

x1 <- seq(1,50,1)
x2 <- x1*2
x1 
x2 
plot(x1,x2)
plot(x2,x1)

u <- NA 
mode(u)
typeof(u)
