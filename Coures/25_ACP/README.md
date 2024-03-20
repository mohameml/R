# cour 25 : **``ACP``**

## 1. **Introduction:**

- **ce qoui L'ACP ? :**

    >``ACP`` signifie Analyse en Composantes Principales. C'est une technique statistique utilisée en analyse de données multivariées pour **réduire la dimensionnalité** des données tout en préservant autant que possible leur structure et leurs informations essentielles. L'objectif principal de l'ACP est de transformer un ensemble de variables corrélées en un ensemble de variables non corrélées, appelées composantes principales. Ces composantes principales sont ordonnées en fonction de la quantité de variance qu'elles capturent dans les données d'origine.


- **Contexte:**

    - On a un tableau de données représenté par une matrice $X$  qui contient $p$ colonnes ( $x^j$ ) représentant les variables et $n$ lignes (  $x_i$  ) représentant les individus:

$$
X = \begin{bmatrix}
x_{1,1} & x_{1,2} & \cdots & x_{1,p} \\
x_{2,1} & x_{2,2} & \cdots & x_{2,p} \\
\vdots & \vdots & \ddots & \vdots \\
x_{n,1} & x_{n,2} & \cdots & x_{n,p}
\end{bmatrix}     
$$

    - Chaque individu  $x_i$ du tableau $X$ est considéré comme un point d’un espace vectoriel E = $R^p$ de dimension p.
    
    - L’ensemble des individus constitue un nuage de points dans E.


- **objetcif :** 
    
    - On cherche à réduire le nombre p de variables en préservant au maximum la structure du nuage, afin de le représenter le plus fidèlement possible



- **Principe :** 
    
    - L’ACP vise à **``projeter``** les données dans un sous-espace approprié, de dimension plus faible, préservant la topologie du nuage.

    - La topologie du nuage est liée à la variabilité des données, c'est-à-dire la variance empirique de chaque colonne $s_j^2$. Ainsi, on cherche un espace dans lequel la projection du nuage conserve au maximum la variabilité précédente.



## 2. **Résultat théorique :**

### 2.1 **Definitions:**

- **la moyenne $\bar{x}_j$ et l'écart type $\sigma_j$ des données de la colonne $j$ :**

    - **Calcul de la moyenne** :
        La moyenne $\bar{x}_j$ des données de la colonne $j$ est calculée comme suit :
        
        $$
        \bar{x}_j = \frac{1}{n} \sum_{i=1}^{n} x_{i,j}
        $$
        
        où $n$ est le nombre d'observations et $x_{i,j}$  est l'élément situé à la  $i$ -ème ligne et $j$ -ème colonne de la matrice $X$ .

    - **Calcul de l'écart type** :

        L'écart type $\sigma_j$  des données de la colonne $j$ est calculé comme suit :

        $$
        \sigma_j = \sqrt{\frac{1}{n} \sum_{i=1}^{n} (x_{i,j} - \bar{x}_j)^2}
        $$

        où $n$ est le nombre d'observations et $x_{i,j}$  est l'élément situé à la  $i$ -ème ligne et $j$ -ème colonne de la matrice $X$ et $\bar{x}_j$ est la moyenne de la colonne  $j$ .

- **Centrer, réduire, standardiser les données $X$ :**

    - **Centrer les données** : Pour centrer les données, chaque élément $x_{i,j}$ de la matrice $X$ est centré autour de la moyenne de sa colonne :

        $$
        x_{\text{centré},i,j} = x_{i,j} - \bar{x}_j
        $$


    - **Réduire les données** : La réduction des données consiste à diviser chaque élément $x_{\text{centré},i,j}$ par l'écart type de sa colonne :

        
        $$
        x_{\text{réduit},i,j} = \frac{x_{\text{centré},i,j}}{\sigma_j}
        $$


    - **Standardiser les données** : La standardisation des données combine les étapes de centrage et de réduction :

        
        $$
        x_{\text{standardisé},i,j} = \frac{x_{i,j} - \bar{x}_j}{\sigma_j}
        $$


- **la matrice de covriance  :**

    ![alt text](image.png)


- **la matrice de corrélation :**

    ![alt text](image-1.png)





#### RQ : 

- Quand faut-il standardiser ou réduire les données ?: 
    - Indispensable lorsque les variables ne sont pas exprimées dans la même unité.
    - Généralement conseillé : permet d’accorder la même importance à chaque variable.
    - Grande influence sur le résultat de l’étude.
    - Mise en pratique : fonction ``scale()`` de R.


### 2.2 **Résultat :**

- **Resultat de l'ACP canonique sur une droite :**

    >la droite $\Delta$ qui maximise la quantité d'information du nuage projeté est la droite engéndrée par un vecteur proper  correspondant à la valeur propre maximale de la matrice $V$.

- **Resultat de l'ACP normée sur une droite :**

    >la droite $\Delta$ qui maximise la quantité d'information du nuage projeté est la droite engéndrée par un vecteur proper  correspondant à la valeur propre maximale de la matrice $C$.

- **les composantes principales:**

    - les composantes principales peuvent être définies comme les coordonnées des individus projetés sur l'espace principal. Cet espace principal est déterminé par les vecteurs propres de la matrice de covariance (ou de corrélation) des données, et il est choisi de manière à conserver le maximum d'information possible.

    - **formellement:**

        supposons que $Y$ soit la matrice de données centrée . Les composantes principales $PC_1, PC_2, \ldots, PC_k$  sont alors calculées comme les coordonnées des individus projetés sur les vecteurs propres correspondant aux $k$ plus grandes valeurs propres de la matrice de covariance (ou de corrélation) de $X$ .


        si $v_1, v_2, \ldots, v_k $ sont les $k$ premiers vecteurs propres, alors les composantes principales $PC_1, PC_2, \ldots, PC_k$ sont obtenues par :

        $$ PC_i = Y \cdot v_i$$



- **Valeurs propres et variance expliquée** :
   Les valeurs propres $\lambda_i$ de $V$ représentent la quantité de variance expliquée par chaque composante principale. Elles sont ordonnées de manière décroissante :
   $$
   \lambda_1 \geq \lambda_2 \geq \ldots \geq \lambda_p
   $$



- **Dimensionnalité et réduction de la dimension** :
   Pour réduire la dimensionnalité, seules les premières $k$ composantes principales sont conservées, où $k$ est choisi en fonction de la quantité de variance que l'on souhaite conserver.


- **la matrice des composantes principales :**

    - supposons que $Y$ soit la matrice de données centrée , et  $U$  est la matrice dont les colonnes sont les vecteurs propres de la matrice de covariance (ou de corrélation) de $Y$ (matrice de rotation ), alors la matrice des composantes principales $C$ est donnée par :

    $$C = Y \cdot U$$




## 3. **les fonction `prcomp` && `princomp`:**


### 3.1. **la fonction `prcomp`:**


- **Description:**

    >La fonction `prcomp` est une fonction en R qui est utilisée pour effectuer une analyse en composantes principales (PCA). Lorsque vous appliquez la fonction `prcomp` à vos données, elle retourne un objet de classe ``prcomp`` contenant plusieurs composantes importantes. 

- **Syntaxe:**

    ```R
    prcomp(data, scale = FALSE, center = TRUE)
    ```

    - `data` : L'ensemble de données à analyser. Il peut s'agir d'un data frame ou d'une matrice numérique.
    - `scale` : Une valeur logique indiquant si les variables doivent être mises à l'échelle (réduites) avant l'analyse. Par défaut, `scale = FALSE`.
    - `center` : Une valeur logique indiquant si les variables doivent être centrées (soustraites de leur moyenne) avant l'analyse. Par défaut, `center = TRUE`.


- **Attributs d'un objet ``prcomp``:**

    - `sdev` : 
        
        - Les écarts-types des composantes principales , ce sont les racines carrées des valeurs propres de la matrice de covariance ou de corrélation des données.
        
        - Ces écarts-types représentent l'importance relative de chaque composante principale dans la variation totale des données. Les composantes principales avec des écarts-types plus élevés captent une plus grande proportion de la variabilité des données


    - `rotation` : La matrice de rotation  qui peut être utilisée pour transformer les données originales dans l'espace des composantes principales ( $U$ ).
    
    - `x` : Les données projetées sur l'espace des composantes principales (la matrice $C$).

- **summary() sur un objet ``prcomp``:**

    - Lorsque vous appelez la fonction `summary()` sur un objet résultant de `prcomp()` en R, vous obtenez un résumé des résultats de l'Analyse en Composantes Principales (ACP) effectuée. 
    
    
    - Voici les informations généralement fournies par la fonction `summary()` sur un tel objet :

        - **Standard Deviation (Écart-type) :** Les écarts-types des composantes principales, indiquant la quantité de variance expliquée par chaque composante.

        - **Proportion of Variance (Proportion de variance) :** La proportion de variance expliquée par chaque composante principale. Cette proportion est calculée en divisant la variance de chaque composante par la somme totale des variances de toutes les composantes.

        - **Cumulative Proportion (Proportion cumulative) :** La proportion cumulative de variance expliquée par les composantes principales jusqu'à la composante correspondante. Cela indique la proportion totale de variance expliquée par les composantes principales jusqu'à un certain point.

    - Voici un exemple de résultat de `summary()` sur un objet `prcomp` :

        ```
        > summary(acp)
        Importance of components:
                                PC1    PC2     PC3     PC4
        Standard deviation     2.0267 0.3235 0.02021 0.00923
        Proportion of Variance 0.9246 0.0530 0.00212 0.00012
        Cumulative Proportion  0.9246 0.9776 0.97975 0.97988
        ```

        Dans cet exemple, les quatre premières composantes principales sont affichées avec leurs écarts-types, leurs proportions de variance et leurs proportions cumulatives de variance expliquée.

- **Exemple:**

    ```R
    # Charger les données
    data(iris)

    # Effectuer une ACP
    acp <- prcomp(iris[, -5], scale = TRUE)

    # Afficher les composantes principales
    summary(acp)
    ```

    Dans cet exemple, nous avons effectué une ACP sur l'ensemble de données Iris en utilisant toutes les variables sauf la variable de classe (dernière colonne). Nous avons spécifié `scale = TRUE` pour mettre à l'échelle les variables. Ensuite, nous avons affiché un résumé des résultats de l'ACP en utilisant la fonction `summary()`.





### 3.2 **la fonction `princomp`:**

- **Description:**

    >La fonction `princomp()` effectue une ACP sur un ensemble de données en utilisant la décomposition en valeurs propres de la matrice de covariance. Elle calcule les composantes principales ainsi que d'autres statistiques utiles.

- **Syntaxe:**

    ```R
    princomp(data, cor = FALSE, scores = TRUE)
    ```

    - `data` : L'ensemble de données à analyser. Il peut s'agir d'un data frame ou d'une matrice numérique.
    - `cor` : Une valeur logique indiquant si les variables doivent être corrélées avant l'analyse. Par défaut, `cor = FALSE`.
    - `scores` : Une valeur logique indiquant si les scores des composantes principales doivent être calculés et retournés. Par défaut, `scores = TRUE`.


- **Attributs d'un objet ``princomp``:**

    - `sdev` : Les écarts-types des composantes principales.
    - `loadings` : La matrice des charges factorielles (ou de rotation $U$ ), qui peut être utilisée pour interpréter les composantes principales.
    - `scores` : Les scores des composantes principales.


- **summary() sur un objet ``prcomp``:**

    - Lorsque vous appelez la fonction `summary()` sur un objet résultant de `princomp()` en R, vous obtenez un résumé des résultats de l'Analyse en Composantes Principales (ACP) effectuée. 
    
    - Voici les informations généralement fournies par la fonction `summary()` sur un tel objet :

        - **Standard Deviation (Écart-type) :** Les écarts-types des composantes principales, indiquant la quantité de variance expliquée par chaque composante.

        - **Proportion of Variance (Proportion de variance) :** La proportion de variance expliquée par chaque composante principale. Cette proportion est calculée en divisant la variance de chaque composante par la somme totale des variances de toutes les composantes.

        - **Cumulative Proportion (Proportion cumulative) :** La proportion cumulative de variance expliquée par les composantes principales jusqu'à la composante correspondante. Cela indique la proportion totale de variance expliquée par les composantes principales jusqu'à un certain point.


    - Voici un exemple de résultat de `summary()` sur un objet `princomp` :

        ```
        > summary(acp)
        Importance of components:
                                Comp.1     Comp.2     Comp.3     Comp.4
        Standard deviation     0.8649707 0.08326653 0.02615773 0.01489646
        Proportion of Variance 0.9246187 0.05306648 0.01710261 0.00521219
        Cumulative Proportion  0.9246187 0.97768522 0.99478782 1.00000000
        ```


- **Exemple:**

    ```R
    # Charger les données
    data(iris)

    # Effectuer une ACP
    acp <- princomp(iris[, -5], cor = TRUE)

    # Afficher les composantes principales
    summary(acp)
    ```


### 3.3 **la fonction ``scale()``:**

- **Description:**
    
    >La fonction `scale()` en R est utilisée pour centrer et/ou réduire les variables d'un ensemble de données. Elle est souvent utilisée avant d'appliquer des analyses statistiques, telles que l'Analyse en Composantes Principales (ACP), la régression linéaire, etc., pour mettre les variables sur une même échelle et éviter que certaines variables ne dominent les autres en raison de leurs échelles différentes.


- **Syntaxe:**

    ```R
    scaled_data <- scale(data, center = TRUE, scale = TRUE)
    ```

    - `data` : L'ensemble de données à centrer et/ou à réduire. Il peut s'agir d'une matrice ou d'un data frame.
    - `center` : Une valeur logique indiquant si les variables doivent être centrées (soustraites de leur moyenne). Par défaut, `center = TRUE`.
    - `scale` : Une valeur logique indiquant si les variables doivent être mises à l'échelle (divisées par leur écart type). Par défaut, `scale = TRUE`.


- **Exemple :**

    ```R
    # Charger les données
    data(iris)

    # Sélectionner les variables à centrer et réduire
    selected_data <- iris[, -5]

    # Centrer et réduire les variables
    scaled_data <- scale(selected_data)

    # Afficher les premières lignes des données centrer et réduites
    head(scaled_data)
    ```


#### RQ  **`prcomp()` vs `princomp()`:**


- La principale différence entre les fonctions `prcomp()` et `princomp()` en R réside dans la méthode utilisée pour effectuer l'Analyse en Composantes Principales (ACP) :

    - **prcomp() :**
        - Utilise la décomposition en valeurs singulières (SVD) pour calculer les composantes principales.
        - Cette méthode est plus efficace numériquement et plus stable pour les matrices de données de grande taille.

    - **princomp() :**
        - Utilise la décomposition en valeurs propres de la matrice de covariance pour calculer les composantes principales.
        - Cette méthode est plus traditionnelle et plus couramment utilisée dans la littérature statistique.



## 4. **Visualisation :**


### 4.1 **Avce ``plot()``:**

- Lorsque vous appelez la fonction `plot()` sur un objet résultant de `prcomp()` en R, vous obtenez un graphique représentant les résultats de l'Analyse en Composantes Principales (ACP): 

   - Ce graphique montre les valeurs propres des composantes principales , ce qui permet d'évaluer l'importance de chaque composante dans la représentation des données.


- **Voici un exemple d'utilisation de la fonction `plot()` sur un objet `prcomp` :**

    ```R
    # Charger les données
    data(iris)

    # Effectuer une ACP
    acp <- prcomp(iris[, -5], scale = TRUE)

    # Graphique des valeurs propres
    plot(acp)

    ```

    ![alt text](image-2.png)


### 4.2 **Avec ``biplot()``:**

- **Description:**

    >La fonction `biplot()` en R est utilisée pour créer un biplot, qui est un type de graphique utilisé en Analyse en Composantes Principales (ACP) pour visualiser à la fois les observations et les variables dans le même graphique, projetés sur les composantes principales.


- **Syntaxe :**

    ```R
    biplot(object, choices = c(1, 2), scale = 1, pc.biplot = FALSE, ...)
    ```

    - `object` : L'objet résultant de `prcomp()` ou `princomp()` contenant les résultats de l'ACP.
    - `choices` : Un vecteur indiquant les composantes principales à utiliser pour créer le biplot. Par défaut, les deux premières composantes principales sont utilisées.
    - `scale` : Une valeur numérique spécifiant l'échelle des flèches représentant les variables sur le biplot. Par défaut, `scale = 1`.
    - `pc.biplot` : Une valeur logique indiquant si les flèches représentant les variables doivent être parallèles aux axes des composantes principales. Par défaut, `pc.biplot = FALSE`.
    - `...` : D'autres arguments graphiques à passer à la fonction `plot()` pour personnaliser le biplot.

### Exemple :
Voici un exemple d'utilisation de la fonction `biplot()` :
```R
# Charger les données
data(iris)

# Effectuer une ACP
acp <- prcomp(iris[, -5], scale = TRUE)

# Créer un biplot
biplot(acp, scale = 0)
```

Dans cet exemple, nous avons utilisé la fonction `biplot()` sur un objet `prcomp` contenant les résultats de l'ACP sur l'ensemble de données Iris. Nous avons spécifié `scale = 0` pour désactiver le redimensionnement automatique des flèches représentant les variables sur le biplot.


## 5. **le package ``FactoMineR``:**



## RQ : 




































## **la fonction ``sdv``:**

1. **Décomposition en valeurs singulières (SVD)** :
   $$
   X = U \Sigma V^T
   $$
   où $X$  est la matrice de données, $U$  est une matrice orthogonale contenant les vecteurs propres à gauche, $\Sigma$ est une matrice diagonale contenant les valeurs singulières, et $V^T$  est la transposée d'une matrice orthogonale contenant les vecteurs propres à droite.


La fonction `svd` en R effectue une décomposition en valeurs singulières (SVD) d'une matrice. Cette décomposition est une technique fondamentale en algèbre linéaire et est utilisée dans de nombreux domaines de l'analyse de données et du calcul numérique. Voici une explication détaillée de cette fonction :

La syntaxe de base de la fonction `svd` est la suivante :
```R
svd(A)
```
où `A` est la matrice à décomposer.

Cette fonction retourne un objet contenant trois composantes principales :

1. **$d** : Il s'agit d'un vecteur contenant les valeurs singulières de la matrice `A`. Les valeurs singulières sont analogues aux valeurs propres dans la décomposition en valeurs propres, mais pour des matrices non carrées. Elles mesurent l'importance de chaque mode de variation dans les données. Les valeurs singulières sont généralement ordonnées du plus grand au plus petit.

2. **$u** : C'est la matrice des vecteurs singuliers de gauche. Cette matrice contient les vecteurs propres correspondant aux vecteurs propres de `AA^T` (ou `A^T A` si `A` est rectangulaire), où `A^T` représente la transposée de la matrice `A`. Les vecteurs singuliers de gauche capturent les directions dans lesquelles la matrice `A` étend ou réduit les données.

3. **$v** : C'est la matrice des vecteurs singuliers de droite. Cette matrice contient les vecteurs propres correspondant aux vecteurs propres de `A^TA` (ou `AA^T` si `A` est rectangulaire). Les vecteurs singuliers de droite capturent les directions dans lesquelles la matrice `A` étend ou réduit les variables.

La décomposition en valeurs singulières est une technique puissante utilisée dans de nombreux contextes, y compris la réduction de dimensionnalité, la compression de données, la résolution de systèmes linéaires surdéterminés, la résolution de problèmes de moindres carrés, etc. La fonction `svd` en R fournit un moyen efficace de calculer cette décomposition et d'extraire les valeurs singulières et les vecteurs singuliers associés.
