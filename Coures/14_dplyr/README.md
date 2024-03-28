# cour 14 : **Manipulation de données :``dplyr``**





## 1 **Introduction:**


- **Description:**

    >Le package dplyr est une bibliothèque de programmation en R qui facilite la manipulation, la transformation et l'analyse de données. 
    
    - Il offre un ensemble de fonctions puissantes et cohérentes pour effectuer diverses opérations sur les données, telles que la sélection de colonnes, le filtrage de lignes, la création de nouvelles variables, le regroupement de données et la réalisation de calculs agrégés. 
    

- **installation:**


    Pour installer le package dplyr en R, vous pouvez utiliser la fonction `install.packages()`. Voici comment procéder :

    ```R
    install.packages("dplyr")
    ```

    Cette commande téléchargera et installera la dernière version du package dplyr depuis le référentiel CRAN (Comprehensive R Archive Network).
    
- **Importer:**
    
    vous pouvez charger le package dplyr dans votre session R à l'aide de la fonction `library()` :

    ```R
    library(dplyr)
    ```

    Cela rendra toutes les fonctionnalités du package dplyr disponibles dans votre environnement R et masque qq fonction par défaut en R .


## 2. **les fonctions ``filter()`` && ``slice()`` :**

### 2.1 **La fonction `filter()`:**

- **Description** :
    >La fonction `filter()` en R est utilisée pour sélectionner un sous-ensemble de lignes (observations) d'un jeu de données en fonction de conditions spécifiques.
    
    - Elle est particulièrement utile lorsqu'on souhaite extraire des observations qui répondent à certaines conditions prédéfinies.

- **Syntaxe** :
    ```R
    filter(data, condition , condition2 , ...)
    ```
    - `data` : Le dataframe (ou tibble) à filtrer.
    - `condition` : La condition ou les conditions à appliquer pour filtrer les données.


- **Exemple** :
    Supposons que nous avons un dataframe `students` avec les colonnes `Name`, `Age` et `Grade`. Nous voulons filtrer les étudiants qui ont plus de 18 ans.

    ```R
    # Exemple de données
    students <- data.frame(
    Name = c("Alice", "Bob", "Charlie", "David"),
    Age = c(20, 18, 21, 17),
    Grade = c("A", "B", "C", "A")
    )

    # Filtrer les étudiants de plus de 18 ans
    filtered_students <- filter(students, Age > 18)

    # Afficher les étudiants filtrés
    print(filtered_students)
    ```

    ```
        Name Age Grade
    1   Alice  20     A
    2 Charlie  21     C
    ```



### 2.2 **La fonction `slice()`:**


- **Description** :

    >La fonction `slice()` en R est utilisée pour sélectionner des lignes spécifiques d'un dataframe en fonction de leur position. Contrairement à `filter()`, qui sélectionne des lignes en fonction de conditions logiques, `slice()` sélectionne des lignes en fonction de leur position dans le dataframe.


- **Syntaxe** :
    ```R
    slice(data, rows)
    ```
    - `data` : Le dataframe (ou tibble) à partir duquel extraire les lignes.
    - `rows` : Un vecteur d'indices de lignes à extraire.


- **Exemple** :
    Supposons que nous avons un dataframe `students` avec les colonnes `Name`, `Age` et `Grade`. Nous voulons extraire les deuxième et troisième lignes du dataframe.

    ```R
    # Exemple de données
    students <- data.frame(
    Name = c("Alice", "Bob", "Charlie", "David"),
    Age = c(20, 18, 21, 17),
    Grade = c("A", "B", "C", "A")
    )

    # Utiliser slice pour extraire les lignes 2 et 3
    selected_rows <- slice(students, 2:3)

    # Afficher les lignes sélectionnées
    print(selected_rows)
    ```

    ```
        Name Age Grade
    1    Bob  18     B
    2 Charlie  21     C
    ```

## 3. **les fonctions ``arrange()`` && ``rename()``:**

### 3.1 **La fonction `arrange()`:**


- **Description** :
    
    >La fonction `arrange()` permet de réorganiser les lignes d'un dataframe en fonction des valeurs d'une ou plusieurs colonnes, dans un ordre croissant ou décroissant.


- **Syntaxe** :
    ```R
    arrange(data, ...)
    ```
    - `data` : Le dataframe (ou tibble) à trier.
    - `...` : Les colonnes à utiliser pour le tri, séparées par des virgules. Vous pouvez spécifier plusieurs colonnes pour effectuer un tri en cascade.

- **Exemple** :
    Supposons que nous avons un dataframe `students` avec les colonnes `Name`, `Age` et `Grade`. Nous voulons trier les étudiants par âge croissant, puis par nom alphabétique.

    ```R
    # Exemple de données
    students <- data.frame(
    Name = c("Alice", "Bob", "Charlie", "David"),
    Age = c(20, 18, 21, 17),
    Grade = c("A", "B", "C", "A")
    )

    # Utiliser arrange pour trier les étudiants par âge croissant, puis par nom alphabétique
    sorted_students <- arrange(students, Age, Name)

    # Afficher les étudiants triés
    print(sorted_students)
    ```

    Résultat :
    ```
        Name Age Grade
    1  David  17     A
    2    Bob  18     B
    3  Alice  20     A
    4 Charlie  21     C
    ```


####  RQ : ordre décroissant

- Pour trier en ordre décroissant dans la fonction `arrange()`, vous pouvez utiliser la fonction `desc()` pour spécifier que vous voulez trier une colonne en ordre décroissant. 

```R
# Trier les étudiants par âge décroissant
sorted_students <- arrange(students, desc(Age))

# Afficher les étudiants triés en ordre décroissant
print(sorted_students)
```

### 3.2 **la fonction ``rename()``:**


- **Description** :

    >La fonction `rename()` en R est utilisée pour renommer les colonnes d'un dataframe. Elle permet de spécifier de nouveaux noms pour les colonnes existantes, facilitant ainsi la personnalisation des noms de colonnes afin de mieux correspondre aux besoins de l'utilisateur.


- **Syntaxe** :

    ```R
    rename(data, new_column_name = old_column_name, ...)
    ```
    - `data` : Le dataframe (ou tibble) dont les colonnes seront renommées.
    - `new_column_name` : Le nouveau nom de la colonne.
    - `old_column_name` : Le nom actuel de la colonne que vous souhaitez renommer.
    - `...` : Autres colonnes à renommer.

- **Exemple** :

    Supposons que nous avons un dataframe `students` avec une colonne appelée `StudentID`, et nous voulons la renommer en `ID`.

    ```R
    # Exemple de données
    students <- data.frame(
        StudentID = c(1, 2, 3) ,
        Name = c("Alice", "Bob", "Charlie")
    )

    # Renommer la colonne StudentID en ID
    renamed_students <- rename(students, ID = StudentID)

    # Afficher le dataframe avec les colonnes renommées
    print(renamed_students)
    ```

    ```
    ID    Name
    1  1   Alice
    2  2     Bob
    3  3 Charlie
    ```




## 4. **les fonctions ``select()`` && ``distinct()``:**


### 4.1 **la fonction  ``select()``:**


- **Description** :

    >La fonction `select()` dans le package dplyr est utilisée pour sélectionner un sous-ensemble de colonnes à partir d'un dataframe. Elle permet de choisir les colonnes que vous souhaitez conserver dans le dataframe et de les réorganiser selon vos besoins.

- **Syntaxe** :

    ```R
    select(data, col1, col2, ...)
    ```
    - `data` : Le dataframe (ou tibble) à partir duquel sélectionner les colonnes.
    - `col1`, `col2`, ... : Les noms des colonnes à conserver dans le dataframe.


- **Exemple** :

    Supposons que nous avons un dataframe `students` avec les colonnes `Name`, `Age` et `Grade`, et nous voulons sélectionner uniquement les colonnes `Name` et `Grade`.

    ```R
    # Exemple de données
    students <- data.frame(
        Name = c("Alice", "Bob", "Charlie"),
        Age = c(20, 18, 21),
        Grade = c("A", "B", "C")
    )

    # Sélectionner uniquement les colonnes Name et Grade
    selected_columns <- select(students, Name, Grade)

    # Afficher le dataframe avec les colonnes sélectionnées
    print(selected_columns)
    ```

    Résultat :
    ```
        Name Grade
    1   Alice     A
    2     Bob     B
    3 Charlie     C
    ```



### 4.2 **la fonction  ``distinct()``:**


- **Description** :

    >La fonction `distinct()` dans le package dplyr est utilisée pour filtrer les lignes d'un dataframe afin de ne conserver que les observations uniques. Elle permet de supprimer les lignes en double ou les doublons d'un dataframe, laissant uniquement une occurrence de chaque **observation** unique.


- **Syntaxe** :
    ```R
    distinct(data, col1, col2, ...)
    ```
    - `data` : Le dataframe (ou tibble) à partir duquel supprimer les doublons.
    - `col1`, `col2`, ... : Les noms des colonnes à considérer pour identifier les observations uniques. Si aucun argument n'est spécifié, toutes les colonnes du dataframe sont utilisées.


- **Exemple** :

    Supposons que nous avons un dataframe `students` avec les colonnes `Name`, `Age` et `Grade`, et nous voulons supprimer les doublons basés sur les colonnes `Age` et `Grade`.

    ```R
    # Exemple de données
    students <- data.frame(
    Name = c("Alice", "Bob", "Alice"),
    Age = c(20, 18, 20),
    Grade = c("A", "B", "A")
    )

    # Supprimer les doublons basés sur les colonnes Age et Grade
    unique_students <- distinct(students, Age, Grade)

    # Afficher le dataframe avec les observations uniques
    print(unique_students)
    ```

    ```
    Age Grade
    1  20     A
    2  18     B
    ```



## 5. **les fonctions ``mutate()`` et ``transmute()``:**


### 5.1 **la fonction  ``mutate()``:**

- **Description** :

    >La fonction `mutate()` dans le package dplyr est utilisée pour créer de nouvelles colonnes dans un dataframe en fonction de transformations ou de calculs effectués sur les colonnes existantes. Elle permet d'ajouter des variables dérivées au dataframe en appliquant des opérations spécifiques à chaque ligne.



- **Syntaxe** :

    ```R
    mutate(data, new_column = expression, ...)
    ```
    - `data` : Le dataframe (ou tibble) auquel ajouter de nouvelles colonnes.
    - `new_column` : Le nom de la nouvelle colonne à créer.
    - `expression` : L'expression ou l'opération à appliquer pour calculer les valeurs de la nouvelle colonne.
    - `...` : Autres nouvelles colonnes à créer et leurs expressions correspondantes.


- **Exemple** :
    Supposons que nous avons un dataframe `students` avec les colonnes `Name`, `Age` et `Grade`, et nous voulons créer une nouvelle colonne `Age_in_months` qui représente l'âge des étudiants en mois.

    ```R
    # Exemple de données
    students <- data.frame(
    Name = c("Alice", "Bob", "Charlie"),
    Age = c(20, 18, 21),
    Grade = c("A", "B", "C")
    )

    # Créer une nouvelle colonne Age_in_months
    students_with_months <- mutate(students, Age_in_months = Age * 12)

    # Afficher le dataframe avec la nouvelle colonne
    print(students_with_months)
    ```

    ```
        Name Age Grade Age_in_months
    1   Alice  20     A           240
    2     Bob  18     B           216
    3 Charlie  21     C           252
    ```




### 5.2 **la fonction  ``transmute()``:**


- **Description** :

    >La fonction `transmute()` dans le package dplyr est utilisée pour créer de nouvelles variables dans un dataframe en effectuant des transformations sur les colonnes existantes.
    
    - Elle est similaire à la fonction `mutate()`, mais contrairement à `mutate()`, qui conserve les colonnes existantes dans le dataframe, `transmute()` remplace le dataframe d'origine par un nouveau dataframe contenant uniquement les nouvelles variables créées.


- **Syntaxe** :

    ```R
    transmute(data, new_column1 = expression1, new_column2 = expression2, ...)
    ```
    - `data` : Le dataframe (ou tibble) d'origine.
    - `new_column1`, `new_column2`, ... : Les noms des nouvelles variables à créer.
    - `expression1`, `expression2`, ... : Les expressions ou transformations à appliquer pour calculer les valeurs des nouvelles variables.


- **Exemple** :

    Supposons que nous avons un dataframe `students` avec les colonnes `Name`, `Age` et `Grade`, et nous voulons créer une nouvelle variable `Status` qui indique si l'étudiant a réussi ou échoué en fonction de sa note (`Grade`).

    ```R
    # Exemple de données
    students <- data.frame(
        Name = c("Alice", "Bob", "Charlie"),
        Age = c(20, 18, 21),
        Grade = c(85, 72, 60)
    )

    # Créer une nouvelle variable "Status" avec transmute
    students <- transmute(students, Status = ifelse(Grade >= 60, "Pass", "Fail"))

    # Afficher le dataframe avec la nouvelle variable "Status"
    print(students)
    ```

    Résultat :
    ```
        Status
    1   Pass
    2   Pass
    3   Pass
    ```



## 6. **les fonctions `summarise()` && `group_by()`:**

### 6.1 **la fonction `summarise()`:**

- **Description** :

    >La fonction `summarise()` en R est utilisée pour agréger les données dans un dataframe en calculant des statistiques récapitulatives, telles que la moyenne, la somme, l'écart-type, etc., sur les valeurs d'une ou plusieurs colonnes.


- **Syntaxe** :

    ```R
    summarise(data, new_column = fonction(colonne), ...)
    ```
    - `data` : Le dataframe (ou tibble) à agréger.
    - `new_column` : Le nom de la nouvelle colonne à créer pour stocker le résultat agrégé.
    - `fonction(colonne)` : La fonction d'agrégation à appliquer à la colonne spécifiée.
    - `...` : Autres nouvelles colonnes à créer et agréger.

- **Exemple** :
    Supposons que nous avons un dataframe `students` avec les colonnes `Name`, `Age` et `Grade`. Nous voulons calculer la moyenne d'âge des étudiants.

    ```R
    # Exemple de données : 
    students <- data.frame (
        Name = c("Alice", "Bob", "Charlie", "David") ,
        Age = c(20, 18, 21, 17) ,
        Grade = c("A", "B", "C", "A")
    )

    # Calculer la moyenne d'âge des étudiants
    summary_data <- summarise(students, mean_age = mean(Age))

    # Afficher le résumé statistique
    print(summary_data)

    ```

    ```
        mean_age
    1     19.0
    ```


### 6.2 **La fonction `group_by()`:**

- **Description** :

    >La fonction `group_by()` dans le package dplyr est utilisée pour regrouper les lignes d'un dataframe en fonction des valeurs d'une ou plusieurs variables. Elle permet de diviser les données en groupes distincts en fonction des valeurs des variables spécifiées, afin de pouvoir appliquer des opérations groupées sur chaque groupe séparément.

- **Syntaxe** :

    ```R
    group_by(data, group_vars, add = FALSE)
    ```
    - `data` : Le dataframe (ou tibble) à regrouper.
    - `group_vars` : Les noms des variables à utiliser pour regrouper les données.
    - `add` : Une valeur logique indiquant s'il faut ajouter les variables de regroupement au dataframe résultant.

- **Exemple** :

    Supposons que nous avons un dataframe `students` avec les colonnes `Name`, `Age` et `Grade`, et nous voulons calculer la moyenne d'âge par grade.

    ```R
    # Exemple de données
    students <- data.frame(
    Name = c("Alice", "Bob", "Charlie", "David", "Emily"),
    Age = c(20, 18, 21, 19, 22),
    Grade = c("A", "B", "C", "A", "B")
    )

    # Regrouper les étudiants par grade
    grouped_students <- group_by(students, Grade)

    # Calculer la moyenne d'âge par grade
    summary_data <- summarise(grouped_students, mean_age = mean(Age))

    # Afficher le résumé statistique
    print(summary_data)
    ```

    Résultat :
    ```
    # A tibble: 3 × 2
    Grade mean_age
    <chr>    <dbl>
    1 A           19.5
    2 B           20  
    3 C           21
    ```

    Dans cet exemple, `group_by()` est utilisé pour regrouper les données `students` par grade. Ensuite, la fonction `summarise()` est utilisée pour calculer la moyenne d'âge pour chaque groupe de grade, produisant ainsi un nouveau dataframe `summary_data` avec la moyenne d'âge par grade.



## 7. **les fonctions ``sample_n()`` et ``sample_frac()`` :**


### 7.1 **la fonction  ``sample_n()``:**

- **Description** :

    >La fonction `sample_n()` dans le package dplyr est utilisée pour échantillonner un nombre spécifique d'observations à partir d'un dataframe. Elle permet de sélectionner aléatoirement un nombre prédéfini d'observations sans remplacement.


- **Syntaxe** :

    ```R
    sample_n(data, size)
    ```
    - `data` : Le dataframe (ou tibble) à partir duquel échantillonner.
    - `size` : Le nombre d'observations à échantillonner.


- **Exemple** :

    Supposons que nous avons un dataframe `students` avec les colonnes `Name`, `Age` et `Grade`, et nous voulons échantillonner aléatoirement 2 étudiants à partir de ce dataframe.

    ```R
    # Exemple de données
    students <- data.frame(
    Name = c("Alice", "Bob", "Charlie", "David", "Emily"),
    Age = c(20, 18, 21, 19, 22),
    Grade = c("A", "B", "C", "A", "B")
    )

    # Échantillonner aléatoirement 2 étudiants
    sampled_students <- sample_n(students, 2)

    # Afficher les étudiants échantillonnés
    print(sampled_students)
    ```

    Résultat (l'échantillonnage peut produire un résultat différent à chaque exécution) :
    ```
        Name Age Grade
    1  Emily  22     B
    2 Charlie  21     C
    ```




### 7.2 **la fonction  ``sample_frac()``:**



- **Description** :
    >La fonction `sample_frac()` dans le package dplyr est utilisée pour échantillonner un pourcentage spécifié d'observations à partir d'un dataframe. Elle permet de sélectionner aléatoirement un pourcentage prédéfini d'observations sans remplacement.




- **Syntaxe** :

    ```R
    sample_frac(data, size)
    ```
    - `data` : Le dataframe (ou tibble) à partir duquel échantillonner.
    - `size` : Le pourcentage d'observations à échantillonner, exprimé comme un nombre entre 0 et 1 (par exemple, 0.5 pour 50%).


- **Exemple** :
    Supposons que nous avons un dataframe `students` avec les colonnes `Name`, `Age` et `Grade`, et nous voulons échantillonner aléatoirement 50% des étudiants à partir de ce dataframe.

    ```R
    # Exemple de données
    students <- data.frame(
    Name = c("Alice", "Bob", "Charlie", "David", "Emily"),
    Age = c(20, 18, 21, 19, 22),
    Grade = c("A", "B", "C", "A", "B")
    )

    # Échantillonner aléatoirement 50% des étudiants
    sampled_students <- sample_frac(students, 0.5)

    # Afficher les étudiants échantillonnés
    print(sampled_students)
    ```

    Résultat (l'échantillonnage peut produire un résultat différent à chaque exécution) :
    ```
        Name Age Grade
    1 Charlie  21     C
    2     Bob  18     B
    ```



## 8. **Pipe Opération:``%>%``**

- **Description** :

    >L'opérateur de pipe `%>%` en R, originaire du package magrittr mais souvent utilisé en conjonction avec le package dplyr, permet d'appliquer de manière fluide une séquence d'opérations sur un objet. Cela permet une écriture de code plus lisible et concise en organisant les étapes de traitement des données de manière séquentielle, de gauche à droite.

- **Syntaxe** :

    ```R
    data %>% fonction1() %>% fonction2() %>% ... %>% fonctionN()

    # ou 
    data %>% 
        fonction1() %>% 
        fonction2() %>% 
        ...         %>% 
        fonctionN()
    ```
    - `data` : L'objet de données sur lequel les opérations seront appliquées.
    - `fonction1()`, `fonction2()`, ..., `fonctionN()` : Les fonctions à appliquer successivement à l'objet de données. Le résultat de chaque étape est passé comme premier argument à la fonction suivante.


- **Exemple** :

    Supposons que nous avons un dataframe `students` avec les colonnes `Name`, `Age` et `Grade`, et nous voulons sélectionner les étudiants de plus de 18 ans et calculer la moyenne de leur âge.

    ```R
    # Exemple de données
    students <- data.frame(
    Name = c("Alice", "Bob", "Charlie", "David"),
    Age = c(20, 18, 21, 17),
    Grade = c("A", "B", "C", "A")
    )

    # Utilisation de l'opérateur de pipe pour sélectionner les étudiants de plus de 18 ans et calculer la moyenne de leur âge
    mean_age <- students %>%
    filter(Age > 18) %>%
    summarize(mean_age = mean(Age))

    # Afficher la moyenne d'âge des étudiants de plus de 18 ans
    print(mean_age)
    ```

    Résultat :
    ```
    mean_age
    1       20
    ```
