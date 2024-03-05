# factor :

## 1. Nomianl factor : No ordre 
animal <- c('c' , 'd' , 'c' , 'd' , 'c' , 'd' , 'd')
animal

fct.animal <- factor(animal)
fct.animal
summary(fct.animal)
summary(animal)
class(fct.animal)
levels(fct.animal)
## 2. Ordinal :

temps <- c('cold'  , 'med' , 'hot' , 'cold' ,'med' , 'med' , 'hot' )
temps

fct.temps <- factor(temps , ordered  = T , levels = c("cold" , "med" , "hot"))
fct.temps

summary(fct.temps)


# Exemple avec un vecteur de couleurs
couleurs <- c("Rouge", "Vert", "Bleu", "Rouge", "Bleu")
couleurs_factor <- factor(couleurs)
print(couleurs_factor)


satisfaction <- c("Bas", "Moyen", "Élevé", "Bas", "Élevé")
satisfaction_factor <- factor(satisfaction, ordered = TRUE , levels = c("Bas", "Moyen", "Élevé"))
satisfaction_factor


couleurs <- factor(c("Rouge", "Vert", "Bleu", "Rouge", "Bleu"))
summary(couleurs)

tableau_freq <- table(couleurs)
tableau_freq

?droplevels

couleurs <- factor(c("Rouge", "Vert", "Bleu", "Rouge", "Rouge"))
couleurs

couleurs <- couleurs[-3]  # Supprimer la troisième observation
couleurs
couleurs <- droplevels(couleurs)  # Supprimer le niveau inutilisé
couleurs
















