# cour 02 : Les Types des données en R 


## 1. **Introduction aux Variables en R :**

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

    #### RQ : 

    Dans le nom de fonction `is.fonct1`, le point (`.`) n'est pas un opérateur. Il fait simplement partie du nom de la fonction. En R, le point est un caractère légal dans les noms de fonctions, et il peut être utilisé comme un séparateur ou comme une partie intégrante du nom.

    Dans ce cas précis, le point est utilisé comme une partie du nom de la fonction pour indiquer qu'il s'agit d'une fonction de test de type. La convention d'utiliser "is." comme préfixe suivi d'un terme descriptif (ici, "fonct1") permet de rendre le nom de la fonction plus descriptif de son objectif.

    Ainsi, dans `is.fonct1`, "is" est le préfixe et "fonct1" est le nom spécifique associé à ce test de type particulier. 


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



## 2. **Typage en R :**

R est généralement considéré comme un langage de programmation à typage dynamique. Cela signifie que le type d'une variable n'est pas spécifié explicitement lors de sa déclaration, et il peut changer dynamiquement pendant l'exécution du programme.

En R, vous pouvez attribuer des valeurs de différents types à une même variable au cours de l'exécution du programme sans avoir à déclarer son type à l'avance. Cette flexibilité est caractéristique du typage dynamique.

Par exemple, vous pouvez avoir une variable qui commence par contenir un nombre entier, puis lui attribuer une valeur de type caractère plus tard dans le programme, sans rencontrer d'erreurs de typage.

Cependant, bien que le typage soit généralement dynamique, cela ne signifie pas qu'il n'y ait pas de règles ou de contraintes sur les opérations entre différents types. Certaines opérations peuvent nécessiter des types de données compatibles, et R essaie souvent de faire des conversions implicites lorsque cela est possible.

En résumé, R est un langage de programmation à typage dynamique, offrant une flexibilité dans la manipulation des types de données pendant l'exécution du programme.



## 3. **les types de données numériques:**

>Le type de données numérique en R est utilisé pour représenter des nombres réels (décimaux) tels que des nombres à virgule flottante. Les variables de type numérique sont couramment utilisées pour stocker des valeurs qui peuvent avoir des parties fractionnaires. Ce type de données est largement utilisé dans les analyses statistiques, les calculs mathématiques et d'autres opérations nécessitant une précision décimale.

Les principales caractéristiques du type numérique en R incluent la capacité à effectuer des opérations mathématiques , telles que l'addition, la soustraction, la multiplication et la division. Les résultats de ces opérations peuvent être stockés dans des variables de type numérique, permettant ainsi de manipuler et de traiter des données numériques de manière efficace.

Il est important de noter que R offre également d'autres types numériques plus spécifiques, tels que les entiers (`integer`) et les nombres complexes (`complex`), qui permettent une représentation plus précise des différentes formes de données numériques. Cependant, le type numérique reste le choix standard pour la représentation des nombres réels dans de nombreuses situations en R.


Voici quelques-uns des types numériques de base en R :

1. **Numeric :**
   - Le type de base pour les nombres décimaux.
   - Exemple :
     ```R
     x <- 5.7
     ```

2. **Integer (Entier) :**
   - Utilisé pour représenter des nombres entiers.
   - Les entiers sont créés en ajoutant le suffixe "L" à la valeur.
   - Exemple :
     ```R
     y <- 10L
     ```

3. **Double (Double précision) :**
   - Utilisé pour représenter des nombres en double précision.
   - Exemple :
     ```R
     a <- 3.14159
     ```

5. **Infinity et NaN (Not a Number) :**
   - R utilise `Inf` pour représenter l'infini et `NaN` pour représenter les valeurs indéfinies ou non numériques.
   - Exemple :
     ```R
     infini <- Inf
     indetermine <- NaN
     ```

6. **Opérations Numériques :**
   - Les opérations mathématiques courantes peuvent être effectuées sur les types numériques, telles que l'addition, la soustraction, la multiplication et la division.
   - Exemple :
     ```R
     somme <- x + y
     produit <- x * y
     quotient <- x / y
     resultat_puissance <- x^y 
     resultat_modulo <- x %% y
     ```

## 4. **le type de données ``logical``:** 

En R, le type de données **logical** est utilisé pour représenter les valeurs booléennes, c'est-à-dire des valeurs logiques qui peuvent être soit `TRUE` (vrai) soit `FALSE` (faux). Voici quelques points clés sur le type **logical** en R :

1. **Déclaration de valeurs logiques :**
   - Les valeurs logiques sont généralement déclarées en utilisant les mots-clés `TRUE` ou `FALSE`. Par exemple :
     ```R
     logique_vrai <- TRUE
     logique_faux <- FALSE
     ```

2. **Opérations logiques :**
   - Les opérations logiques telles que l'ET (`&`), le OU (`|`), et la négation (`!`) peuvent être utilisées avec des valeurs logiques. Par exemple :
     ```R
     resultat_et <- logique_vrai & logique_faux  # FALSE
     resultat_ou <- logique_vrai | logique_faux  # TRUE
     resultat_negation <- !logique_vrai  # FALSE
     ```

3. **Comparaisons logiques :**
   - Les comparaisons logiques génèrent des valeurs logiques. Par exemple :
     ```R
     comparaison_egale <- (1 == 2)  # FALSE
     comparaison_superieur <- (3 > 2)  # TRUE
     ```

4. **Fonctions logiques :`any()` et `all()`**
   - Les fonctions logiques telles que `any()` et `all()` sont utilisées pour vérifier si au moins un élément est vrai (`TRUE`) ou si tous les éléments sont vrais. Par exemple :
     ```R
     vecteur_logique <- c(TRUE, FALSE, TRUE)
     au_moins_un_vrai <- any(vecteur_logique)  # TRUE
     tous_vrais <- all(vecteur_logique)  # FALSE
     ```

5. **Conversion vers "logical" :**
   - D'autres types de données peuvent être convertis en valeurs logiques. Par exemple, le nombre 0 est converti en `FALSE`, et tout autre nombre est converti en `TRUE`.

Le type **logical** est couramment utilisé dans les opérations conditionnelles, les boucles, les filtres de données et d'autres situations où des décisions basées sur des conditions sont nécessaires. Il est un élément essentiel dans la programmation logique en R.


## 5. **le type de données ``character``:**

En R, le type de données **character** est utilisé pour représenter des chaînes de caractères. Une chaîne de caractères est simplement une séquence de caractères, tels que des lettres, des chiffres, des espaces ou d'autres symboles. Voici quelques points clés sur le type "character" en R :

1. **Déclaration de caractères :**
   - Les chaînes de caractères sont déclarées en utilisant des guillemets simples (`'`) ou doubles (`"`). Par exemple :
     ```R
     chaine1 <- 'Bonjour'
     chaine2 <- "Monde"
     ```

2. **Concaténation de chaînes :**
   - Les chaînes de caractères peuvent être concaténées à l'aide de l'opérateur `paste()` ou le symbole `c()`. Par exemple :
     ```R
     concatenation <- paste(chaine1, chaine2 , sep =" ") # sep pour la séparation  
     ```

3. **Longueur d'une chaîne :**
   - La fonction `nchar()` est utilisée pour obtenir la longueur d'une chaîne de caractères. Par exemple :
     ```R
     longueur <- nchar(chaine1)
     ```

4. **Indexation des caractères :**
    Si vous voulez accéder à un caractère spécifique dans une chaîne, vous pouvez utiliser la fonction `substr()` 

    - **Utilisation de `substr()` :**
        ```R
        premier_caractere <- substr(chaine1, 1, 1) # index 1 debut de la hiane (et non 0 )
        ```


5. **Opérations sur les chaînes :**
   - Des opérations telles que la recherche de motifs (`grep()`), le remplacement de sous-chaînes (`sub()`), et la conversion entre majuscules et minuscules (`toupper()`, `tolower()`) peuvent être effectuées sur les chaînes de caractères.

Le type **character** est largement utilisé dans le traitement du texte, la manipulation des données textuelles et la représentation des étiquettes ou des catégories. Il est important de noter que R ne distingue pas entre les guillemets simples et doubles pour la déclaration de chaînes de caractères, vous pouvez donc utiliser l'un ou l'autre selon votre préférence.




## 6. **Notion ``mode`` en R :**

### 6.1 **Definition:**
En R, la notion de ``mode`` fait référence au type de données ou à la classe de base d'un objet. Le mode d'un objet R est généralement utilisé pour indiquer la nature fondamentale de ses données. La fonction `mode()` est utilisée pour obtenir le mode d'un objet spécifique.

Voici quelques exemples de modes courants en R :

1. **Mode "numeric" :**
   - Représente les nombres réels (décimaux).

2. **Mode "character" :**
   - Représente les chaînes de caractères.

3. **Mode "logical" :**
   - Représente les valeurs logiques (`TRUE` ou `FALSE`).

4. **Mode "complex" :**
   - Représente les nombres complexes.

5. **Mode "raw" :**
   - Représente les données brutes, souvent utilisées pour stocker des octets.

6. **Mode "list" :**
   - Représente une liste, une structure de données pouvant contenir des éléments de différents modes.

7. **Mode "NULL" :**
   - Représente un objet nul.

La fonction `mode()` renvoie le mode de l'objet passé en argument. Par exemple :

```R
x <- "Hello"
mode_x <- mode(x)
print(mode_x)  # Cela peut renvoyer "character"
```

Il est important de noter que le mode d'un objet ne donne pas toujours une description détaillée de sa structure interne. Pour des informations plus détaillées, d'autres fonctions telles que `typeof()`, `class()`, ou `str()` peuvent être utilisées en fonction du contexte. La fonction `mode()` est souvent utilisée en conjonction avec d'autres pour obtenir une compréhension complète de la nature des données d'un objet.

### 6.2 **la fonction ``mode``:**

>la fonction `mode()` est utilisée pour déterminer le mode (type de données) d'un objet. Le mode d'un objet R peut être l'un des suivants :

1. **"numeric" :** Pour les nombres réels (décimaux).
2. **"character" :** Pour les chaînes de caractères.
3. **"logical" :** Pour les valeurs logiques (TRUE ou FALSE).
4. **"complex" :** Pour les nombres complexes.
5. **"raw" :** Pour les données brutes (octets).
6. **"list" :** Pour les listes.
7. **"NULL" :** Pour les objets nuls.

La fonction `mode()` prend un objet en argument et renvoie son mode. Voici un exemple d'utilisation de la fonction `mode()` :

```R
# Exemple avec différents types de données
nombre <- 5.5
texte <- "Bonjour"
logique <- TRUE
complexe <- 3 + 2i
donnees_brutes <- as.raw(c(65, 66, 67))
liste <- list(1, "deux", TRUE)
nul <- NULL

# Utilisation de la fonction mode()
mode_nombre <- mode(nombre)
mode_texte <- mode(texte)
mode_logique <- mode(logique)
mode_complexe <- mode(complexe)
mode_donnees_brutes <- mode(donnees_brutes)
mode_liste <- mode(liste)
mode_nul <- mode(nul)

# Affichage des modes
print(mode_nombre)
print(mode_texte)
print(mode_logique)
print(mode_complexe)
print(mode_donnees_brutes)
print(mode_liste)
print(mode_nul)
```

## 7. **La fonction `typeof()`:**

La fonction `typeof()` en R est utilisée pour déterminer le type de données de base d'un objet. Contrairement à la fonction `class()`, qui fournit des informations sur la classe d'un objet (utile notamment pour les objets orientés objet), la fonction `typeof()` donne le type de données fondamental.

Voici comment utiliser la fonction `typeof()` en R :

```R
# Exemple avec différents types de données
nombre <- 5.5
texte <- "Bonjour"
logique <- TRUE
complexe <- 3 + 2i
donnees_brutes <- as.raw(c(65, 66, 67))
liste <- list(1, "deux", TRUE)
nul <- NULL

# Utilisation de la fonction typeof()
type_nombre <- typeof(nombre)
type_texte <- typeof(texte)
type_logique <- typeof(logique)
type_complexe <- typeof(complexe)
type_donnees_brutes <- typeof(donnees_brutes)
type_liste <- typeof(liste)
type_nul <- typeof(nul)

# Affichage des types
print(type_nombre)
print(type_texte)
print(type_logique)
print(type_complexe)
print(type_donnees_brutes)
print(type_liste)
print(type_nul)
```

Voici quelques-uns des résultats que vous pouvez obtenir avec `typeof()` :

- "double" : Pour les nombres réels (décimaux).
- "character" : Pour les chaînes de caractères.
- "logical" : Pour les valeurs logiques (TRUE ou FALSE).
- "complex" : Pour les nombres complexes.
- "raw" : Pour les données brutes (octets).
- "list" : Pour les listes.
- "NULL" : Pour les objets nuls.

La fonction `typeof()` est particulièrement utile pour déterminer le type fondamental d'un objet, ce qui peut être important dans certaines opérations et vérifications.


## 8. **les fonctions de test de type is.QQ():**

Les fonctions de test de type en R, telles que `is.numeric()`, `is.character()`, `is.logical()`, etc., sont utilisées pour vérifier le type d'un objet donné. Elles retournent une valeur logique (TRUE ou FALSE) indiquant si l'objet est du type spécifié. Voici une brève introduction à certaines de ces fonctions :


1. **`is.numeric()` :**
   - Teste si un objet est de type numérique.
   - Exemple :
     ```R
     x <- 5
     is.numeric(x)  # Renvoie TRUE
     ```

2. **`is.character()` :**
   - Teste si un objet est de type caractère (chaîne de caractères).
   - Exemple :
     ```R
     y <- "Hello"
     is.character(y)  # Renvoie TRUE
     ```

3. **`is.logical()` :**
   - Teste si un objet est de type logique.
   - Exemple :
     ```R
     z <- TRUE
     is.logical(z)  # Renvoie TRUE
     ```

4. **`is.data.frame()` :**
   - Teste si un objet est un data frame.
   - Exemple :
     ```R
     df <- data.frame(a = c(1, 2), b = c("A", "B"))
     is.data.frame(df)  # Renvoie TRUE
     ```

5. **`is.list()` :**
   - Teste si un objet est une liste.
   - Exemple :
     ```R
     liste <- list(1, "deux", TRUE)
     is.list(liste)  # Renvoie TRUE
     ```

Ces fonctions sont souvent utilisées pour effectuer des vérifications de type avant d'effectuer certaines opérations ou pour s'assurer que les données sont dans le format attendu. 


## 9. **le type ``NA``:**

En R, `NA` (Not Available) est utilisé pour représenter les données manquantes ou non disponibles. C'est une valeur spéciale qui indique qu'une valeur est manquante ou inconnue dans le contexte des données. Voici quelques points importants à propos de `NA` en R :

1. **Représentation des données manquantes :** `NA` est utilisé pour représenter des données manquantes dans un vecteur ou une structure de données. Par exemple, si une observation dans un ensemble de données n'a pas de valeur pour une variable particulière, cette valeur peut être représentée par `NA`.

   ```R
   vecteur <- c(10, NA, 30, NA, 50)
   ```

2. **Compatibilité avec différents types de données :** `NA` peut être utilisé avec différents types de données en R, tels que numériques, caractères, logiques, etc. Par exemple, `NA` peut être utilisé pour représenter une valeur manquante dans un vecteur numérique ou une chaîne de caractères manquante.

   ```R
   vecteur_numerique <- c(10, NA, 30, NA, 50)
   vecteur_caracteres <- c("a", "b", NA, "d")
   ```

3. **Traitement de `NA` :** Lorsque des opérations sont effectuées sur des vecteurs contenant des `NA`, le résultat peut également être `NA`. Cela reflète l'incertitude associée à des données manquantes.

   ```R
   somme <- sum(c(10, NA, 30, NA, 50))
   # La somme sera NA car il y a des données manquantes
   ```

4. **Fonctions pour gérer `NA` :** R propose des fonctions spécifiques pour travailler avec des données contenant des `NA`, telles que `is.na()` pour tester si des valeurs sont `NA`, et `na.rm` comme argument dans certaines fonctions pour exclure les `NA` lors du calcul.

   ```R
   vecteur <- c(10, NA, 30, NA, 50)
   est_na <- is.na(vecteur)
   # est_na sera c(FALSE, TRUE, FALSE, TRUE, FALSE)
   ```

En résumé, `NA` en R est utilisé pour représenter des données manquantes, et il est important de prendre en compte son comportement particulier lors de l'analyse de données contenant ces valeurs spéciales.