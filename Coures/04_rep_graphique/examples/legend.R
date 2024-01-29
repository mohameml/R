#=======================

temps <- seq(20 , 100 , 20)
projet.A <- c(25, 30 , 55 , 78 , 95)
projet.B <- c(15 , 25 , 45 , 60 , 80)

plot(temps , projet.A , type="b" , 
    main="Projet.A vs Projet.B" , xlab="Temps d'étude" , ylab="Resultat" ,
    xlim=c(0,100) , ylim=c(0,100) , lty=1 , col="red" , pch=16)
lines(temps , projet.B , type="b" ,
      lty=2 , col="blue" , pch=19 )
# legend du graphe 
legend("topleft" , title="legend" , c("A" , "B")
        ,col = c("red", "blue") ,pch=c(16,19) , lty=c(1,2) , cex=c(1,1) 
        , inset=0.02 , box.lty=2)



# la fonction axis 

x <- 1:5
y <- c(2, 4, 1, 3, 5)
plot(x , y , type="b" , col="red" , lty=1 , pch=16 , main="la fonction axis" , xaxt="n" )

axis(sid=1 ,at=1:5 , labels = TRUE , col="red", lty=2 , font = 3)


# Exemple : Utilisation de la fonction axis
x <- 1:5
y <- c(2, 4, 1, 3, 5)

# Tracé d'un graphique sans axe x initial
plot(x, y, type="b", xaxt="n", col="blue", pch=16, main="Exemple de Graphique avec axis")

# Ajout d'un axe x personnalisé
axis(1, at=x, labels=c("A", "B", "C", "D", "E"), col="red", lty=2)


# la fonction abline 

x <- 1:5
y <- c(2 , 14 , 7 , 8 , 2)
plot(x , y , type="b" , col="red" , main="la fonction abline" , pch=16)

# on ajoute une droite horiz
abline(h=10 , lty=2 , col="blue" )
abline(h = 3, col = "red", lty = 2)  # Ligne horizontale à y = 3 en rouge et en pointillés
abline(v = 3, col = "green", lty = 3)  # Ligne verticale à x = 3 en vert et en tirets
abline(a = 0, b = 1, col = "purple", lty = 1)




# la fonction title
x <- 1:5
y <- c(2 , 14 , 7 , 8 , 2)
plot(x , y , type="b" , col="red"  , pch=16 ,xlab="abscisse"  )

title(main="la fonction title" , col.main = "blue" , cex.main=2)
title(sub="sous titre")


# Exemple : Utilisation de la fonction title
x <- 1:5
y <- c(2, 4, 1, 3, 5)

# Tracé d'un graphique avec des titres personnalisés
plot(x, y, type="b", col="blue", pch=16 , cex=0.8)

# Ajout de titres avec la fonction title
title(main = "la fonction titile", sub = "Sous-titre", xlab = "Axe X", ylab = "Axe Y", col.main = "red", col.sub = "green", col.lab = "purple", col.axis = "orange")


# la fonction par 
par(mfrow=c(3,1))
plot(1:10,2*(1:10))
plot(1:10,2*(1:10))
plot(1:10,2*(1:10))

def.par <- par(no.readonly = TRUE)
par(mfrow=c(2, 2), mar=c(2, 2, 2, 2), oma=c(1, 1, 1, 1), cex=1.2)

# Tracé de plusieurs graphiques dans une disposition de tracé
plot(1:10, main="Graphique 1", col="blue", pch=16)
hist(rnorm(100), main="Histogramme", col="green")
boxplot(rnorm(100), main="Boîte à moustaches", col="orange")
barplot(table(sample(letters, 100, replace=TRUE)), main="Diagramme à barres", col="purple")

# Restauration des paramètres graphiques par défaut
par(def.par)
plot(1:10)
plot(1:20)


plot(1:20)

par(mfrow=c(2, 2))
plot(1:10, main="Graphique 1")
plot(1:10, main="Graphique 2")
plot(1:10, main="Graphique 3")
plot(1:10, main="Graphique 4")

par(mfrow=c(1, 1))

# Utilisation de mfcol
par(mfcol=c(2, 2))
plot(1:10, main="Graphique 1")
plot(1:10, main="Graphique 2")
plot(1:10, main="Graphique 3")
plot(1:10, main="Graphique 4")

# Réinitialisation des paramètres par défaut
par(mfcol=c(1, 1))

# les arguments oma et mar de la fonction par 
par(mfrow=c(1,1) , oma=c(1, 1 , 1 , 1) , mar=c(1 , 1 , 1 , 1) , las=2)
x <- 1:5
y <- c(2,15 , 6 , 20 ,10)
plot(x , y, type="o" , pch=16, col="red" , main="les args oam et mar")


# la fonction curve 
curve (exp(x) , from = -3 , to = 3 , col="red" , lty=2)
abline(v=0 , col="blue" , lty=2)
curve(x^2, from = -3, to = 3, col = "blue",add = TRUE ,  lwd = 1, main = "Tracé de la fonction quadratique")













































