# cour : ``packages en R``

## 1. **``ce qoui un package en R``**

>En R, un **package** (ou "paquet" en français) est une unité d'organisation et de distribution de code R, regroupant des fonctions, des données, des scripts, et éventuellement d'autres éléments nécessaires pour réaliser des tâches spécifiques. Les packages permettent aux utilisateurs de partager, distribuer et réutiliser du code R de manière efficace.

Voici quelques caractéristiques importantes des packages en R :

1. **Organisation du code :** Un package R est organisé de manière structurée. Il peut contenir des fonctions, des données, des scripts, de la documentation, des exemples, etc.

2. **Encapsulation :** Les packages permettent d'encapsuler le code de manière à ce qu'il soit modulaire et réutilisable. Les fonctions et les données sont généralement regroupées de manière logique.

3. **Installation et chargement :** Les packages peuvent être installés à partir du référentiel central de packages CRAN (Comprehensive R Archive Network) à l'aide de la fonction `install.packages()`. Une fois installés, ils peuvent être chargés dans l'environnement de travail à l'aide de la fonction `library()`.

4. **Dépendances :** Les packages peuvent dépendre d'autres packages. Lorsque vous installez un package, R peut automatiquement installer les packages dont il dépend.

5. **Documentation :** Les packages sont accompagnés de documentation qui fournit des informations sur la manière d'utiliser les fonctions du package. Cette documentation peut être consultée à l'aide de la fonction `help()` ou du symbole `?`.

6. **Versionnage :** Les packages ont des versions spécifiques, ce qui facilite la gestion des versions du code. Les utilisateurs peuvent spécifier la version d'un package à installer.

7. **Contribution à la communauté :** Les packages permettent aux utilisateurs de contribuer à la communauté R en partageant leur code. De nombreux packages R sont disponibles sur CRAN, mais il existe également d'autres référentiels, tels que GitHub, où les développeurs peuvent partager leurs packages.

Pour installer un package à partir de CRAN, vous pouvez utiliser la fonction `install.packages()`. Par exemple :

```R
install.packages("nom_du_package")
```

Pour charger un package après l'avoir installé, vous pouvez utiliser la fonction `library()` :

```R
library(nom_du_package)
```

Les packages constituent un aspect central de l'écosystème R, facilitant la collaboration, la distribution et l'utilisation de code dans la communauté R.

## 
En R, lorsque vous utilisez la notation `package::name`, cela vous permet d'accéder à une fonction ou à un objet spécifique à l'intérieur d'un package sans charger tout le package dans votre environnement de travail.

Par exemple, si vous voulez utiliser une fonction spécifique, comme `filter()` du package dplyr, vous pouvez le faire de deux manières :

1. En chargeant le package et en utilisant la fonction directement :

```R
library(dplyr)
filter(data_frame, condition)
```

2. En utilisant la notation `package::name` :

```R
dplyr::filter(data_frame, condition)
```

Les deux méthodes produisent le même résultat, mais la deuxième méthode vous permet d'accéder à la fonction `filter()` sans charger tout le package dplyr. Cela peut être utile lorsque vous ne voulez pas charger tout le package en mémoire, par exemple, si vous n'utilisez qu'une ou deux fonctions spécifiques du package.

##
En R, la fonction `require()` est utilisée pour charger des packages dans votre session R. La principale différence entre `require()` et `library()` est la manière dont ils gèrent les erreurs lors du chargement d'un package.

Voici comment la fonction `require()` est utilisée :

```R
require(dplyr)
```

Cette commande tente de charger le package spécifié, dans cet exemple dplyr. Si le package est déjà installé sur votre système, `require()` le chargera dans votre session. Si le package n'est pas installé, `require()` renverra `FALSE` sans générer d'erreur.

Cependant, il est à noter que `require()` est souvent utilisée dans les scripts R pour éviter les erreurs lorsque vous ne savez pas à l'avance si un package est installé ou non. Si vous êtes sûr que le package est installé, vous pouvez utiliser `library()`. La principale différence réside dans le fait que `library()` générera une erreur si le package spécifié n'est pas trouvé, tandis que `require()` ne générera pas d'erreur et renverra simplement `FALSE`.


## 2. tidyverse