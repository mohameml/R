# cour 

**1. Les Conditions en R :**
En R, les structures conditionnelles sont utilisées pour exécuter différentes parties de code en fonction de l'évaluation d'une expression logique (booléenne). Les principales structures conditionnelles sont `if`, `else if`, et `else`.

Exemple :

```R
# Exemple d'une structure conditionnelle en R
x <- 10

if (x > 0) {
  print("x est positif.")
} else if (x == 0) {
  print("x est égal à zéro.")
} else {
  print("x est négatif.")
}
```

**2. Les Boucles en R (for et while) :**
Les boucles permettent d'exécuter une séquence de code plusieurs fois. En R, les boucles les plus couramment utilisées sont `for` et `while`.

Exemple de boucle `for` :

```R
# Exemple d'une boucle for en R
for (i in 1:5) {
  print(i)
}
```

Exemple de boucle `while` :

```R
# Exemple d'une boucle while en R
i <- 1
while (i <= 5) {
  print(i)
  i <- i + 1
}
```

**3. Les Fonctions en R :**
Les fonctions en R permettent d'encapsuler du code réutilisable. Vous pouvez définir vos propres fonctions à l'aide de `function()`.

Exemple de définition de fonction :

```R
# Exemple de définition de fonction en R
ma_fonction <- function(x, y) {
  resultat <- x + y
  return(resultat)
}

# Utilisation de la fonction
resultat_final <- ma_fonction(3, 5)
print(resultat_final)
```

Ces exemples couvrent quelques concepts de base en programmation R. N'hésitez pas à explorer davantage ces concepts et à les appliquer dans des contextes plus complexes en fonction de vos besoins spécifiques.