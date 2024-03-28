# exemples sur les bouces en R


# x = i tq i varie 1:10

for(x in 1:10) {
    print(paste("x =" , x))
}

# Boucle for pour afficher les nombres de 1 à 10 sauf le nombre 5
for (i in 1:10) {
  if (i == 5) {
    next  # Passe à l'itération suivante sans exécuter le reste du code dans la boucle actuelle
  }
  print(i)  # Afficher la valeur de i
}
