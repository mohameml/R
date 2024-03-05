# cour : **Introudction au DataTypes en R**


## 1. **Introduction DataType en R :**

- R est généralement considéré comme un langage de programmation à typage dynamique. Cela signifie que le type d'une variable n'est pas spécifié explicitement lors de sa déclaration, et il peut changer dynamiquement pendant l'exécution du programme.

    ```R
    a <- 2
    b <- "hello !!"

    ```

- En R, vous pouvez attribuer des valeurs de différents types à une même variable au cours de l'exécution du programme sans avoir à déclarer son type à l'avance. Cette flexibilité est caractéristique du typage dynamique.

    Par exemple, vous pouvez avoir une variable qui commence par contenir un nombre entier, puis lui attribuer une valeur de type caractère plus tard dans le programme, sans rencontrer d'erreurs de typage.

    ```R
    a <- 1
    # a few minutes later :
    a <- "bonjour"

    ```


- Cependant, bien que le typage soit généralement dynamique, cela ne signifie pas qu'il n'y ait pas de règles ou de contraintes sur les opérations entre différents types. Certaines opérations peuvent nécessiter des types de données compatibles, et R essaie souvent de faire des conversions implicites lorsque cela est possible.

    ```R
    "1" >= 1 # TRUE
    "1" + 1 # Erreur dans 1 + "1" : argument non numérique pour un opérateur binaire
    ```

## 2. **DataType en R:**

En R, il existe une variété de types qui vont des nombres aux chaînes de caractères, en passant par les valeurs logiques. Voici une brève description de chaque type que nous détaillerons par la suite dans le cours.

1. **Numérique (numeric)** : Représente les nombres réels, tels que 3.14 ou -15.8.

2. **Entier (integer)** : Représente les nombres entiers, tels que 42 ou -7.

3. **Logique (logical)** : Représente les valeurs logiques avec les options TRUE ou FALSE.

4. **Caractère (character)** : Représente les chaînes de caractères (texte), comme "Bonjour" ou "123".

5. **Facteur (factor)** : Représente les données catégorielles ou les variables catégoriques avec des niveaux spécifiques.

6. **Date (Date)** : Représente les dates au format YYYY-MM-DD.

7. **Date et heure (POSIXct, POSIXlt)** : Représentent les dates et heures avec des informations sur le fuseau horaire.

8. **Liste (list)** : Représente une collection ordonnée d'objets de différents types.

9. **Vecteur (vector)** : Représente une séquence ordonnée d'éléments du même type.

10. **Matrice (matrix)** : Représente un tableau bidimensionnel d'éléments du même type.

11. **Tableau (array)** : Représente un tableau multidimensionnel d'éléments du même type.

12. **Data frame** : Représente une structure de données tabulaire avec des colonnes pouvant être de types différents.

13. **Environnement (environment)** : Représente un environnement de variables, utilisé pour stocker des objets et leurs attributs.

Ces types de données forment un ensemble diversifié qui permet aux utilisateurs de traiter et d'analyser une grande variété de données en R. Chaque type a des propriétés et des méthodes spécifiques qui facilitent la manipulation et l'analyse des informations.





