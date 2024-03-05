# cour : **Vecteur**

## 1. **Introduction:**

>un vecteur est une structure de données fondamentale permettant de stocker une séquence **ordonnée** d'éléments de **même type**. Il représente un ensemble de valeurs regroupées de manière homogène, que ce soit des nombres, des caractères, des logiques ou d'autres types de données pris en charge par R.


- **Les vecteurs en R sont caractérisés par les aspects suivants :**

    1. **Homogénéité :** Tous les éléments d'un vecteur doivent être du même type de données. Cela signifie qu'un vecteur ne peut pas contenir des éléments hétérogènes.

    2. **Indexation :** Les éléments d'un vecteur peuvent être accédés individuellement à l'aide d'indices. L'indexation commence par  1, ce qui signifie que le premier élément d'un vecteur est accessible avec l'indice 1.

    3. **Longueur :** La longueur d'un vecteur est le nombre d'éléments qu'il contient. La fonction `length()` est utilisée pour déterminer la longueur d'un vecteur.

    4. **Opérations vectorielles :** Les opérations arithmétiques, logiques et statistiques peuvent être appliquées à l'ensemble d'un vecteur, ce qui facilite le traitement de données massives sans nécessiter de boucle explicite.

    5. **Création de vecteurs :** Les vecteurs peuvent être créés en utilisant la fonction `c()` (combine) pour regrouper des éléments de même type. Ils peuvent également être générés à l'aide de séquences, de fonctions ou d'autres méthodes spécifiques au type de vecteur souhaité.





## 2. **Declaration des vecteurs:**

>En R, il existe plusieurs façons de déclarer des vecteurs, en fonction de vos besoins spécifiques et du type de données que vous souhaitez stocker. 



1. **la fonction ``c``:**
    
  >Pour déclarer un vecteur en R à l'aide de la fonction `c()` (combine), vous pouvez spécifier les éléments du vecteur entre les parenthèses et les séparer par des virgules. 
  
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



2. **la fonction `seq()`**

  >La fonction `seq()` en R est utilisée pour générer des séquences de nombres. Vous pouvez l'utiliser pour créer un vecteur en spécifiant le début, la fin et l'incrément de la séquence.

  
  - **Voici un exemple de déclaration d'un vecteur avec la fonction `seq()` :**

    ```R
    # Création d'un vecteur de 1 à 10 avec un pas de 1
    mon_vecteur <- seq(from = 1, to = 10, by = 1)
    print(mon_vecteur)
    ```

    Dans cet exemple, `mon_vecteur` contiendra les nombres de 1 à 10 inclus, avec un pas de 1 entre chaque nombre.


3. **`letters`**

  >En R, la fonction `letters` est utilisée pour générer un vecteur de lettres de l'alphabet en minuscules. 
  
  
  - **Voici comment vous pouvez déclarer un vecteur avec la fonction `letters` :**

    ```R
    # Création d'un vecteur avec les lettres de l'alphabet
    mon_vecteur_lettres <- letters
    print(mon_vecteur_lettres)
    ```

    Dans cet exemple, `mon_vecteur_lettres` sera un vecteur contenant les lettres de l'alphabet de 'a' à 'z'.

      Si vous souhaitez obtenir les lettres en majuscules, vous pouvez utiliser la fonction `LETTERS` de la même manière :

      ```R
      # Création d'un vecteur avec les lettres de l'alphabet en majuscules
      mon_vecteur_lettres_maj <- LETTERS
      print(mon_vecteur_lettres_maj)
      ```

    Cela créera un vecteur avec les lettres majuscules de l'alphabet de 'A' à 'Z'.





4. **la fonction ``rep`` :**
    
  >La fonction `rep()` en R est utilisée pour répéter les éléments d'un vecteur. Elle permet de générer des vecteurs en répétant des valeurs spécifiées. 
  
  - **La syntaxe de base de la fonction `rep()` est la suivante :**

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

  >Si vous souhaitez créer un vecteur allant de `strat` à `end`, vous pouvez utiliser la fonction `:` pour créer une séquence. 

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



## 3. **Indexation && slicing:**

### 3.1 **Definition:**

>En R, l'indexation et le "slicing" (tranche) sont des concepts fondamentaux pour accéder et manipuler des éléments dans des structures de données telles que des vecteurs, des matrices, des listes et des dataframes. Voici une brève explication de ces concepts :

1. **Indexation :**
   
   - **Définition :** L'indexation fait référence au processus d'accès à des éléments spécifiques dans une structure de données en utilisant leur position ou leur nom d'index.

   - **Exemple avec un vecteur :**
     ```R
     mon_vecteur <- c(10, 20, 30, 40, 50)
     premier_element <- mon_vecteur[1]  # Accès au premier élément
     print(premier_element)  # Cela affichera 10
     ```

2. **Slicing (tranche) :**
   
   - **Définition :** Le slicing fait référence à la sélection d'une plage (tranche) d'éléments dans une structure de données.

   - **Exemple avec un vecteur :**
     ```R
     mon_vecteur <- c(10, 20, 30, 40, 50)
     sous_vecteur <- mon_vecteur[2:4]  # Sélection des éléments de l'index 2 à 4
     print(sous_vecteur)  # Cela affichera 20, 30, 40
     ```



L'indexation et le slicing peuvent varier légèrement en fonction du type de structure de données que vous utilisez. Ces concepts sont essentiels pour manipuler efficacement les données dans R.




### 3.2 **Indexation && slicing:**

1. **Accéder à un élément unique :**

  - Pour accéder à un élément unique dans un vecteur en R, vous pouvez utiliser l'index de l'élément que vous souhaitez extraire. 

  - L'indexation commence  à 1 dans R. 

  - **Voici la syntaxe avec un exemple :**
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

  - **Exemple 1 :** 
    ```R
    elements_positifs <- vecteur_numerique[vecteur_numerique > 0]
    # elements_positifs contiendra c(10, 20, 30, 40, 50)


    ```

  - **Exemple 2 :** 

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


- Si vous essayez d'accéder à un index supérieur à la longueur du vecteur, R renverra `NA` (Not Available) pour les valeurs inexistantes au-delà de la longueur du vecteur.

  ```R
  vecteur <- c(10, 20, 30)
  valeur_inexistante <- vecteur[4]
  # La valeur_inexistante sera NA
  ```

- Lorsque vous essayez d'assigner une valeur à un indice qui n'existe pas dans le vecteur, R va étendre le vecteur en ajoutant des valeurs `NA` pour atteindre l'indice spécifié. 

    ```R
    vec <- c(10, 12)

    # Tentative d'assignation à l'indice 5
    vec[5] <- 6

    # Affichage du vecteur mis à jour
    print(vec)
    # Le résultat sera : c(10, 12, NA, NA, 6)
    ```




## 4. **Les opérations arithmétiques sur les vecteurs:**

>Les opérations arithmétiques sur les vecteurs en R peuvent être effectuées de manière simple et efficace en utilisant les opérateurs arithmétiques standard. Ces opérations peuvent être appliquées à des vecteurs de manière élément-wise, ce qui signifie que chaque élément du vecteur est combiné avec l'élément correspondant de l'autre vecteur ou avec le scalaire. Les vecteurs doivent être de même longueur pour que ces opérations soient valides.


- **Voici une liste des opérations arithmétiques couramment utilisées sur les vecteurs en R :**

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

  8. **Comparaison:**

    ```R
    v1 < v2  # return un vecteur logique 
    ```








## 5. **fonctions de manupilation:**


>En R, il existe plusieurs fonctions qui permettent de manipuler les vecteurs. Ces fonctions facilitent des opérations telles que la création de vecteurs, l'accès à des éléments spécifiques, la modification de valeurs, le filtrage, la concaténation et bien plus encore.Les possibilités de manipulation de vecteurs en R sont vastes, offrant une flexibilité et une puissance considérables lors de l'analyse et de la manipulation de données.



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

3. **Tri d'un vecteur (`sort`) :**
  
  - **Syntaxe :** `sort(x, decreasing = FALSE)`
  
  - **Description :** Trie les éléments du vecteur `x` par ordre croissant (ou décroissant).
  
  - **Exemple :**
     ```R
     vecteur <- c(30, 10, 50, 20, 40)
     vecteur_tri <- sort(vecteur)
     # vecteur_tri sera c(10, 20, 30, 40, 50)
     ```

4. **Ajout d'éléments à un vecteur (`append`) :**
  
  - **Syntaxe :** `append(x, values, after = length(x))`
  
  - **Description :** Ajoute les valeurs spécifiées à la position spécifiée dans le vecteur `x`.
  
  - **Exemple :**
     ```R
     vecteur <- c(10, 20, 30)
     vecteur_etendu <- append(vecteur, c(40, 50), after = 2)
     # vecteur_etendu sera c(10, 20, 40, 50, 30)
     # ou 
     append(vecteur , 50)
     ```

5. **la fonction `unique()`:**

  - **Description:**
    
    >En R, la fonction `unique()` est utilisée pour extraire les valeurs uniques d'un vecteur. Cette fonction renvoie un nouveau vecteur  contenant uniquement les éléments uniques de l'objet d'origine.

  
  - **Voici un exemple d'utilisation de la fonction `unique()` avec un vecteur :**

    ```R
    # Création d'un vecteur avec des valeurs répétées
    mon_vecteur <- c(1, 2, 3, 1, 2, 4, 5, 3, 6)

    # Utilisation de unique() pour extraire les valeurs uniques
    valeurs_uniques <- unique(mon_vecteur)

    print(valeurs_uniques)
    ```

    Dans cet exemple, `valeurs_uniques` sera un vecteur contenant les valeurs uniques de `mon_vecteur` (c'est-à-dire 1, 2, 3, 4, 5, 6), et les doublons seront supprimés.


## 6.**nommer un vecteur:``names``**

- **Description:**

  >En R, la fonction `names()` est utilisée pour attribuer ou récupérer des noms aux éléments d'un vecteur. Cela permet d'associer des noms explicites à chaque élément du vecteur, ce qui peut être utile pour référencer ces éléments de manière plus compréhensible.


- **Syntaxe:**
  
  Pour nommer un vecteur en utilisant la fonction `names()` en R, vous pouvez attribuer un vecteur de chaînes de caractères comme noms aux éléments du vecteur. Voici la syntaxe générale :

    ```R
    # Syntaxe pour nommer un vecteur avec la fonction names()
    names(votre_vecteur) <- c("Nom1", "Nom2", "Nom3", ...)
    ```



- **Exemple:**


  ```R
  # Création d'un vecteur
  mon_vecteur <- c(10, 20, 30, 40, 50)

  # Attribution de noms aux éléments du vecteur
  names(mon_vecteur) <- c("Premier", "Deuxième", "Troisième", "Quatrième", "Cinquième")

  print(mon_vecteur)
  ```

  Dans cet exemple, chaque élément du vecteur est maintenant associé à un nom spécifique. Lorsque vous imprimez le vecteur, vous verrez ces noms à côté de chaque valeur.


- **Indxation avce les noms:**

  >Pour accéder aux éléments d'un vecteur via les noms en R, vous pouvez utiliser les noms associés à chaque élément. 
  
  - **Voici la syntaxe générale :**

    ```R
    # Accéder à un élément par son nom
    element <- votre_vecteur["Nom"]
    ```

  - **Exemple concret :**

    ```R
    # Création d'un vecteur avec des noms
    mon_vecteur <- c("Premier" = 10, "Deuxième" = 20, "Troisième" = 30, "Quatrième" = 40, "Cinquième" = 50)

    # Accéder à un élément par son nom
    element_troisieme <- mon_vecteur["Troisième"]

    print(element_troisieme)
    ```

    Dans cet exemple, la syntaxe `mon_vecteur["Troisième"]` permet d'accéder à l'élément du vecteur qui a le nom "Troisième". Le résultat sera un sous-vecteur contenant uniquement cet élément, mais avec le nom préservé.

    Vous pouvez également accéder à plusieurs éléments en fournissant un vecteur de noms :

    ```R
    # Accéder à plusieurs éléments par leurs noms
    elements <- mon_vecteur[c("Premier", "Cinquième")]

    print(elements)
    ```

    Cela renverra un sous-vecteur contenant les éléments associés aux noms "Premier" et "Cinquième".



- **récupérer les noms d'un vecteur:**

  >Vous pouvez également utiliser la fonction `names()` pour récupérer les noms d'un vecteur existant :

    ```R
    # Récupération des noms du vecteur
    noms <- names(mon_vecteur)

    print(noms)
    ```

    Cela renverra les noms associés à chaque élément du vecteur, ce qui peut être utile dans certaines situations, par exemple, pour effectuer des opérations basées sur les noms plutôt que sur les indices.


    


