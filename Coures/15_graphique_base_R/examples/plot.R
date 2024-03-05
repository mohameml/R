# utilisation simple du plot 
x <- 10 :20
y <- 2*x 
x
y 

# scatter shart 
plot(x , y , main="titre" , xlab="abss" , ylab="ord", col='red' , pch=19)

# line shart 
plot(x , y , main="titre" , xlab="abss" , ylab="ord", col='red' , pch=19 , type="S")

# histogramme 
plot(x , y , main="titre" , xlab="abss" , ylab="ord", col='red' , pch=19, type="h")

# Dig barre : BarPlot 
plot(x , y , main="titre" , xlab="abss" , ylab="ord", col='red' , pch=19 , type="n")


# barplot 
barplot(x,y)

# graphe lineaire 
x <- 0:1000
y=exp(x)
plot(x ,y)



# Exemple de nuage de points
x <- c(1, 2, 3, 4, 5)
y <- c(3, 5, 7, 2, 8)

# Création d'un nuage de points
plot(x, y )



x <- c(1, 2, 3, 4, 5)
y <- c(3, 5, 7, 2, 8)

# Création d'un nuage de points avec un titre
plot(x, y, main="Nuage de Points", bty="u")


# =============== BarPlot =========================
data <- c(3, 8, 5, 12, 7)
barplot(data, names.arg = c("A", "B", "C", "D", "F"), width=20 , angle = 180)

# =================== Dig circulaire ======================
data <- c(30, 15, 25, 10, 20)
labels <- c("A", "B", "C", "D", "E")
pie(data, labels = labels, main = "Pie Chart Example" )


# Création d'une matrice avec cbind()
mat_cbind <- cbind(c(1, 4, 7), c(2, 5, 8), c(3, 6, 9))

# Création d'une matrice avec rbind()
mat_rbind <- rbind(c(1, 2, 0), c(4, 5, 0), c(7, 8, 9))

barplot(mat_rbind)

# ============ diagramme circulaire ==================
sce <- c(10 , 20 , 30 , 16 , 70 )

pie(sce , labels =  c("A" , "B" , "C" , "D" ,"E") , main="titre" , border="white" ,radius = 1)

# Exemple de diagramme circulaire avec explode
data <- c(30, 20, 50)
labels <- c("Catégorie A", "Catégorie B", "Catégorie C")
explode_values <- c(0, 0.1, 0)

# Création du diagramme circulaire avec l'argument explode
pie(data, labels = labels, explode = explode_values, main = "Diagramme Circulaire avec Explode")

# la fonction legend 
x <- 1:10
y <- 20:29
plot(x , y)

legend(10,10 , "A")

# Création d'un graphique avec une légende
plot(1:5, col="blue", pch=16, type="b", main="Exemple de Graphique avec Légende")

# Ajout de la légende
legend(1, 5, legend=c("Série 1"), col="blue", pch=16, lty=1, cex=1, title="Légende")









