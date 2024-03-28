#

# ex01: 

# Create a function that accepts two arguments, an integer and a vector of integers. 
# It returns TRUE if the integer is present in the vector, otherwise it returns FALSE. 
# Make sure you pay careful attention to your placement of the return(FALSE) line in your function!


num_check <- function(x , v) {

    for( e in v) {
        if( e == x) {
            return(TRUE)
        }
    }

    return(FALSE)

}


num_check(2,c(1,2,3))
num_check(2,c(1,4,5))


# ex02 :

# Create a function that accepts two arguments, an integer and a vector of integers. 
# It returns the count of the number of occurences of the integer in the input vector.



num_count <- function(x ,v) {
    n <- 0 

    for(e in v) {
        if(e == x) {
            n <- n + 1
        }
    }

    return(n)
}

num_count(2,c(1,1,2,2,3,3))


num_count(1,c(1,1,2,2,3,1,4,5,5,2,2,1,3))


# EX03 : 

# We want to ship bars of aluminum. We will create a function that accepts an integer representing the requested kilograms of aluminum for the package to be shipped. 
# To fullfill these order, we have small bars (1 kilogram each) and big bars (5 kilograms each). Return the least number of bars needed


bar_count <- function(x) {

    if( x- 5 > 0) {
        n <- 1 + bar_count(x - 5)
        return(n)
    } else {
        return(x)
    }
    
}

bar_count(6) # 2

bar_count(17) # 5 


# EX04 : 

# Create a function that accepts 3 integer values and returns their sum. However, if an integer value is evenly divisible by 3, 
# then it does not count towards the sum. Return zero if all numbers are evenly divisible by 3. 
# Hint: You may want to use the append() function

summer <- function(v) {
    n <- 0 

    for(e in v) {
        if(e %% 3 != 0) {
            n <- n + e 
        }
    }

    return(n)
}


summer(c(7,2,3)) # 9 
summer(c(3,6,9)) # 0 
summer(c(9,11,12)) # 11


# EXO5 : 

#  Create a function that will return TRUE if an input integer is prime. Otherwise, return FALSE. You may want to look into the any() function


prime_check <- function(x) {

    sqrt.x <- sqrt(x)

    if(x == 2) {
        return(TRUE)
    }

    for(e in 2:sqrt.x) {
        if( x %% e == 0) {
            return(FALSE)
        } 
    }

    return(TRUE)
}

prime_check(2) # T 
prime_check(5) # T 
prime_check(4) # F
prime_check(237) # F
prime_check(131) # T 
