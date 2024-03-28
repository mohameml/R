# cour : **``Apply``:**


## 1. **La fonction `lapply`:**



- **Description** : 
    >`lapply` applique une fonction spécifiée à chaque élément d'une liste (ou d'un vecteur) et renvoie une liste contenant les résultats.

- **Syntaxe** :
    ```R
    lapply(X, FUN, ...)
    ```

    - `X` : la liste ou le vecteur sur lequel la fonction sera appliquée.
    - `FUN` : la fonction à appliquer à chaque élément de `X`.
    - `...` : des arguments optionnels à passer à la fonction `FUN`.


- **Exemple:**

    Supposons que nous avons une liste de vecteurs, et nous voulons calculer la somme de chaque vecteur dans la liste :

    ```R
    # Création d'une liste de vecteurs
    ma_liste <- list(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9))

    # Application de la fonction sum à chaque élément de la liste
    resultat <- lapply(ma_liste, sum)

    print(resultat)
    ```

    Dans cet exemple, `lapply` applique la fonction `sum` à chaque élément de la liste `ma_liste`, ce qui renvoie une liste contenant les sommes de chaque vecteur.

    Le résultat affiché sera quelque chose comme :
    ```
    [[1]]
    [1] 6

    [[2]]
    [1] 15

    [[3]]
    [1] 24
    ```

    Chaque élément de la liste résultat contient la somme du vecteur correspondant de la liste d'origine.


## 2. **La fonction `sapply`:**


- **Description** : 
    >`sapply` applique une fonction spécifiée à chaque élément d'une liste (ou d'un vecteur) et tente de simplifier les résultats en les convertissant en vecteurs ou en matrices si possible.

- **Syntaxe** :
  ```R
  sapply(X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE)
  ```

  - `X` : la liste ou le vecteur sur lequel la fonction sera appliquée.
  - `FUN` : la fonction à appliquer à chaque élément de `X`.
  - `...` : des arguments optionnels à passer à la fonction `FUN`.
  - `simplify` : un booléen indiquant si les résultats doivent être simplifiés en vecteurs ou en matrices si possible (par défaut TRUE).
  - `USE.NAMES` : un booléen indiquant si les noms des éléments de `X` doivent être utilisés dans le résultat (par défaut TRUE).


- **Exemple:**

    Supposons que nous avons une liste de vecteurs, et nous voulons calculer la moyenne de chaque vecteur dans la liste :

    ```R
    # Création d'une liste de vecteurs
    ma_liste <- list(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9))

    # Application de la fonction mean à chaque élément de la liste
    resultat <- sapply(ma_liste, mean)

    print(resultat)
    ```

    Dans cet exemple, `sapply` applique la fonction `mean` à chaque élément de la liste `ma_liste`, et renvoie un vecteur contenant les moyennes de chaque vecteur.

    Le résultat affiché sera quelque chose comme :
    ```
    [1] 2 5 8
    ```

    Chaque élément du vecteur résultat contient la moyenne du vecteur correspondant de la liste d'origine. Notez que le résultat est simplifié en un vecteur, car les résultats de la fonction `mean` sont des valeurs uniques pouvant être représentées comme telles.


## 3. **La fonction `apply`:**


- **Description** : 
    
    >`apply` applique une fonction spécifiée sur les lignes ou les colonnes d'un tableau, d'une matrice ou d'un tableau à n dimensions.

- **Syntaxe** :
  ```R
  apply(X, MARGIN, FUN, ...)
  ```

  - `X` : le tableau, la matrice ou le tableau à n dimensions sur lequel la fonction sera appliquée.
  - `MARGIN` : un entier ou un vecteur d'entiers indiquant les dimensions sur lesquelles la fonction sera appliquée. 1 pour les lignes, 2 pour les colonnes .
  - `FUN` : la fonction à appliquer.
  - `...` : des arguments optionnels à passer à la fonction `FUN`.


- **Type de retour** : 
    >Le type de retour dépend de la fonction `FUN` et du contenu de `X`. Si `FUN` renvoie des scalaires pour chaque application, le résultat sera un vecteur ou une liste. Si `FUN` renvoie des vecteurs de longueur fixe, le résultat sera une matrice ou un tableau.


- **Exemple:**

    Supposons que nous avons une matrice représentant les ventes mensuelles de trois produits, et nous voulons calculer le total des ventes par mois :

    ```R
    # Création d'une matrice représentant les ventes mensuelles de trois produits
    ventes <- matrix(c(100, 150, 200, 120, 180, 250, 80, 130, 190), nrow = 3, byrow = TRUE)

    # Application de la fonction sum sur les colonnes (total des ventes par mois)
    resultat <- apply(ventes, MARGIN = 2, FUN = sum)

    print(resultat)
    ```

    Dans cet exemple, `apply` applique la fonction `sum` sur chaque colonne de la matrice `ventes`, ce qui renvoie un vecteur contenant le total des ventes par mois.

    Le résultat affiché sera quelque chose comme :
    ```
    [1] 300 460 640
    ```

    Chaque élément du vecteur résultat contient le total des ventes pour le mois correspondant.


### RQ : **Applay avec multiple-args:**

Supposons que nous avons une liste de vecteurs et nous voulons calculer la somme de chaque vecteur, mais avec un paramètre supplémentaire, disons un facteur multiplicatif :

```R
# Création d'une liste de vecteurs
ma_liste <- list(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9))

# Définition de la fonction pour calculer la somme avec un facteur multiplicatif
somme_avec_facteur <- function(x, facteur) {
  return(sum(x) * facteur)
}

# Application de la fonction avec sapply et un argument supplémentaire
resultat <- sapply(ma_liste, somme_avec_facteur, facteur = 2)

print(resultat)
```


## 4. **Les fonctions anonymes :**


- **Description:**

    >Les fonctions anonymes en R, également appelées fonctions lambda, sont des fonctions sans nom. Elles sont généralement utilisées lorsque vous avez besoin d'une fonction temporaire pour effectuer une tâche spécifique et que vous ne voulez pas définir une fonction nommée distincte. 
    
    >Les fonctions anonymes sont souvent utilisées comme arguments de fonctions d'ordre supérieur telles que `apply`, `lapply`, `sapply`.


- **Syntaxe** :
  ```R
  function(arg1, arg2, ...){expression}
  ```

  - `arg1`, `arg2`, ... : Les arguments de la fonction anonyme.
  - `expression` : Le corps de la fonction, c'est-à-dire les instructions à exécuter.

- **Exemple** :

    Supposons que vous ayez une liste de nombres et que vous vouliez doubler chaque élément de cette liste à l'aide d'une fonction anonyme avec `lapply` :

    ```R
    # Liste de nombres
    numbers <- list(1, 2, 3, 4, 5)

    # Utilisation de lapply avec une fonction anonyme pour doubler chaque élément de la liste
    doubled_numbers <- lapply(numbers, function(x){x * 2})

    print(doubled_numbers)
    ```

