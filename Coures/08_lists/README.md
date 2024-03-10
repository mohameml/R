# cour 08 : **``Lists``**


## 1. **Introduction:**

### 1.1 **Definition:**

>les listes sont des structures de données très flexibles et puissantes qui permettent de stocker différents types d'objets, tels que des vecteurs, des matrices, des dataframes, voire même d'autres listes. 

- Contrairement aux vecteurs qui ne peuvent contenir qu'un seul type d'élément, les listes peuvent regrouper des éléments de types différents. Cela en fait un outil essentiel pour la manipulation et l'**organisation** de données complexes dans le langage de programmation R.


### 1.2 **Creation :`list()`**

- **Description:**
    >La fonction `list()` en R est utilisée pour créer des listes. 


- **La syntaxe générale de la fonction `list()` est la suivante :**

    ```R
    ma_liste <- list(element1, element2, ..., elementN)
    ```

    Chaque élément peut être de n'importe quel type, y compris d'autres listes. 

- **Exemple:**

    ```R
    # Création d'une liste avec différents types d'éléments
    v <- c(1,2,3,4)
    df <- mtcars
    mat <- matrix(1:10 , nrow=2)

    my.list <- list(v,df,mat)
    my.list


    # Affichage de la liste
    print(my.list)
    ```

    Dans cet exemple, `ma_liste` est une liste avec trois éléments

    ```output
    [[1]]
    [1] 1 2 3 4

    [[2]]
                        mpg cyl  disp  hp drat    wt  qsec vs am gear carb
    Mazda RX4           21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
    Mazda RX4 Wag       21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
    Datsun 710          22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
    Hornet 4 Drive      21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
    Hornet Sportabout   18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
    Valiant             18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1

    [[3]]
        [,1] [,2] [,3] [,4] [,5]
    [1,]    1    3    5    7    9
    [2,]    2    4    6    8   10   
    
    ```


## 2. **Nommer une list:**

- **Avec la fonction ``names()``:**

    ```R
    # Créer une liste
    ma_liste <- list(1,c(2,3,4), matrix(1:10 ,nrow=2))

    # Nommer les éléments de la liste
    names(ma_liste) <- c("premier", "deuxième", "troisième")



    ```

    Dans cet exemple, la liste initiale a des éléments sans nom. Ensuite, la fonction `names()` est utilisée pour attribuer des noms aux éléments de la liste. 


- **nommer les éléments lors de la création de la liste**. 

    ```R
    # Créer une liste avec des noms
    ma_liste <- list(premier = 1, deuxième = 2, troisième = 3)

    # Afficher la liste
    print(ma_liste)
    ```

    Dans ce cas, les éléments de la liste sont nommés dès sa création.


- **nommer  un élément:**

    >En R, si vous voulez nommer spécifiquement un élément d'une liste en utilisant son indice, vous pouvez le faire en accédant à l'indice directement et en utilisant la fonction `names()` pour attribuer un nom. Voici un exemple :

        ```R
        # Créer une liste
        ma_liste <- list(1, 2, 3)

        # Afficher la liste avant de nommer
        print(ma_liste)

        # Nommer un élément par son indice
        names(ma_liste)[2] <- "deuxième"

        # Afficher la liste après avoir nommé par indice
        print(ma_liste)
        ```


### RQ 1: **Affichage d'une liste nommée:**

```R
l <- list(
  name = c("sidi" , "khaled") ,
  age = c(12, 15)
)


print(l)

```

```output
$name
[1] "sidi"   "khaled"

$age
[1] 12 15
```

### RQ 2 : 

- Si vous accédez à un élément dans une liste avec son indice `l[1]`, cela renvoie une sous-liste contenant cet élément. En revanche, avec son nom `l$nom`, cela renvoie directement l'élément lui-même.

- mais il existe une autre façon d'accéder à l'élément lui-même avec double crochet `[[ ]]`. Ainsi, `l[[indice]]` retourne directement l'élément.

## 3. **Accéder à une liste:**

- **Description :**

    >Accéder à une liste en R se fait en utilisant l'opérateur d'indexation `[ ]` ou `$nom`. 


- **Syntaxe :**
    La syntaxe générale pour accéder à un élément d'une liste est la suivante :
    ```R
    # Avce indice : 
    nom_de_liste[indice]
    # Avec nom 
    nom_de_liste$nom_elem
    ```
    - `nom_de_liste` : Le nom de votre liste.
    - `indice` : L'indice de l'élément auquel vous souhaitez accéder. Les indices commencent à 1 en R.
    - `nom_elem` : nom de l'élément 

- **Exemple :**

    ```R
    ma_liste <- list("Premier", 42, c(1, 2, 3), TRUE)

    # 
    ma_liste[2] # 42 

    names(ma_liste) <- c("P" ,"nm" ,"vec" ,"bool")

    # 
    ma_liste$bool 
    ```

#### RQ : **l'utilisation d'un indice négatif:**


- En R, l'utilisation d'un indice négatif pour accéder à une liste permet d'exclure certains éléments de la liste. Voici un exemple :

    ```R
    ma_liste <- list("Premier", 42, c(1, 2, 3), TRUE)
    elements_sans_deuxieme <- ma_liste[-2]
    print(elements_sans_deuxieme)
    ```

- Il est important de noter que l'indice négatif ne modifie pas la liste d'origine, mais crée une nouvelle liste. Si vous voulez modifier la liste d'origine, vous devez assigner la nouvelle liste à la variable d'origine, comme ceci :

    ```R
    ma_liste <- ma_liste[-2]
    ```




