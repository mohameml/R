# cour : **Vecteur**

## 1. **Introduction:**

>un vecteur est une structure de données fondamentale permettant de stocker une séquence **ordonnée** d'éléments de **même type**. Il représente un ensemble de valeurs regroupées de manière homogène, que ce soit des nombres, des caractères, des logiques ou d'autres types de données pris en charge par R.


- Les vecteurs en R sont caractérisés par les aspects suivants :

    1. **Homogénéité :** Tous les éléments d'un vecteur doivent être du même type de données. Cela signifie qu'un vecteur ne peut pas contenir des éléments hétérogènes.

    2. **Indexation :** Les éléments d'un vecteur peuvent être accédés individuellement à l'aide d'indices. L'indexation commence généralement à 1, ce qui signifie que le premier élément d'un vecteur est accessible avec l'indice 1.

    3. **Longueur :** La longueur d'un vecteur est le nombre d'éléments qu'il contient. La fonction `length()` est utilisée pour déterminer la longueur d'un vecteur.

    4. **Opérations vectorielles :** Les opérations arithmétiques, logiques et statistiques peuvent être appliquées à l'ensemble d'un vecteur, ce qui facilite le traitement de données massives sans nécessiter de boucle explicite.

    5. **Création de vecteurs :** Les vecteurs peuvent être créés en utilisant la fonction `c()` (combine) pour regrouper des éléments de même type. Ils peuvent également être générés à l'aide de séquences, de fonctions ou d'autres méthodes spécifiques au type de vecteur souhaité.


Les vecteurs sont utilisés de manière ubiquitaire dans l'analyse de données, la modélisation statistique et d'autres aspects de la programmation en R. Leur utilisation simplifie le traitement de données en permettant des opérations vectorielles efficaces, ce qui contribue à la puissance et à la flexibilité du langage R dans le domaine de l'analyse statistique et de la manipulation de données.


## 2. **Declaration des vecteurs:**

En R, il existe plusieurs façons de déclarer des vecteurs, en fonction de vos besoins spécifiques et du type de données que vous souhaitez stocker. Voici quelques exemples de syntaxe pour déclarer des vecteurs dans R :


1. **la fonction ``c``:**
    
    >Pour déclarer un vecteur en R à l'aide de la fonction `c()` (combine), vous pouvez spécifier les éléments du vecteur entre les parenthèses et les séparer par des virgules. Voici 
    
    - **la syntaxe générale :**
        ```R
        nom_du_vecteur <- c(element1, element2, ..., elementN)
        ```

    - **un exemple concret :**
        ```R
        # Déclaration d'un vecteur numérique
        vecteur_numerique <- c(1, 2, 3, 4, 5)

        # Déclaration d'un vecteur de caractères
        vecteur_caracteres <- c("a", "b", "c", "d", "e")

        # Déclaration d'un vecteur logique
        vecteur_logique <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
        ```



2. **Vecteur numérique : `c()` et `seq()`**
   - Utilisation de la fonction `c()` (combine) :
     ```R
     vecteur_numerique <- c(1, 2, 3, 4, 5)
     ```

   - Utilisation de la fonction `seq()` (séquence) :
     ```R
     vecteur_numerique_seq <- seq(from = 1, to = 5, by = 1)
     ```

3. **Vecteur de caractères :`c()` et  `letters`**
   - Utilisation de la fonction `c()` :
     ```R
     vecteur_caracteres <- c("a", "b", "c", "d", "e")
     ```

   - Utilisation de la fonction `letters` :
     ```R
     vecteur_caracteres_letters <- letters[1:5]
     ```

4. **la fonction ``rep`` :**
    >La fonction `rep()` en R est utilisée pour répéter les éléments d'un vecteur. Elle permet de générer des vecteurs en répétant des valeurs spécifiées. La syntaxe de base de la fonction `rep()` est la suivante :

    ```R
    rep(x, times)
    ```

    où :
    - `x` est le vecteur ou l'élément que vous souhaitez répéter.
    - `times` est le nombre de répétitions.

    - **Exemple :**
        ```R
        vecteur_original <- c(1, 2, 3)
        vecteur_rep <- rep(vecteur_original, times = 3)
        # Résultat : vecteur_rep contiendra c(1, 2, 3, 1, 2, 3, 1, 2, 3)
        ```

5. **syntaxe ``strat:end``:**

  - >Si vous souhaitez créer un vecteur allant de `strat` à `end`, vous pouvez utiliser la fonction `:` pour créer une séquence. 

  - **Syntaxe :**
    ```R
    # Création d'un vecteur de strat à end
    e <- strat:end
    ```

  - **Exemple :** 
    ```R
    # Définition des valeurs de strat et end
    strat <- 1
    end <- 5

    # Création d'un vecteur de strat à end
    e <- strat:end

    # Affichage du vecteur
    print(e)
    ```

    Dans cet exemple, le vecteur `e` sera équivalent à `c(1, 2, 3, 4, 5)`.



## 3. **Accées:**

Pour accéder aux éléments d'un vecteur en R, vous pouvez utiliser l'indexation. 

1. **Accéder à un élément unique :**

  - Pour accéder à un élément unique dans un vecteur en R, vous pouvez utiliser l'index de l'élément que vous souhaitez extraire. 

  - L'indexation commence  à 1 dans R. Voici comment accéder aux éléments d'un vecteur :

  - Voici la syntaxe avec un exemple :
    ```R
    # Déclaration d'un vecteur numérique
    vecteur_numerique <- c(10, 20, 30, 40, 50)

    # Accéder à un élément unique
    premier_element <- vecteur_numerique[1]
    ```


2. **Accéder à plusieurs éléments :**
  
  - Vous pouvez spécifier un vecteur d'indices pour extraire plusieurs éléments.

  - Exemple :
    ```R
    indices <- c(1, 3, 5)
    elements_extraits <- vecteur_numerique[indices]
    # elements_extraits contiendra c(10, 30, 50)
    ```

3. **Accéder à une plage d'éléments :**
  
  - Utilisez la notation `start:end` pour extraire une plage d'éléments.

  - Exemple :
    ```R
    plage_elements <- vecteur_numerique[2:4]
    # plage_elements contiendra c(20, 30, 40)
    ```

4. **Accéder à des éléments conditionnellement :**
   
  - Vous pouvez utiliser des conditions pour filtrer les éléments.

  - Exemple 1 : 
    ```R
    elements_positifs <- vecteur_numerique[vecteur_numerique > 0]
    # elements_positifs contiendra c(10, 20, 30, 40, 50)


    ```

  - Exemple 2 : 

    ```R
    var <- c(-20 , 10 , -13 , 20)
    var
    var_positive <- var[var > 0 ]
    var_positive

    var_cond <- var[sum(var) - var > 0 ]
    var_con    
    
    ```

5. **Modifier des éléments :**
  
  - Vous pouvez utiliser l'indexation pour modifier des éléments dans un vecteur.

  - Exemple 
   ```R
   vecteur_numerique[3] <- 35  # Modifier le troisième élément
   ```


### RQ : **Index supérieur à la longueur du vecteur :**

Si vous essayez d'accéder à un index hors des limites d'un vecteur en R, cela peut conduire à des résultats imprévisibles ou à une erreur, en fonction du contexte. 

- Si vous essayez d'accéder à un index supérieur à la longueur du vecteur, R renverra `NA` (Not Available) pour les valeurs inexistantes au-delà de la longueur du vecteur.

```R
vecteur <- c(10, 20, 30)
valeur_inexistante <- vecteur[4]
# La valeur_inexistante sera NA
```



- Lorsque vous essayez d'assigner une valeur à un indice qui n'existe pas dans le vecteur, R va étendre le vecteur en ajoutant des valeurs `NA` pour atteindre l'indice spécifié. Voici comment cela se produit :

```R
vec <- c(10, 12)

# Tentative d'assignation à l'indice 5
vec[5] <- 6

# Affichage du vecteur mis à jour
print(vec)
# Le résultat sera : c(10, 12, NA, NA, 6)
```

Dans ce cas, le vecteur `vec` est étendu avec deux valeurs `NA` (pour les indices 3 et 4) afin d'atteindre l'indice 5, et la valeur 6 est assignée à l'indice 5. Le résultat final est `c(10, 12, NA, NA, 6)`.


- Il est toujours recommandé de vérifier la longueur du vecteur avant d'accéder à un index pour éviter des erreurs potentielles. Vous pouvez utiliser la fonction `length()` pour obtenir la longueur du vecteur et vérifier si l'index est dans les limites acceptables.


## 4. **Les opérations arithmétiques sur les vecteurs:**

Les opérations arithmétiques sur les vecteurs en R peuvent être effectuées de manière simple et efficace en utilisant les opérateurs arithmétiques standard. Voici une liste des opérations arithmétiques couramment utilisées sur les vecteurs en R :

1. **Addition :**
   ```R
   vecteur1 + vecteur2
   ```

2. **Soustraction :**
   ```R
   vecteur1 - vecteur2
   ```

3. **Multiplication par un scalaire :**
   ```R
   scalaire * vecteur
   ```

4. **Division par un scalaire :**
   ```R
   vecteur / scalaire
   ```

5. **Élévation à une puissance :**
   ```R
   vecteur ^ exposant
   ```

6. **Racine carrée :**
   ```R
   sqrt(vecteur)
   ```

7. **Exponentielle :**
   ```R
   exp(vecteur)
   ```

8. **Logarithme naturel :**
   ```R
   log(vecteur)
   ```

9. **Logarithme en base 10 :**
   ```R
   log10(vecteur)
   ```

10. **Valeur absolue :**
    ```R
    abs(vecteur)
    ```

Ces opérations peuvent être appliquées à des vecteurs de manière élément-wise, ce qui signifie que chaque élément du vecteur est combiné avec l'élément correspondant de l'autre vecteur ou avec le scalaire. Les vecteurs doivent être de même longueur pour que ces opérations soient valides.

Exemple d'utilisation :
```R
# Création de deux vecteurs
vecteur1 <- c(1, 2, 3, 4, 5)
vecteur2 <- c(6, 7, 8, 9, 10)

# Opérations arithmétiques
resultat_addition <- vecteur1 + vecteur2
resultat_multiplication <- 2 * vecteur1
resultat_exponentielle <- exp(vecteur1)

# Affichage des résultats
print(resultat_addition)
print(resultat_multiplication)
print(resultat_exponentielle)
```



## 5. **fonctions de manupilation:**

Voici quelques-unes des fonctions de manipulation de vecteurs en R avec leur syntaxe, description et exemples :

1. **Longueur d'un vecteur (`length`) :**
  
  - **Syntaxe :** `length(x)`
  
  - **Description :** Retourne la longueur du vecteur `x`.
  
  - **Exemple :**
     ```R
     vecteur <- c(10, 20, 30, 40, 50)
     longueur <- length(vecteur)
     # longueur sera 5
     ```

2. **Somme des éléments d'un vecteur (`sum`) :**
  
  - **Syntaxe :** `sum(x, na.rm = FALSE)`
  
  - **Description :** Calcule la somme des éléments du vecteur `x`.
  
  - **Exemple :**
     ```R
     vecteur <- c(10, 20, 30, 40, 50)
     somme <- sum(vecteur)
     # somme sera 150
     ```

3. **Moyenne des éléments d'un vecteur (`mean`) :**
  
  - **Syntaxe :** `mean(x, na.rm = FALSE)`
  
  - **Description :** Calcule la moyenne des éléments du vecteur `x`.
  
  - **Exemple :**
     ```R
     vecteur <- c(10, 20, 30, 40, 50)
     moyenne <- mean(vecteur)
     # moyenne sera 30
     ```

4. **Minimum d'un vecteur (`min`) :**
  
  - **Syntaxe :** `min(x, na.rm = FALSE)`
  
  - **Description :** Retourne la valeur minimale du vecteur `x`.
  
  - **Exemple :**
     ```R
     vecteur <- c(10, 20, 30, 40, 50)
     minimum <- min(vecteur)
     # minimum sera 10
     ```

5. **Maximum d'un vecteur (`max`) :**
  
  - **Syntaxe :** `max(x, na.rm = FALSE)`
  
  - **Description :** Retourne la valeur maximale du vecteur `x`.
  
  - **Exemple :**
     ```R
     vecteur <- c(10, 20, 30, 40, 50)
     maximum <- max(vecteur)
     # maximum sera 50
     ```

6. **Tri d'un vecteur (`sort`) :**
  
  - **Syntaxe :** `sort(x, decreasing = FALSE)`
  
  - **Description :** Trie les éléments du vecteur `x` par ordre croissant (ou décroissant).
  
  - **Exemple :**
     ```R
     vecteur <- c(30, 10, 50, 20, 40)
     vecteur_tri <- sort(vecteur)
     # vecteur_tri sera c(10, 20, 30, 40, 50)
     ```

7. **Ajout d'éléments à un vecteur (`append`) :**
  
  - **Syntaxe :** `append(x, values, after = length(x))`
  
  - **Description :** Ajoute les valeurs spécifiées à la position spécifiée dans le vecteur `x`.
  
  - **Exemple :**
     ```R
     vecteur <- c(10, 20, 30)
     vecteur_etendu <- append(vecteur, c(40, 50), after = 2)
     # vecteur_etendu sera c(10, 20, 40, 50, 30)
     ```


9. **Médiane d'un vecteur (`median`) :**
    
  - La médiane d'un vecteur en R peut être calculée à l'aide de la fonction `median`. Voici la syntaxe, la description et un exemple :
  
  - **Syntaxe :** `median(x, na.rm = FALSE)`
  
  - **Description :** Calcule la médiane des éléments du vecteur `x`. La médiane est la valeur qui divise le vecteur en deux parties égales, où la moitié des valeurs sont inférieures et l'autre moitié sont supérieures.
  
  - **Exemple :**
     ```R
     vecteur <- c(10, 20, 30, 40, 50)
     mediane <- median(vecteur)
     # mediane sera 30
     ```

  - La fonction `median` gère automatiquement les vecteurs avec un nombre impair ou pair d'éléments. Vous pouvez également utiliser l'argument optionnel `na.rm` pour exclure les valeurs manquantes lors du calcul de la médiane.


10. **Écart-type d'un vecteur (`sd`) :**
  
  - En R, la fonction `sd` est utilisée pour calculer l'écart-type (standard deviation) d'un vecteur, ce qui mesure la dispersion des valeurs autour de la moyenne. Voici la syntaxe, la description et un exemple d'utilisation de la fonction `sd` :
  
  - **Syntaxe :** `sd(x, na.rm = FALSE)`
  
  - **Description :** Calcule l'écart-type des éléments du vecteur `x`. L'argument optionnel `na.rm` permet d'ignorer les valeurs manquantes lors du calcul.
  
  - **Exemple :**
     ```R
     vecteur <- c(10, 20, 30, 40, 50)
     ecart_type <- sd(vecteur)
     # ecart_type sera environ 15.81
     ```
    
11. **La fonction `summary`:**

La fonction `summary` appliquée à un vecteur en R fournit un résumé statistique des valeurs du vecteur. Le résumé dépend du type de données dans le vecteur. Voici un exemple avec un vecteur numérique :

```R
# Exemple avec un vecteur numérique
vecteur <- c(10, 20, 30, 40, NA)

# Utilisation de la fonction summary
resume_vecteur <- summary(vecteur)

# Affichage du résumé
print(resume_vecteur)
```

Le résultat affiché dépendra du vecteur fourni, mais pour un vecteur numérique, le résumé inclura généralement les éléments suivants :

- La moyenne
- Le 1er quartile (Q1)
- La médiane (2e quartile ou Q2)
- Le 3e quartile (Q3)
- La valeur minimale
- La valeur maximale
- Le nombre de valeurs manquantes (s'il y en a)

Par exemple, le résumé pour le vecteur `c(10, 20, 30, 40, NA)` pourrait ressembler à quelque chose comme ceci :

```R
   Min. 1st Qu. Median    Mean 3rd Qu.    Max.    NA's 
  10.0   20.0   30.0   25.0   40.0   40.0      1 
```

Dans cet exemple, `NA's` indique qu'il y a une valeur manquante dans le vecteur.

N'oubliez pas que le résumé généré dépend du type de données dans le vecteur. Pour un vecteur contenant des caractères ou d'autres types de données, le résumé sera adapté à ces types spécifiques.


