# cour : **fonctions de manipulation de type:**



>En R il existe de fonctios pour manupiler le type des données . Les fonctions standard en R qui sont souvent utilisées pour manipuler les types de données incluent  `is.*()`, `as.*()`, `typeof()`, et `class()`.Ces fonctions sont couramment utilisées pour inspecter, manipuler et convertir les types de données en R.



1. **`is.*()` :**

    - **Description :** Les fonctions `is.*()` sont généralement utilisées pour vérifier le type d'un objet en renvoyant une valeur logique (TRUE ou FALSE). Par exemple, `is.numeric()` vérifie si un objet est de type numérique.

    - **Exemple :**
        ```R
        x <- 5
        is_numeric <- is.numeric(x)
        print(is_numeric)  # Cela affichera TRUE car x est de type numérique
        ```

2. **`as.*()` :**

    - **Description :** Les fonctions `as.*()` sont utilisées pour convertir un objet d'un type à un autre. Par exemple, `as.character()` convertit un objet en une chaîne de caractères.

    - **Exemple :**
        ```R
        y <- 3.14
        y_character <- as.character(y)
        print(y_character)  # Cela affichera la chaîne de caractères "3.14"
        ```

3. **`typeof()` :**

    - **Description :** La fonction `typeof()` renvoie le type de base de l'objet R sous forme de chaîne de caractères. Elle est utile pour obtenir une information sur le type interne de l'objet.

    - **Exemple :**
        ```R
        z <- TRUE
        type_z <- typeof(z)
        print(type_z)  # Cela affichera "logical" car z est de type logique
        ```

4. **`class()` :**

    - **Description :** La fonction `class()` renvoie le nom de la classe ou des classes auxquelles appartient l'objet. Elle est souvent utilisée pour déterminer la classe d'un objet dans le système de classes de R (surtout dans le cadre de la programmation orientée objet).

    - **Exemple :**
        ```R
        w <- c(1, 2, 3)
        class_w <- class(w)
        print(class_w)  # Cela affichera "numeric" car w est un vecteur numérique
        ```

