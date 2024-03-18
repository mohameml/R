# cour 25 : **``ACP``**

## 1. **Introduction:**






## 2. **la fonction `prcomp`:**


La fonction `prcomp` est une fonction en R qui est utilisée pour effectuer une analyse en composantes principales (PCA). Lorsque vous appliquez la fonction `prcomp` à vos données, elle retourne un objet de classe prcomp contenant plusieurs composantes importantes. Voici une explication détaillée de ces composantes en français :

1. **sdev (écarts-types)** : Il s'agit des écarts-types des composantes principales. En d'autres termes, ce sont les racines carrées des valeurs propres de la matrice de covariance ou de corrélation des données. Ces écarts-types représentent l'importance relative de chaque composante principale dans la variation totale des données. Les composantes principales avec des écarts-types plus élevés captent une plus grande proportion de la variabilité des données.

2. **rotation (rotation)** : Il s'agit de la matrice des charges des variables. En d'autres termes, chaque colonne de cette matrice contient un vecteur propre associé à une composante principale. Ces vecteurs propres décrivent la direction dans laquelle la variance des données est maximale. La matrice de rotation est essentielle pour interpréter les composantes principales et comprendre quelles variables contribuent le plus à chaque composante.

3. **x (valeurs des données tournées)** : Ce sont les valeurs des données transformées par rotation. Les données d'entrée centrées (et éventuellement mises à l'échelle si cela a été demandé) sont multipliées par la matrice de rotation. En d'autres termes, les données originales sont projetées dans l'espace des composantes principales, ce qui permet d'observer les données sous un nouvel angle où la variation est maximale le long des premières composantes principales. Ces valeurs peuvent être utilisées pour visualiser les données dans l'espace des composantes principales ou pour effectuer des analyses ultérieures, telles que le clustering ou la régression.



## 3. **la fonction ``sdv``:**


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