# cour : **Expression régulière**


## 1. **La fonction `grepl`:**

- **Description** : 
    >`grepl` est utilisée pour rechercher des motifs dans des chaînes de caractères et retourner un vecteur logique indiquant si le motif est trouvé dans chaque élément de la chaîne de caractères.

- **Syntaxe** :
  ```R
  grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE)
  ```

  - `pattern` : le motif à rechercher dans chaque élément de la chaîne de caractères.
  - `x` : le vecteur de chaînes de caractères dans lequel rechercher le motif.
  - `ignore.case` : un booléen indiquant si la casse doit être ignorée lors de la recherche (par défaut FALSE).
  - `perl` : un booléen indiquant si le motif est une expression régulière Perl (par défaut FALSE).
  - `fixed` : un booléen indiquant si le motif est un texte brut plutôt qu'une expression régulière (par défaut FALSE).


- **Exemple** :

    Supposons que nous avons un vecteur de noms et nous voulons savoir quels noms commencent par la lettre "A". Voici comment nous pouvons utiliser `grepl` pour cela :

    ```R
    # Vecteur de noms
    noms <- c("Alice", "Bob", "Anna", "David", "Amy")

    # Utilisation de grepl pour rechercher les noms commençant par "A"
    resultat <- grepl("^A", noms, ignore.case = TRUE)

    print(resultat)
    ```

    Le résultat affiché sera un vecteur logique indiquant quelles chaînes de caractères dans `noms` commencent par la lettre "A". 
    Dans cet exemple, cela donnera `[1]  TRUE FALSE  TRUE FALSE  TRUE`, ce qui signifie que les noms "Alice", "Anna" et "Amy" commencent par "A".


## 2. **La fonction `grep`:**

- **Description** : 
    
    >`grep` est utilisée pour rechercher des motifs dans des chaînes de caractères ou des vecteurs de caractères et renvoyer un vecteur d'indices indiquant les positions où le motif est trouvé.

- **Syntaxe** :
  ```R
  grep(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
  ```

  - `pattern` : le motif à rechercher dans chaque élément de la chaîne de caractères.
  - `x` : le vecteur de chaînes de caractères dans lequel rechercher le motif.
  - `ignore.case` : un booléen indiquant si la casse doit être ignorée lors de la recherche (par défaut FALSE).
  - `perl` : un booléen indiquant si le motif est une expression régulière Perl (par défaut FALSE).
  - `fixed` : un booléen indiquant si le motif est un texte brut plutôt qu'une expression régulière (par défaut FALSE).
  - `useBytes` : un booléen indiquant si l'encodage des caractères doit être basé sur les octets (par défaut FALSE).

- **Exemple** :

    Supposons que nous ayons un vecteur de noms et nous voulons savoir quels noms contiennent la lettre "a". Voici comment nous pouvons utiliser `grep` pour cela :

    ```R
    # Vecteur de noms
    noms <- c("Alice", "Bob", "Anna", "David", "Amy")

    # Utilisation de grep pour rechercher les noms contenant la lettre "a"
    resultat <- grep("a", noms, ignore.case = TRUE)

    print(resultat)
    ```

    Le résultat affiché sera un vecteur d'indices indiquant les positions où le motif est trouvé. 
    Dans cet exemple, cela donnera `[1] 1 3 5`, ce qui signifie que les noms "Alice", "Anna" et "Amy" contiennent la lettre "a".