# ================ cour Anova ========================
rm(list = objects()) # clean env 

# anova à 1 facteur : 


# data 
foret <- rep(1:3 , c(10 , 10 , 10))
hauteur <- c(23.4 , 24.4 , 24.6 , 24.8 , 24.9 , 25 ,25.5 , 25.8 , 26.1 , 26.2
          , 18.9 ,21.1 , 21.1 , 21.3 , 21.7 , 22.1 , 22.2 , 22.5 , 22.7 , 23.5 
          , 22.5 , 22.9 , 23.4 , 23.7 , 23.9 , 24 , 24 , 24.2 , 24.3 , 24.5 )

foret <- factor(foret)
arbre <- data.frame(foret , hauteur)
arbre
View(arbre)
# on calcul moyenne de hauteur pour chaque modalité : la fonction tapply

moyennes <- tapply(arbre$hauteur , arbre$foret , mean)
# ou avce : 
for (k in 1:3) {
  print(mean(subset(arbre, foret==k)$hauteur ))
}

moyennes

View(arbre)


# variabnces : 
var.non.cor <- function(vec) {
  n <- length(vec)
  return(var(vec)*((n-1)/n))
}

variances <- tapply(arbre$hauteur , arbre$foret , var.non.cor)
variances  



## verification des certains propriétes : 


# moyenne géneral = moyenne des moyennes de chaque échantillon

mm <- mean(moyennes)
mm  # 23.50667 
m.g <- mean(arbre$hauteur)
m.g # 23.50667


# var.g = var(moyennes) + mean(variances)
n <- length(arbre$hauteur)
I <- length(unique(arbre$foret))

var.g <- var(arbre$hauteur)*((n-1)/n)
var.g # 2.717..

moyennes
variances

p.2 <- var(moyennes)*((I-1)/I) + mean(variances)
p.2 # 2.717..



## graphe de moustache :
F1 <- subset(arbre, foret ==1)$hauteur 
F2 <- subset(arbre, foret ==2)$hauteur
F3 <- subset(arbre, foret ==3)$hauteur
boxplot(list(F1,F2,F3))

plot(arbre$foret , arbre$hauteur)
points(1:3, moyennes , pch="@")
abline(h=m.g)



# definition des condition d'anova la somme de alpha_i = 0 

options(contrasts = c("contr.sum" , "contr.poly"))

# modele 1 : 
m1 <- lm(hauteur~foret , data = arbre)
anova(m1)

# methode 2 :

m2 <- aov(hauteur ~ foret , data = arbre)
summary(m2)



# verification des hypothéses :


res <- residuals(m1)
res 
resid(m1)
# ==== l'hypothése de normalité de residus : 

shapiro.test(res) # p-valuye > 5% => on conserve H0  


# ========= l'hypothése de homogénite de variance :bartlett.test 
bartlett.test(res~foret , data = arbre) # p-value > 5% => on conserve H0  


# =========== Aprés la verification des hypothése : 
coef(m1) # donne toutes les alpha_i 

dummy.coef(m1) # donne toutes les aplha_i

anova(m1)

# Créer un QQ-plot des résidus
qqnorm(resid(m1))
?qqnorm
qqline(resid(m1))

# histogramme de residu de modéle d'ANOVA :

hist(resid(m2), main = "Histogramme des Résidus")


# utilisation de la library granova
install.packages("granova")


library(granova)
granova.1w(arbre$hauteur , arbre$foret)

# la biblo granovaGG
install.packages("granovaGG")

library(granovaGG)
granovagg.1w(arbre$hauteur , arbre$foret)




# Exemple de données
mesdonnees <- rnorm(100)  # Génération de 100 nombres aléatoires issus d'une distribution normale
mesdonnees
# Q-Q plot
qqnorm(mesdonnees)
qqline(mesdonnees)  # Ajoute une droite de référence pour la distribution normale



















