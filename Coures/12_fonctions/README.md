# cour 12 : **Les fonctions**


## 1. **Introduction:**

- **Description:**

  >En R, les fonctions sont des blocs de code réutilisables qui effectuent une tâche spécifique lorsqu'elles sont appelées avec certains arguments. Elles permettent d'organiser le code de manière modulaire et de le réutiliser efficacement. 



- **Syntaxe de définition d'une fonction :**


  ```R
  nom_de_la_fonction <- function(arg1, arg2) {
    # Bloc de code à exécuter
    # (instructions de la fonction)
    return(resultat)  # Optionnel : renvoie un résultat
  }
  ```

  - `nom_de_la_fonction` : Nom de la fonction que vous définissez.
  - `arg1`, `arg2`, ... : Arguments que la fonction prend en entrée.
  - `resultat` : Optionnel, ce que la fonction renvoie comme résultat.


- **Exemple de définition d'une fonction :**

  ```R
  # Définition d'une fonction pour calculer la somme de deux nombres
  somme <- function(a, b) {
    resultat <- a + b  # Calcul de la somme
    return(resultat)  # Renvoi du résultat
  }
  ```


  Une fois qu'une fonction est définie, vous pouvez l'appeler avec des arguments spécifiques pour exécuter son code.

  ```R
  # Appel de la fonction "somme"
  resultat_somme <- somme(3, 5)
  print(resultat_somme)  # Affiche le résultat (8)
  ```

  Dans cet exemple, nous avons défini une fonction `somme` qui prend deux arguments `a` et `b` et renvoie la somme de ces deux nombres. Ensuite, nous avons appelé cette fonction avec les arguments 3 et 5, et le résultat a été stocké dans `resultat_somme` et affiché.



## 2. **default value:**

- **Description:**

  >En R, vous pouvez définir des valeurs par défaut pour les arguments d'une fonction. Les valeurs par défaut sont utilisées lorsque l'utilisateur n'a pas fourni d'argument correspondant lors de l'appel de la fonction. 


- **Syntaxe:**

  ```R
  # Définition d'une fonction avec des valeurs par défaut
  ma_fonction <- function(arg1 = valeur_par_defaut1, arg2 = valeur_par_defaut2, ...) {
    # Bloc de code à exécuter
    # (instructions de la fonction)
  }
  ```

  Dans cette fonction :
    - `arg1`, `arg2`, ... : Arguments de la fonction.
    - `valeur_par_defaut1`, `valeur_par_defaut2`, ... : Valeurs par défaut assignées aux arguments respectifs.

- **Exemple :**

  ```R
  # Définition d'une fonction avec des valeurs par défaut
  saluer <- function(nom = "Mon ami", heure = "matin") {
    message("Bonjour ", nom, ", bon ", heure, " !")
  }

  # Appels de la fonction avec différentes combinaisons d'arguments
  saluer()  # Utilisation des valeurs par défaut
  saluer("Alice")  # Spécifier uniquement le nom, utiliser la valeur par défaut pour l'heure
  saluer(heure = "après-midi")  # Spécifier uniquement l'heure, utiliser la valeur par défaut pour le nom
  saluer("Bob", "soir")  # Spécifier à la fois le nom et l'heure
  ```

  Dans cet exemple, la fonction `saluer` prend deux arguments, `nom` et `heure`, avec des valeurs par défaut `"Mon ami"` et `"matin"`, respectivement. Vous pouvez appeler cette fonction sans spécifier d'arguments, auquel cas elle utilisera les valeurs par défaut. Vous pouvez également spécifier uniquement un argument en le fournissant dans l'ordre attendu ou en le nommant explicitement. Enfin, vous pouvez spécifier à la fois `nom` et `heure` si nécessaire.



## 3. **points de suspension ou ellipsis ``...``:**



- **Description :**

  >Les points de suspension `...` sont utilisés dans la définition d'une fonction pour indiquer que la fonction peut accepter un nombre variable d'arguments, en plus des arguments définis explicitement dans la signature de la fonction.


- **Syntaxe :**

  ```R
  # Définition d'une fonction avec des arguments fixes et un nombre variable d'arguments
  ma_fonction <- function(arg1, arg2, ...) {
    # Bloc de code à exécuter
    # (instructions de la fonction)
  }
  ```

  Dans cette fonction, `arg1` et `arg2` sont des arguments fixes, tandis que `...` indique que la fonction peut également accepter un nombre variable d'arguments supplémentaires.


- **Accès aux arguments passés via `...` :**

  Pour accéder aux arguments passés via `...` dans le corps d'une fonction, vous pouvez utiliser les fonctions `list()` et `...`. Cela vous permet de manipuler ces arguments comme une liste et d'accéder à leurs valeurs individuelles.

  ```R
  ma_fonction <- function(arg1, arg2, ...) {
    # Convertir les arguments supplémentaires en une liste
    args <- list(...)
    
    # Accéder aux valeurs individuelles des arguments supplémentaires
    for (i in seq_along(args)) {
      print(args[[i]])
    }
  }
  ```


- **Exemple :**

  ```R
  ma_fonction <- function(arg1, arg2, ...) {
    # Convertir les arguments supplémentaires en une liste
    args <- list(...)
    
    # Accéder aux valeurs individuelles des arguments supplémentaires
    for (i in seq_along(args)) {
      print(args[[i]])
    }
  }

  # Appel de la fonction avec des arguments supplémentaires
  ma_fonction("valeur1", "valeur2", "valeur3", "valeur4")
  ```

  Dans cet exemple, nous avons utilisé `list(...)` pour convertir les arguments supplémentaires en une liste `args`, puis nous avons parcouru cette liste pour accéder à leurs valeurs individuelles.



## 4. **Portée locale et Portée globale:**


>En R, la portée d'une variable détermine les parties du code où cette variable peut être référencée et utilisée. Il existe deux types de portée de variables en R : locale (local) et globale (global).


### 4.1 **Portée locale (local scope) :**


- Une variable définie à l'intérieur d'une fonction est locale à cette fonction.
- Elle ne peut être utilisée qu'à l'intérieur de cette fonction et n'est pas accessible en dehors de celle-ci.
- Lorsque la fonction est terminée, les variables locales sont supprimées de la mémoire.
- Si une variable locale porte le même nom qu'une variable globale, la variable locale est prioritaire à l'intérieur de la fonction.


- **Exemple de portée locale :**

  ```R
  fonction_locale <- function() {
    variable_locale <- 10
    print(variable_locale)
  }

  fonction_locale()  # Affiche 10
  # La variable_locale n'est pas accessible en dehors de la fonction
  # print(variable_locale) provoquerait une erreur
  ```

### 4.2 **Portée globale (global scope) :**

- Une variable définie en dehors de toute fonction est globale.
- Elle peut être utilisée dans tout le script R et dans toutes les fonctions définies dans ce script.
- Les variables globales restent en mémoire tant que le script est exécuté.
- Si une variable globale est modifiée à l'intérieur d'une fonction, la modification est également visible en dehors de la fonction.

- **Exemple de portée globale :**

  ```R
  variable_globale <- 20

  fonction_globale <- function() {
    print(variable_globale)  # Accès à la variable globale à l'intérieur de la fonction
  }

  fonction_globale()  # Affiche 20
  print(variable_globale)  # Affiche 20
  ```


#### RQ :
- L'utilisation excessive de variables globales peut rendre le code moins lisible et plus difficile à déboguer.
- Il est recommandé de limiter l'utilisation des variables globales et de préférer les variables locales autant que possible pour améliorer la lisibilité et la modularité du code.