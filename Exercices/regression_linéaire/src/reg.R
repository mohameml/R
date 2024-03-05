# script pour l'étude de la modéle de Régression linéaire simple 



est_valide <- function(x , y) {
    # x : date x 
    # y : data y 
    # return un boolean qui indique est ce que le modéle de regrssion linéaire simple est valie ou non
    
    if(length(x)!=length(y)) {
        print("clean your data before modele")
        return(FALSE)
    }

    r_x_y <- cor(x,y)


    if(abs(r_x_y) == 0) {
        return(FALSE)
    }



}


beta1_and_beat0 <- function(x, y) {
    # return un vecteur qui contient : (beta0 , beta1) 
    n <- length(x)
    c_x_y <- ((n-1)/n)*cov(x,y)
    s_x_carre <- ((n-1)/n)*var(x)

    beta1 <- c_x_y/s_x_carre
    beta0 <- mean(y) - mean(x)*beta1

    return(c(beta0 , beta1))
}


