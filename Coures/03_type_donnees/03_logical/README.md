# cour : **``logical``**


## 1. **Introduction:**

   >En R, le type de données **logical** est utilisé pour représenter les valeurs booléennes, c'est-à-dire des valeurs logiques qui peuvent être soit `TRUE` (vrai) soit `FALSE` (faux). 


## 2. **Déclaration de valeurs logiques :**

- Les valeurs logiques sont généralement déclarées en utilisant les mots-clés `TRUE` ou `FALSE`. Par exemple :

   ```R
   logique_vrai <- TRUE
   logique_faux <- FALSE
   # ou par T et F 
   v <- T 
   f <- F
   ```


## 3. **les opérations logiques:**


En R, les opérations logiques sont utilisées pour effectuer des comparaisons entre valeurs logiques (``TRUE`` ou ``FALSE``) ou pour combiner des conditions. Voici les principales opérations logiques en R :

### 3.1 **Opérations de comparaison :**

1. **Égal à (`==`) :**
   - Vérifie si les valeurs de deux expressions sont égales.
   ```R
   x == y
   ```

2. **Différent de (`!=`) :**
   - Vérifie si les valeurs de deux expressions sont différentes.
   ```R
   x != y
   ```

3. **Supérieur à (`>`) et Inférieur à (`<`) :**
   - Vérifient si la valeur de la première expression est strictement supérieure ou inférieure à celle de la deuxième expression.
   ```R
   x > y
   x < y
   ```

4. **Supérieur ou égal à (`>=`) et Inférieur ou égal à (`<=`) :**
   - Vérifient si la valeur de la première expression est supérieure ou égale à celle de la deuxième expression, ou inférieure ou égale à celle de la deuxième expression.
   ```R
   x >= y
   x <= y
   ```

### 3.2 **Opérations logiques :**


5. **Et (`&`) :**
   - Effectue une opération logique "et" élément par élément entre deux vecteurs logiques.
   ```R
   condition1 & condition2
   ```

6. **Ou (`|`) :**
   - Effectue une opération logique "ou" élément par élément entre deux vecteurs logiques.
   ```R
   condition1 | condition2
   ```

7. **Non (`!`) :**
   - Négation logique, inverse la valeur logique d'une condition.
   ```R
   !condition
   ```

8. **Et logique (`&&`) :**
   - Évalue deux expressions logiques avec une évaluation paresseuse (lazy evaluation) de la deuxième expression.
   ```R
   condition1 && condition2
   ```

9. **Ou logique (`||`) :**
   - Évalue deux expressions logiques avec une évaluation paresseuse de la deuxième expression.
   ```R
   condition1 || condition2
   ```


## 4. **Fonctions logiques :`any()` et `all()`**

### 4. 1 **Fonction `any()` :**

- **Description :**
   >La fonction `any()` en R renvoie TRUE si au moins un élément d'un vecteur ou d'une condition est TRUE, sinon elle renvoie FALSE.

- **Syntaxe :**

   ```R
   any(logical_vector)
   ```
   - `logical_vector` : Un vecteur logique.

- **Exemple d'utilisation :**

   ```R
   # Exemple avec un vecteur logique
   valeur_logique <- c(FALSE, TRUE, FALSE, FALSE)
   resultat_any <- any(valeur_logique)
   print(resultat_any)
   # Résultat : TRUE (car au moins un élément est TRUE)
   ```

### 4.2 **Fonction `all()` :**

- **Description :**
   >La fonction `all()` renvoie TRUE si tous les éléments d'un vecteur ou d'une condition sont TRUE, sinon elle renvoie FALSE.

- **Synttaxe:**

   ```R
   all(logical_vector)
   ```

   - `logical_vector` : Un vecteur logique.

- **Exemple d'utilisation :**

   ```R
   # Exemple avec un vecteur logique
   valeur_logique <- c(TRUE, TRUE, TRUE, FALSE)
   resultat_all <- all(valeur_logique)
   print(resultat_all)
   # Résultat : FALSE (car au moins un élément est FALSE)
   ```




## 5. **Conversion vers ``logical`` :**

- **Description:**

   >En R, vous pouvez convertir d'autres types de données en type logique (logical) en utilisant la fonction `as.logical()`  avec le type de données que vous souhaitez convertir. Par exemple, le nombre 0 est converti en `FALSE`, et tout autre nombre est converti en `TRUE`.

   - Il est important de noter que la conversion de certains types de données en logique se fait selon des règles spécifiques. Par exemple, dans le cas des nombres, tout nombre différent de zéro sera converti en `TRUE`, tandis que zéro sera converti en `FALSE`. 
   
   - La chaîne de caractères "TRUE" est convertie en `TRUE` logique, et la chaîne de caractères "FALSE" est convertie en `FALSE` logique.


- **Voici quelques exemples :**

   1. **À partir d'un nombre entier ou à virgule flottante :**

      ```R
      x <- 5
      x_logical <- as.logical(x)
      print(x_logical)  # Cela pourrait afficher TRUE si x n'est pas égal à zéro, sinon FALSE
      ```

   2. **À partir d'une chaîne de caractères :**

      ```R
      y <- "TRUE"
      y_logical <- as.logical(y)
      print(y_logical)  # Cela affichera TRUE (la chaîne de caractères "TRUE" est convertie en TRUE logique)
      ```

      Remarque : "TRUE" (en majuscules) est équivalent à `TRUE` en R, de même pour "FALSE" et `FALSE`.

   3. **À partir d'un vecteur :**

      ```R
      z <- c(1, 0, 2, 3)
      z_logical <- as.logical(z)
      print(z_logical)  # Cela affichera TRUE pour les éléments non nuls et FALSE pour les zéros
      ```

### RQ : 

- Pour la conversion d'une chaîne de caractères, qq différent de ``TRUE``(ou ``T``) ou ``FALSE``(ou ``F``) sera converti en ``NA`` lors de la conversion vers logique

   ```R
   a <- as.logical("Bonjour") # a : NA
   ```

