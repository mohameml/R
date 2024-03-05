
## La fonction `runif()
La fonction `runif()` en R est utilisée pour générer des nombres aléatoires suivant une distribution uniforme. La distribution uniforme est caractérisée par une probabilité égale pour chaque valeur possible à l'intérieur d'une plage donnée. La syntaxe générale de la fonction `runif()` est la suivante :

```R
runif(n, min = 0, max = 1)
```

- `n`: Le nombre de valeurs aléatoires à générer.
- `min`: La valeur minimale de la plage (par défaut, 0).
- `max`: La valeur maximale de la plage (par défaut, 1).

Exemples d'utilisation de `runif()` :

1. Générer un seul nombre aléatoire entre 0 et 1 :

```R
nombre_aleatoire <- runif(1)
```

2. Générer cinq nombres aléatoires entre 5 et 10 :

```R
nombres_aleatoires <- runif(5, min = 5, max = 10)
```

3. Générer une matrice 3x3 de nombres aléatoires entre -1 et 1 :

```R
matrice_aleatoire <- matrix(runif(9, min = -1, max = 1), nrow = 3)
```

La fonction `runif()` est largement utilisée dans la simulation statistique, la génération de données aléatoires et d'autres applications où des nombres aléatoires sont nécessaires. Elle permet de créer des séquences de nombres aléatoires suivant une distribution uniforme sur un intervalle donné.