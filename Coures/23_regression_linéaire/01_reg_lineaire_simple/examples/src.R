# regression simple en R 

# on va traviller avec le data.frame : mtcras
df <- mtcars
head(df)
# la question : est ce que on peut expliquer la varibale mpg par wt ? 
plot(mpg ~ wt , data = mtcars , pch=20)

# le coefficent de corréclation : 
cor(df$mpg , df$wt) # cor = -0.86 

# modele de regression : 

fit <- lm(mpg ~ wt , data = df)
fit 
summary(fit)
names(fit)
fit$coefficients
coefficients(fit)
fitted.values(fit)
fit$fitted.values
resid(fit)

# mpg.shp = 37.285 -5.344*wt

# valeures estimées par le modéle : 
fitted.values(fit)

# les residus : 
residuals(fit) 

df$mpg - fitted.values(fit)


# visualisation du Modele :

# les nuages de poinst (wt_i et mpg_i) i 
plot(mpg ~ wt , data = df , col="red" , pch = 20)
points(df$wt , fitted.values(fit) , col="green" , pch="+")

# la droite de regression : mpg.shp = 37.285 -5.344*wt
abline(fit)


# la droite y=x

plot(fitted.values(fit) , df$mpg , col="red" , pch=20)
abline(a=0 , b= 1)

# verification des hypothése de modele de regression :
hist(residuals(fit))
resid(fit)

length(resid(fit)) # >= 30 => test de shapiro-Walik est efficace 
shapiro.test(resid(fit)) # p-value > 5% => on peut garder l'hypothése de normalité de residus 


# intervalle de cofiance : 
confint(fit , level = 0.95)

# 2.5 %    97.5 %
# (Intercept) 33.450500 41.119753
# wt          -6.486308 -4.202635




# Création du graphique de dispersion
plot(df$mpg, fitted.values(fit), main = "Valeurs Observées vs Prédites", 
     xlab = "Valeurs Observées", ylab = "Valeurs Prédites" , pch=20
)
# Ajout d'une ligne d'identité y = x
abline(a = 0, b = 1, col = "red")

# Légende
legend("bottomright", legend = "y=x", col = "red", lty = 1, cex = 0.8)








