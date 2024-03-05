# cour 05 : **Matrice en R**

## 1. **Introduction:**

### 1.1 **Definition:**

>En R, une matrice est une structure de données bidimensionnelle qui contient des éléments de même type. Elle est essentiellement une extension d'un vecteur à deux dimensions. Une matrice peut être créée en utilisant la fonction `matrix()`.



### 1.2 **Création d'une Matrice :**

- **la fonction ``matrix()``:**

    >La fonction `matrix()` en R est utilisée pour créer une matrice. Elle prend comme arguments les éléments à insérer dans la matrice, le nombre de lignes (`nrow`), le nombre de colonnes (`ncol`), et d'autres paramètres optionnels. 
    
- **Voici la syntaxe générale :**

    ```R
    matrix(data, nrow = ..., ncol = ..., byrow = FALSE, dimnames = NULL)
    ```

    - `data` : Les éléments à insérer dans la matrice, cela peut être un vecteur ou une liste.
    - `nrow` : Le nombre de lignes dans la matrice.
    - `ncol` : Le nombre de colonnes dans la matrice.
    - `byrow` : Un argument logique indiquant si les éléments doivent être remplis par ligne (TRUE) ou par colonne (FALSE).
    - `dimnames` : Une liste de deux éléments, chacun étant une liste de noms pour les lignes et les colonnes.


- **Voici quelques exemples d'utilisation de la fonction `matrix()` :**

    - **Exemple 1:**

        ```R
        # Création d'un vecteur
        vec <- c(3, 7, 11)

        # Création d'une matrice avec le vecteur comme colonne
        ma_matrice <- matrix(vec)

        print(ma_matrice) # une matrice de taille 3*1
        ```

        Dans cet exemple, `ma_matrice` sera une matrice avec une seule colonne et autant de lignes que le nombre d'éléments dans le vecteur `vec`.

        Notez que la fonction `matrix()` remplit par défaut par colonne, donc pas besoin de spécifier `byrow` ici. Le nombre de lignes (`nrow`) sera automatiquement déterminé en fonction de la longueur du vecteur.

    - **Exemple 2 : Création d'une matrice 3x3 avec des nombres de 1 à 9 :**

        ```R
        ma_matrice <- matrix(1:9, nrow = 3, ncol = 3)

        print(ma_matrice)
        ```

    - **Exemple 3: avce ``byrow=TRUE``**

        Lorsque vous créez une matrice en utilisant `byrow = TRUE`, les éléments du vecteur sont remplis par ligne. Voici un exemple :

        ```R
        # Création d'une matrice avec byrow=TRUE
        ma_matrice_byrow <- matrix(1:6, nrow = 2, byrow = TRUE)

        print(ma_matrice_byrow)
        ```

        Dans cet exemple, le vecteur `1:6` est rempli dans la matrice par ligne. Le résultat affiché sera :

        ```
            [,1] [,2] [,3]
        [1,]    1    2    3
        [2,]    4    5    6
        ```

### 1.3 **``colnames`` && ``rownames``:**

- **Description:**

    >Les fonctions ``colnames()`` et ``rownames()`` en R sont utilisées pour accéder ou définir les noms de colonnes et de lignes, respectivement, dans une matrice ou un dataframe.


- **Syntaxe:**
    - **pour nommer une matrice:**
        ```R
        # Définition des noms de colonnes
        colnames(ma_matrice) <- c("Colonne1", "Colonne2", "Colonne3")

        # Définition des noms de lignes
        rownames(ma_matrice) <- c("Ligne1", "Ligne2")

        ```
    -  **pour accéder au nom des colonnes et lignes:**

        ```R
        # vecteur contient les nomes des colonnes
        colnames(objet)

        # vecteur contien les nomes de lignes 
        rownames(objetc)

        ```


- **Exemple:**

    ```R
    goog <- c(452 , 430 , 400 ,400, 410 )
    msfc <- c(200 , 210 , 150 , 140 , 400)

    data <- matrix(c(goog , msfc) , nrow = 2 , byrow = TRUE) 
    print(data)

    colnames(data) <- c("MOn" , "Tues" ,"Wond" , "Thrues" , "Fri")
    rownames(data) <- c("Google" , "MSFC")
    print(data)
    ```




### RQ :

- Si le nombre total d'éléments que vous fournissez à la fonction `matrix()` n'est pas divisible par le nombre de lignes spécifié (`nrow`), R générera un avertissement et remplira la matrice autant que possible. Les éléments restants seront ignorés :

    ```R
        Warning message:
        In matrix(1:8, nrow = 3) :
        data length [8] is not a sub-multiple or multiple of the number of rows [3]
    ```




## 2. **Les opérations arithmétiques:**


>Les opérations arithmétiques sur les matrices en R se font de manière élément par élément. Cela signifie que les opérations sont effectuées entre des éléments correspondants des matrices. 


- **Addition et Soustraction :**

    ```R
    # Création de deux matrices
    matrice1 <- matrix(1:6, nrow = 2)
    matrice2 <- matrix(7:12, nrow = 2)

    # Addition
    resultat_addition <- matrice1 + matrice2

    # Soustraction
    resultat_soustraction <- matrice1 - matrice2

    print("Matrice 1 :")
    print(matrice1)

    print("Matrice 2 :")
    print(matrice2)

    print("Addition :")
    print(resultat_addition)

    print("Soustraction :")
    print(resultat_soustraction)
    ```

- **Multiplication par un Scalaire :**

    ```R
    # Création d'une matrice
    ma_matrice <- matrix(1:4, nrow = 2)

    # Multiplication par un scalaire
    resultat_multiplication <- ma_matrice * 2

    print("Matrice :")
    print(ma_matrice)

    print("Multiplication par un scalaire :")
    print(resultat_multiplication)
    ```

- **Multiplication Élément par Élément :**

    ```R
    # Création de deux matrices
    matrice1 <- matrix(1:4, nrow = 2)
    matrice2 <- matrix(5:8, nrow = 2)

    # Multiplication élément par élément
    resultat_multiplication_element_par_element <- matrice1 * matrice2

    print("Matrice 1 :")
    print(matrice1)

    print("Matrice 2 :")
    print(matrice2)

    print("Multiplication élément par élément :")
    print(resultat_multiplication_element_par_element)
    ```

- **Transposition d'une matrice :**

    ```R
    # Création d'une matrice
    ma_matrice <- matrix(1:4, nrow = 2)

    # Transposition de la matrice
    resultat_transposition <- t(ma_matrice)

    print(resultat_transposition)
    ```


- **Multiplication Matricielle :**

    ```R
    # Création de deux matrices
    matrice1 <- matrix(1:4, nrow = 2)
    matrice2 <- matrix(5:8, nrow = 2)

    # Multiplication matricielle
    resultat_multiplication_matricielle <- matrice1 %*% t(matrice2)

    print("Matrice 1 :")
    print(matrice1)

    print("Matrice 2 :")
    print(matrice2)

    print("Multiplication matricielle :")
    print(resultat_multiplication_matricielle)
    ```

- **filtrer des éléments d'une matrice:**

    vous pouvez utiliser une condition pour filtrer des éléments d'une matrice en R. L'utilisation de la syntaxe `mat[condition]` permet de sélectionner tous les éléments de la matrice `mat` qui verifie cette condition. Voici un exemple :

    ```R
    # Création d'une matrice
    ma_matrice <- matrix(1:9, nrow = 3)

    # Filtrage des éléments supérieurs à 5
    resultat_filtrage <- ma_matrice[ma_matrice > 5]

    print(resultat_filtrage)
    ```

    Dans cet exemple, `resultat_filtrage` sera **un vecteur** contenant tous les éléments de la matrice `ma_matrice` qui sont supérieurs à 5. Vous pouvez également utiliser des conditions plus complexes pour le filtrage selon vos besoins.


## 3. **fonction des manipulation matricielles:**



### 3.1 **fonction statistiques:**

>Ces fonctions sont utiles pour effectuer des analyses statistiques descriptives sur les matrices, notamment pour calculer des moyennes , .. etc par ligne ou par colonne dans le contexte de l'analyse de données numériques.

- **Fonction `colSums()` :**

    >La fonction `colSums()` retourne la somme des éléments de chaque colonne d'une matrice.

    ```R
    # Création d'une matrice
    ma_matrice <- matrix(1:9, nrow = 3)

    # Calcul des sommes par colonne
    sommes_colonnes <- colSums(ma_matrice)

    print(sommes_colonnes)
    ```

    Dans cet exemple, `sommes_colonnes` sera un vecteur contenant la somme des éléments de chaque colonne.

- **Fonction `rowSums()` :**

    >La fonction `rowSums()` retourne la somme des éléments de chaque ligne d'une matrice.

    ```R
    # Création d'une matrice
    ma_matrice <- matrix(1:9, nrow = 3)

    # Calcul des sommes par ligne
    sommes_lignes <- rowSums(ma_matrice)

    print(sommes_lignes)
    ```

    Dans cet exemple, `sommes_lignes` sera un vecteur contenant la somme des éléments de chaque ligne.


- **Fonction `rowMeans()` :**

    >La fonction `rowMeans()` retourne la moyenne des éléments de chaque ligne d'une matrice.

    ```R
    # Création d'une matrice
    ma_matrice <- matrix(1:9, nrow = 3)

    # Calcul des moyennes par ligne
    moyennes_lignes <- rowMeans(ma_matrice)

    print(moyennes_lignes)
    ```

    Dans cet exemple, `moyennes_lignes` sera un vecteur contenant la moyenne des éléments de chaque ligne.

- **Fonction `colMeans()` :**

    La fonction `colMeans()` retourne la moyenne des éléments de chaque colonne d'une matrice.

    ```R
    # Création d'une matrice
    ma_matrice <- matrix(1:9, nrow = 3)

    # Calcul des moyennes par colonne
    moyennes_colonnes <- colMeans(ma_matrice)

    print(moyennes_colonnes)
    ```

    Dans cet exemple, `moyennes_colonnes` sera un vecteur contenant la moyenne des éléments de chaque colonne.





### 3.2 **fonctions d'algèbre linéaire sur les matrices:**


- **Calcul de la trace d'une matrice :``trace``**

    La trace d'une matrice est la somme des éléments de sa diagonale principale.

    ```R
    # Calcul de la trace
    trace_matrice <- trace(ma_matrice)

    print(trace_matrice)
    ```

- **Calcul du déterminant d'une matrice :`det()`**

    Le déterminant d'une matrice carrée peut être calculé à l'aide de la fonction `det()`.

    ```R
    # Calcul du déterminant
    determinant_matrice <- det(ma_matrice)

    print(determinant_matrice)
    ```

- **Inversion d'une matrice :`solve()`**

    L'inversion d'une matrice carrée peut être effectuée à l'aide de la fonction `solve()`.

    ```R
    # Inversion de la matrice
    matrice_inverse <- solve(ma_matrice)

    print(matrice_inverse)
    ```

- **valeurs propres:`eigen()`**

    >Pour calculer les valeurs propres d'une matrice en R, vous pouvez utiliser la fonction `eigen()` qui renvoie un objet contenant les valeurs propres (``objet$values``) et les vecteurs propres associés (`objet$vectors`).

    - **Voici un exemple :**

        ```R
        # Création d'une matrice
        ma_matrice <- matrix(c(4, -2, 1, 2), nrow = 2)

        # Calcul des valeurs propres
        resultat_eigen <- eigen(ma_matrice)

        # Affichage des valeurs propres
        print(resultat_eigen$values)
        ```

        Dans cet exemple, `resultat_eigen$values` contient les valeurs propres de la matrice `ma_matrice`. Vous pouvez également accéder aux vecteurs propres associés avec `resultat_eigen$vectors`.


- **Décomposition en valeurs singulières (SVD) :`svd()`**

    La décomposition en valeurs singulières d'une matrice peut être réalisée avec la fonction `svd()`.

    ```R
    # Décomposition en valeurs singulières
    svd_resultat <- svd(ma_matrice)

    # Matrices U, Sigma, V
    U <- svd_resultat$u
    Sigma <- svd_resultat$d
    V <- svd_resultat$v

    print(U)
    print(Sigma)
    print(V)
    ```

## 4. **Ajouter des colonnes et des lignes:**

### 4.1 **``rbind()``**

- **la fonction ``rbind()``:**
    
    >La fonction `rbind()` en R est utilisée pour concaténer (joindre) des matrices ou des data frames par lignes, c'est-à-dire ajouter des lignes d'une matrice à une autre. 
    
    - **Voici un exemple simple :**

        ```R
        # Création de deux matrices
        matrice1 <- matrix(1:6, ncol = 2)
        matrice2 <- matrix(7:12, ncol = 2)

        # Utilisation de la fonction rbind pour concaténer les matrices par lignes
        resultat <- rbind(matrice1, matrice2)

        # Affichage du résultat
        print(resultat)
        ```

        Dans cet exemple, `matrice1` est une matrice 3x2 et `matrice2` est une matrice 3x2 également. Lorsque nous utilisons `rbind(matrice1, matrice2)`, cela crée une nouvelle matrice en ajoutant les lignes de `matrice2` à la suite de celles de `matrice1`. Le résultat est une matrice 6x2.


    -il faut que  que le nombre de colonnes des matrices que vous concaténez est le même, sinon une erreur sera générée. La fonction `rbind()` nécessite que les matrices aient le même nombre de colonnes pour pouvoir les concaténer par lignes.



- **Ajouter une ligne:**

    >Pour ajouter une ligne à une matrice existante en R, vous pouvez utiliser la fonction `rbind()` avec la matrice existante et la nouvelle ligne que vous souhaitez ajouter. 
    
    - **Voici un exemple :**

        ```R
        # Création d'une matrice existante
        matrice_existante <- matrix(1:6, ncol = 2)

        # Nouvelle ligne à ajouter
        nouvelle_ligne <- c(7, 8)

        # Utilisation de la fonction rbind pour ajouter la nouvelle ligne à la matrice existante
        matrice_avec_nouvelle_ligne <- rbind(matrice_existante, nouvelle_ligne)

        # Affichage du résultat
        print(matrice_avec_nouvelle_ligne)
        ```

        Dans cet exemple, `matrice_existante` est une matrice 3x2, et `nouvelle_ligne` est un vecteur de longueur 2. En utilisant `rbind(matrice_existante, nouvelle_ligne)`, nous 
        ajoutons la nouvelle ligne à la matrice existante par le bas, créant ainsi une nouvelle matrice avec une ligne supplémentaire.


### 4.2 **``cbind()``**


- **la fonction ``cbind()``:**

    >La fonction `cbind()` en R est utilisée pour concaténer (joindre) des matrices ou des data frames par colonnes, c'est-à-dire ajouter des colonnes d'une matrice à une autre. 
    
    - **Voici un exemple simple :**

        ```R
        # Création de deux matrices
        matrice1 <- matrix(1:3, ncol = 1)
        matrice2 <- matrix(4:6, ncol = 1)

        # Utilisation de la fonction cbind pour concaténer les matrices par colonnes
        resultat <- cbind(matrice1, matrice2)

        # Affichage du résultat
        print(resultat)
        ```

        Dans cet exemple, `matrice1` est une matrice 3x1 et `matrice2` est une matrice 3x1 également. Lorsque nous utilisons `cbind(matrice1, matrice2)`, cela crée une nouvelle matrice en ajoutant les colonnes de `matrice2` à la suite de celles de `matrice1`. Le résultat est une matrice 3x2.


    - Il faut  que le nombre de lignes des matrices que vous concaténez est le même, sinon une erreur sera générée. La fonction `cbind()` nécessite que les matrices aient le même nombre de lignes pour pouvoir les concaténer par colonnes.


- **Ajouter une colonne:**

    >Pour ajouter une colonne à une matrice existante en R, vous pouvez utiliser la fonction `cbind()` avec la matrice existante et la nouvelle colonne que vous souhaitez ajouter. 
    
    - **Voici un exemple :**

        ```R
        # Création d'une matrice existante
        matrice_existante <- matrix(1:3, ncol = 1)

        # Nouvelle colonne à ajouter
        nouvelle_colonne <- c(4, 5, 6)

        # Utilisation de la fonction cbind pour ajouter la nouvelle colonne à la matrice existante
        matrice_avec_nouvelle_colonne <- cbind(matrice_existante, nouvelle_colonne)

        # Affichage du résultat
        print(matrice_avec_nouvelle_colonne)
        ```

        Dans cet exemple, `matrice_existante` est une matrice 3x1, et `nouvelle_colonne` est un vecteur de longueur 3. En utilisant `cbind(matrice_existante, nouvelle_colonne)`, nous ajoutons la nouvelle colonne à la matrice existante sur le côté droit, créant ainsi une nouvelle matrice avec une colonne supplémentaire.


## 5. **Indexation et de découpage(slicing):**


- **Accéder à un élément spécifique :**

    - **Description :** Permet d'accéder à un élément spécifique de la matrice.

    - **Syntaxe :** `matrice[i, j]`

    - **Exemple :**
        ```R
        # Création d'une matrice
        matrice <- matrix(1:9, nrow = 3)

        # Accéder à l'élément à la 2e ligne et 3e colonne
        element <- matrice[2, 3]
        print(element)  # Affiche : 6
        ```

- **Accéder à une ligne spécifique :**

    - **Description :** Permet d'accéder à une ligne spécifique de la matrice.

    - **Syntaxe :** `matrice[i, ]`

    - **Exemple :**
        ```R
        # Accéder à toute la première ligne de la matrice
        ligne <- matrice[1, ]
        print(ligne)  # Affiche : 1 4 7
        ```

- **Accéder à une colonne spécifique :**

    - **Description :** Permet d'accéder à une colonne spécifique de la matrice.

    - **Syntaxe :** `matrice[, j]`

    - **Exemple :**
        ```R
        # Accéder à toute la deuxième colonne de la matrice
        colonne <- matrice[, 2]
        print(colonne)  # Affiche : 4 5 6
        ```

- **Accéder à plusieurs éléments spécifiques :**

    - **Description :** Permet d'accéder à plusieurs éléments spécifiques de la matrice.

    - **Syntaxe :** `matrice[c(i1, i2, ...), c(j1, j2, ...)]`

    - **Exemple :**
        ```R
        # Accéder à certains éléments de la matrice
        sous_matrice <- matrice[c(1, 2), c(1, 2)]
        print(sous_matrice)
        # Affiche :
        #      [,1] [,2]
        # [1,]    1    4
        # [2,]    7    2
        ```

- **Découpage de lignes :**

    - **Description :** Permet de découper des lignes spécifiques de la matrice.

    - **Syntaxe :** `matrice[i:j, ]`

    - **Exemple :**
        ```R
        # Découper les deux premières lignes de la matrice
        sous_matrice_lignes <- matrice[1:2, ]
        print(sous_matrice_lignes)
        # Affiche :
        #      [,1] [,2] [,3]
        # [1,]    1    4    7
        # [2,]    2    5    8
        ```

- **Découpage de colonnes :**

    - **Description :** Permet de découper des colonnes spécifiques de la matrice.

    - **Syntaxe :** `matrice[, j:k]`

    - **Exemple :**
        ```R
        # Découper les deux premières colonnes de la matrice
        sous_matrice_colonnes <- matrice[, 1:2]
        print(sous_matrice_colonnes)
        # Affiche :
        #      [,1] [,2]
        # [1,]    1    4
        # [2,]    2    5
        # [3,]    3    6
        ```

- **Découpage de certaines lignes et colonnes :**

    - **Description :** Permet de découper des lignes et des colonnes spécifiques de la matrice.

    - **Syntaxe :** `matrice[i:j, k:l]`

    - **Exemple :**
        ```R
        # Découper certaines lignes et colonnes de la matrice
        sous_matrice <- matrice[2:3, c(1, 3)]
        print(sous_matrice)
        # Affiche :
        #      [,1] [,2]
        # [1,]    2    8
        # [2,]    3    9
        ```
