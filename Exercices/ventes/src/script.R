# ex01 
# historique : 29/01/2024

# vecteures de données 
ventes_mensuelles <- c(120, 150, 80, 110, 200, 170, 130, 160, 90, 140, 180, 110)

# Q1 : 

moyenne <- mean(ventes_mensuelles)
print("la moyenne des ventes mensuelles est :")
print(moyenne) # 136.6667

# Q2 : 

# le mois avce les ventes le plus élevées : 
max_ventes <- max(ventes_mensuelles)
mois_max <- which(ventes_mensuelles == max_ventes)
mois_max

# le mois avce les ventes le mois 
min_v <- min(ventes_mensuelles)
mois_min <- which(ventes_mensuelles == min_v)
mois_min

# Q3 : 

barplot(ventes_mensuelles , names = seq(1, 12, 1) , main="les ventes mensuelles" , col="blue" , xlab="les mois" , ylab="les ventes" )

