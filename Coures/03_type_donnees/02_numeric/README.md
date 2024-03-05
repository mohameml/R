# cour : **``numeric``**

## 1. **``numeric``**

- **Introduction:**

>Le type de données numérique en R est utilisé pour représenter des nombres réels (décimaux) tels que des nombres à virgule flottante. Les variables de type numérique sont couramment utilisées pour stocker des valeurs qui peuvent avoir des parties fractionnaires. Ce type de données est largement utilisé dans les analyses statistiques, les calculs mathématiques et d'autres opérations nécessitant une précision décimale.

- **Exemples :**

```R
x <- 42       # Entier
y <- 3.14     # Nombre à virgule flottante
z <- -7.5     # Nombre négatif à virgule flottante
```

- **Opérations arithmétiques :**

Les opérations arithmétiques de base peuvent être effectuées avec des variables numériques.
```R
a <- x + y    # Addition
b <- x - y    # Soustraction
c <- x * y    # Multiplication
d <- x / y    # Division
e <- x^2       # Puissance
f <- sqrt(x)   # Racine carrée
```

- **Casting:**

R peut automatiquement convertir un entier en nombre à virgule flottante si nécessaire, mais vous pouvez également utiliser les fonctions de coercition explicite.
```R
entier <- 5
flottant <- as.numeric(entier)  # Coercition explicite
```





## 2. **``integer``:**

- **Description:**

  >le type ``integer``: Utilisé pour représenter des nombres entiers.Les entiers sont créés en ajoutant le suffixe ``L`` à la valeur.


- **Exemple :**
    ```R
    y <- 10L
    ```

## 3. **``double``:**

- Utilisé pour représenter des nombres en double précision.

- Exemple :
  ```R
  a <- 3.14159
  
  ```

## 4. **``Infinity`` et ``NaN`` (Not a Number) :**

- R utilise `Inf` pour représenter l'infini et `NaN` pour représenter les valeurs indéfinies ou non numériques.


- Exemple :

  ```R
  infini <- Inf
  indetermine <- NaN
  ```

