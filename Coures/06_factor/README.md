# cour 07 : **``factor``**

## 1. **Introduction:**

- **Definition:**

    >En R, le type de données ``factor`` est utilisé pour représenter des **variables catégoriques**, c'est-à-dire des variables qui prennent un nombre limité de valeurs distinctes et souvent utilisées pour représenter des groupes ou des niveaux. 

    >Les facteurs sont particulièrement utiles dans le contexte de l'analyse statistique et graphique, car ils permettent de spécifier des niveaux ou des catégories spécifiques pour une variable, ce qui peut faciliter l'interprétation des résultats.

- **Types:**
    
    >En statistiques et en analyse de données, on distingue généralement deux types de variables catégoriques qui peuvent être représentées par des facteurs en R : les variables nominales et les variables ordinales.

    1. **Variables Nominales (Nominal) :**
        - Les variables nominales sont des variables catégoriques pour lesquelles les catégories n'ont pas d'ordre ou de hiérarchie spécifique.
        - Exemple : Couleurs (Rouge, Vert, Bleu), Catégories de produits (A, B, C), etc.
        - En R, ces variables sont souvent représentées par des facteurs sans ordre.

            ```R
            # Exemple de création d'un facteur nominal
            couleurs <- c("Rouge", "Vert", "Bleu", "Rouge", "Bleu")
            couleurs_nominal <- factor(couleurs)
            ```

    2. **Variables Ordinales (Ordinal) :**
        - Les variables ordinales sont des variables catégoriques pour lesquelles les catégories ont un ordre ou une hiérarchie spécifique.
        - Exemple : Niveaux d'éducation (Primaire, Secondaire, Universitaire), Échelle de satisfaction (Bas, Moyen, Élevé), etc.
        - En R, ces variables sont également représentées par des facteurs, mais avec des niveaux ordonnés.

        ```R
        # Exemple de création d'un facteur ordinal
        satisfaction <- c("Bas", "Moyen", "Élevé", "Bas", "Élevé")
        satisfaction_ordinal <- factor(satisfaction, ordered = TRUE, levels = c("Bas", "Moyen", "Élevé"))
        ```



- **levels:**

    >Le concept de ``levels`` (niveaux) dans le contexte d'un facteur en R se réfère aux différentes catégories distinctes que peut prendre la variable catégorique représentée par ce facteur. Les niveaux définissent l'ensemble des valeurs possibles que la variable catégorique peut avoir.



## 2. **Création de facteurs :la fonction ``factor``:** 



- **Description:**

    >La fonction `factor()` en R est utilisée pour créer des facteurs, qui sont des variables catégoriques. Les facteurs sont couramment utilisés pour représenter des données qualitatives, comme des groupes, des niveaux, des catégories, etc. 
    
- **La syntaxe générale de la fonction `factor()` est la suivante :**

    ```R
    factor(x, levels = NULL, labels = NULL, exclude = NULL, ordered = FALSE)
    ```

    - `x`: Le vecteur de données que vous souhaitez convertir en facteur.
    - `levels`: Les niveaux (catégories) du facteur. Si non spécifié, les niveaux seront déduits automatiquement des valeurs uniques de `x`.
    - `labels`: Les étiquettes à utiliser pour les niveaux. Si non spécifié, les valeurs uniques de `x` seront utilisées comme étiquettes.
    - `exclude`: Les valeurs à exclure lors de la création des niveaux du facteur.
    - `ordered`: Indique si le facteur est ordonné (pour les variables ordinales). Par défaut, il est défini sur `FALSE`.

- **Exemple 1  :``facteur Nominal``**

    ```R
    # Exemple avec un vecteur de couleurs
    couleurs <- c("Rouge", "Vert", "Bleu", "Rouge", "Bleu")
    couleurs_factor <- factor(couleurs)
    print(couleurs_factor)
    ```

    ```output
    [1] Rouge Vert  Bleu  Rouge Bleu 
    Levels: Bleu Rouge Vert
    ```

- **Exemple 2 : ``facteur Ordinal``:**

    ```R
    # Exemple avec un vecteur de satisfaction (variable ordinale)
    satisfaction <- c("Bas", "Moyen", "Élevé", "Bas", "Élevé")
    satisfaction_factor <- factor(satisfaction, ordered = TRUE , levels = c("Bas", "Moyen", "Élevé"))
    print(satisfaction_factor)
    ```

    ```output
    [1] Bas   Moyen Élevé Bas   Élevé
    Levels: Bas < Moyen < Élevé
    ```
- **Exemple 3 : Exclusion de certaines valeurs lors de la création du facteur :**

    ```R
    # Exclusion de la valeur "Non applicable"
    donnees <- c("A", "B", "C", "A", "Non applicable")
    donnees_factor <- factor(donnees, exclude = "Non applicable")
    print(donnees_factor)
    ```

    ```output
    [1] A    B    C    A    <NA>
    Levels: A B C
    ```





## 3. **fonction de manipulation de factor:**

En R, il existe plusieurs fonctions utiles pour la manipulation et l'exploration des facteurs. Voici quelques-unes des fonctions couramment utilisées :

1. **`summary()` :** 
    
    >La fonction `summary()` peut être utilisée pour obtenir un résumé des statistiques descriptives pour les facteurs. Pour un facteur, cela inclut le nombre d'observations dans chaque niveau.

    ```R
    # Exemple avec un facteur
    couleurs <- factor(c("Rouge", "Vert", "Bleu", "Rouge", "Bleu"))
    summary(couleurs)
    ```

    ```output
    Bleu Rouge  Vert 
        2     2     1 
    ```
2. **`levels()` :** 
    
    >La fonction `levels()` renvoie les niveaux d'un facteur. Elle est utile pour inspecter les catégories ou niveaux d'une variable catégorique.

    ```R
    # Exemple pour obtenir les niveaux d'un facteur
    niveaux_couleurs <- levels(couleurs)
    ```



3. **`as.factor()` :** 
    
    >La fonction `as.factor()` est utilisée pour convertir un objet en facteur. Cela peut être utile lorsque vous avez une variable sous forme de chaînes de caractères que vous souhaitez convertir en facteur.

    ```R
    # Exemple de conversion d'une variable en facteur
    donnees <- c("A", "B", "C", "A", "B")
    donnees_factor <- as.factor(donnees)
    ```

4. **`droplevels()` :** 
    
    >La fonction `droplevels()` est utilisée pour supprimer les niveaux inutilisés d'un facteur. Cela peut être pratique lorsque vous avez supprimé des observations d'une variable catégorique.

    ```R
    # Exemple de suppression des niveaux inutilisés
    couleurs <- factor(c("Rouge", "Vert", "Bleu", "Rouge", "Rouge"))
    couleurs <- couleurs[-3]  # Supprimer la troisième observation : Blue
    couleurs <- droplevels(couleurs)  # Supprimer le niveau inutilisé
    ```

