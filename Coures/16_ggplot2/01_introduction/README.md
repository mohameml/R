# cour : ``Introduction à ggplot2``




## 1. **Définition:**

>ggplot2 est une librairie R très populaire pour la création de graphiques et de visualisations de données. Développée par Hadley Wickham, ggplot2 est basée sur la grammaire des graphiques (``Grammar of Graphics``), ce qui signifie qu'elle repose sur un ensemble cohérent de règles et de principes pour construire des graphiques de manière intuitive et efficace.




## 2. **Les 7 couches  en ggplot2 :**

ggplot2 suit un paradigme de construction de graphiques en couches, ce qui signifie que vous pouvez ajouter des composants graphiques un par un pour créer des visualisations complexes et riches en informations. Les composants graphiques ajoutés en ggplot2 sont souvent regroupés en sept couches principales :

### 2.1. **``Data Layer`` :** 

- **Description:**

    >La couche de données (data layer) dans un graphique ggplot se réfère à la partie du code où vous spécifiez quel jeu de données utiliser pour créer le graphique. 

    - En  première étape on passe les données à la fonction ``ggplot()``, qui stocke les données à utiliser ultérieurement .

- **Syntaxe:**

    ```R
    ggplot(data = nom_data)

    ```



### 2.2 **``mapping layer``:**

- **Description:**

    >La couche de mappage (mapping layer) dans un graphique ggplot se réfère à la partie du code où vous spécifiez comment les variables de votre jeu de données doivent être représentées graphiquement. Cela inclut notamment la liaison entre les variables de votre jeu de données et les éléments graphiques tels que les axes, les couleurs, les formes, etc.

    - Dans ggplot, la couche de mappage est généralement spécifiée à l'aide de la fonction `aes()` (pour aesthetics). Cette fonction est utilisée à l'intérieur de la fonction `ggplot()` pour mapper les variables de votre jeu de données aux différentes esthétiques graphiques.

-  **Syntaxe:**

    ```R
    ggplot(data = nom_data, mapping = aes(x = var1, y = var2))
    ```

### 2.3 **``layers``:**

- **Description:**
    
    >La couche ``layers`` est l'élément fondamental de tout graphique dans ggplot. Elle prend les données mappées et les traduit visuellement en graphe. Cette couche se compose de trois composants essentiels :

    1. `` La géométrie ``: Cette composante détermine la forme visuelle à utiliser pour représenter les données, comme des points, des lignes ou des rectangles.

    2. ``La transformation statistique`` : Cette étape peut modifier les données de manière statistique, par exemple en calculant de nouvelles variables à partir des données existantes, ou en filtrant les données à afficher.

    3. `` L'ajustement de position`` : Cette partie détermine principalement l'emplacement des éléments de données sur le graphique. Elle peut inclure des ajustements pour éviter le chevauchement des points ou des lignes.

- **Synatxe:**

    ```R
    ggplot(mpg, aes(cty, hwy)) +
    # to create a scatterplot
    geom_point() +
    # to fit and overlay a loess trendline
    geom_smooth(formula = y ~ x, method = "lm")
    ```



### 2.4 **``Scales`` :**

![alt text](images/image.png)