# etude de la frainage d'une voiture 

vitesse<-c(5,10,15,20,25,30,35,40)
n <- length(vitesse)

freinage<-c(3.42,5.96,31.14,41.76,74.54,94.92,133.78,169.16)

plot(vitesse,freinage)

x_n_bar <- mean(vitesse)
x_n_bar # 22.5 

y_n_bar <- mean(freinage)
y_n_bar # 69.335

c_x_y <- ((n-1)/n )*cov(vitesse , freinage)
c_x_y # 632.3125

s_x_carre <- var(vitesse) *((n-1) /n)
s_x_carre # 131.25

s_y_carre <- var(freinage) *((n-1)/n)
s_y_carre # 3172.536


r_x_y <- cor(vitesse,freinage)
r_x_y # 0.9799

# le fait  que r_x_y soit trés proche de 1  indique une forte corrélation linéaire positive, ce
# qui se voit clairement sur le nuage de points


# donc : 

beta_1 <- c_x_y / s_x_carre
beta_1 # 4.82

beta_0 <- y_n_bar - beta_1*x_n_bar
beta_0 # -39.06

sigma_care <- (n/(n-2))*s_y_carre*(1 - r_x_y**2)
sigma_care # 168.4


# donc la droite de modéle MCO est y = 4.82x - 39.06

# figure du modéle 

plot(vitesse,freinage)
abline(beta_0 , beta_1)


# pour la préduction pour x = 50 m/s on 
x_pre <- 50 
y_pre <- beta_1*x_pre +beta_0 
y_pre # 201.9 m 


# l'etude avce la cmmande lm 

objet_reg <- lm(freinage ~ vitesse)
summary(objet_reg)

# ========================== Resultat de la comande ============================
# Call:
# lm(formula = freinage ~ vitesse)

# Residuals:
#     Min      1Q  Median      3Q     Max 
# -15.531  -7.766  -2.609   7.048  18.393 

# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept) -39.0614    10.1113  -3.863  0.00833 ** 
# vitesse       4.8176     0.4005  12.030    2e-05 ***
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# Residual standard error: 12.98 on 6 degrees of freedom
# Multiple R-squared:  0.9602,    Adjusted R-squared:  0.9536 
# F-statistic: 144.7 on 1 and 6 DF,  p-value: 2.002e-05

plot(vitesse , freinage)
plot(vitesse , fitted.values(objet_reg))


### Test avce modele Reg du 2 eme ordre

y_2 <- vitesse^2
y_2
