# cour 02 : **Variables et Opérations arithmétiques**


## 1. Variables en R :

>En programmation, une variable est un conteneur nommé qui stocke une valeur ou une donnée. En R, les variables jouent un rôle crucial dans la manipulation des données et l'exécution de calculs. Voici une introduction aux variables en R :

- **Définition d'une Variable en R :**
    - Une variable en R est créée en lui attribuant une valeur à l'aide de l'opérateur d'affectation `<-` ou du signe égal `=`.
    - Exemple :
        ```R
        x <- 5
        y = 10
        ```

- **Règles de Nommage des Variables en R :**
    - Les noms de variables en R doivent commencer par une lettre (majuscule ou minuscule) ou un point suivi de lettres, chiffres ou points.
    - Il est recommandé d'utiliser des noms de variables significatifs et des conventions de casse comme le snake_case ou le camelCase.
    - Exemples de noms valides :
        ```R
        age
        nomComplet
        variable_1
        is.fonct1
        ```


- **Affectation de Valeurs à une Variable :**
    - Une valeur est attribuée à une variable en utilisant l'opérateur d'affectation `<-` ou le signe égal `=`.
    - Exemple :
        ```R
        prenom <- "John"
        ```

- **Affichage de la Valeur d'une Variable :**
    - Utilisez la fonction `print()` ou simplement le nom de la variable pour afficher sa valeur.
    - Exemple :
        ```R
        print(prenom)
        ```

- **Modification de Valeurs de Variable :**
    - La valeur d'une variable peut être modifiée en lui attribuant une nouvelle valeur.
    - Exemple :
        ```R
        x <- x + 1
        ```



#### RQ : 

- Dans le nom de fonction `is.fonct1`, le point (`.`) n'est pas un opérateur. Il fait simplement partie du nom de la fonction. En R, le point est un caractère légal dans les noms de fonctions, et il peut être utilisé comme un séparateur ou comme une partie intégrante du nom.

- Dans ce cas précis, le point est utilisé comme une partie du nom de la fonction pour indiquer qu'il s'agit d'une fonction de test de type. La convention d'utiliser "is." comme préfixe suivi d'un terme descriptif (ici, "fonct1") permet de rendre le nom de la fonction plus descriptif de son objectif.



## 2.**Les Commentaires:**

>En R, les commentaires sont des annotations dans le code source qui ne sont pas exécutées. Ils sont utilisés pour ajouter des explications, des notes ou des informations supplémentaires dans le code afin de le rendre plus lisible et compréhensible. Voici comment ajouter des commentaires en R :

- **Commentaires sur une ligne :**

    Les commentaires sur une ligne commencent par le symbole `#`. Tout ce qui suit le `#` sur la ligne est considéré comme un commentaire.

    ```R
    # Ceci est un commentaire sur une ligne
    x <- 5  # Ceci est un commentaire à la fin de la ligne de code
    ```

- **Commentaires sur plusieurs lignes :**

    R n'a pas de syntaxe spécifique pour les commentaires sur plusieurs lignes, mais vous pouvez utiliser plusieurs lignes de commentaires sur une ligne.

    ```R
    # Ceci est un commentaire sur
    # plusieurs lignes en R
    ```

- **Astuce :**
    
    Dans RStudio, vous pouvez commenter ou décommenter rapidement une sélection de lignes de code en utilisant le raccourci clavier `Ctrl + Shift + C` (Windows/Linux) ou `Cmd + Shift + C` (Mac).

- **Bonnes pratiques :**
    - Utilisez des commentaires pour expliquer la logique complexe, les décisions de conception, ou pour fournir des informations sur le code.
    - Évitez les commentaires évidents qui répètent simplement ce que fait le code.
    - Assurez-vous que vos commentaires sont à jour. Les commentaires obsolètes peuvent être trompeurs.



## 3. Opérations arithmétiques en R :


R prend en charge les opérations arithmétiques de base pour effectuer des calculs avec des variables. Voici quelques opérations courantes :

```R
# Addition
resultat_addition <- x + y
print(resultat_addition)  # Affiche 7.5

# Soustraction
resultat_soustraction <- x - y
print(resultat_soustraction)  # Affiche 2.5

# Multiplication
resultat_multiplication <- x * y
print(resultat_multiplication)  # Affiche 12.5

# Division
resultat_division <- x / y
print(resultat_division)  # Affiche 2

# Modulo (reste de la division)
resultat_modulo <- x %% y
print(resultat_modulo)  # Affiche 0

# Puissance
resultat_puissance <- x^2
print(resultat_puissance)  # Affiche 25
```

