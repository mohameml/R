# cour : Régression 


## 1. **Intrduction:**
   
- **Définition:**

>La régression est une technique statistique fondamentale utilisée dans l'analyse de données pour comprendre et modéliser la relation entre une variable dépendante et une ou plusieurs variables indépendantes. Elle appartient à la famille des méthodes d'apprentissage supervisé, où l'objectif est de prédire ou expliquer une variable continue à partir d'autres variables explicatives.

En termes simples, la régression permet de quantifier la relation entre les variables en ajustant un modèle mathématique. Le modèle de régression tente de trouver la meilleure approximation de la relation sous-jacente entre les variables, ce qui permet de faire des prédictions ou d'analyser l'impact de changements dans les variables indépendantes sur la variable dépendante.

Il existe différents types de régressions, tels que la régression linéaire, la régression multiple, la régression logistique, et d'autres, chacune adaptée à des contextes spécifiques. La régression constitue ainsi un outil polyvalent dans l'arsenal des méthodes d'analyse de données, contribuant à la compréhension et à la prédiction dans des situations variées.


- **Exemple:**

On peut vouloir expliquer le prix de vente des maisons, en fonction de leur surface en présumant que plus la surface est élevée, et plus le prix de vente sera élevé. Il s'agit là d'une regression dite ``simple`` car elle ne comporte qu'une seule variables explicative. De plus, on peut aussi supposer que le nombre de chambres influence le prix de la maison à la hausse ; il s'agira là d'une regression ``multiple`` avec deux variables explicatives.

L’objectif est d’évaluer si chacune des deux variables influence le prix, et, si tel est le cas, de tenter de quantifier cet effet.


## 2. la commande ``lm``

### 2.1 **Introduction :**

- >La commande `lm` en R est utilisée pour ajuster des modèles de régression linéaire.

- La commande `lm` permet de créer un modèle de régression linéaire en ajustant les coefficients du modèle pour minimiser la somme des carrés des résidus.

- La fonction `lm()` en R retourne un objet de type `lm`, qui est un modèle de régression linéaire. Cet objet contient diverses informations sur l'ajustement du modèle, et vous pouvez utiliser plusieurs attributs et méthodes pour accéder à ces informations. 



### 2.2 **Syntaxe :**


- **La syntaxe de la commande `lm` est la suivante :**

    ```R
    modele_regression <- lm(formule, data = nom_data)
    ```

    - `formule`: Spécifie la relation entre la variable dépendante et les variables indépendantes. Elle est généralement de la forme `y ~ x1 + x2 + ... + xn`, où `y` est la variable dépendante et `x1`, `x2`, ..., `xn` sont les variables indépendantes.

    - `data`: L'argument facultatif qui spécifie le jeu de données à utiliser. Il peut être un data frame ou une liste.


### 2.3 **``formule:``**

La formule dans la fonction `lm()` en R peut être écrite de différentes manières pour exprimer différentes relations entre les variables. 

- **Régression linéaire simple :``~``**
   ```R
   modele_regression <- lm(y ~ x, data = donnees)
   ```
   Cela indique une relation linéaire simple entre la variable dépendante `y` et la variable indépendante `x`.

- **Régression multiple :``+``**
   ```R
   modele_regression <- lm(y ~ x1 + x2 + x3, data = donnees)
   ```
   Cela indique une relation linéaire multiple entre la variable dépendante `y` et les variables indépendantes `x1`, `x2`, et `x3`.

- **Termes quadratiques ou polynomiaux :``I``**
   ```R
   modele_regression <- lm(y ~ x + I(x^2), data = donnees)
   ```
   Cela inclut une relation quadratique entre `y` et `x`.


- **Inclusion de tous les termes jusqu'à un certain degré :``.``**
   ```R
   modele_regression <- lm(y ~ ., data = donnees)
   ```
   Cela inclut tous les prédicteurs disponibles dans le jeu de données.


- **Interaction entre les variables :**
   ```R
   modele_regression <- lm(y ~ x1 * x2, data = donnees)
   ```
   Cela inclut une interaction entre les variables `x1` et `x2` en plus de leurs effets individuels.


- **Transformations logarithmiques :**
   ```R
   modele_regression <- lm(log(y) ~ log(x), data = donnees)
   ```
   Cela indique une relation log-log entre `y` et `x`.

- **Utilisation de l'opérateur `:` pour interaction spécifique :**
   ```R
   modele_regression <- lm(y ~ x1 + x2 + x1:x2, data = donnees)
   ```
   Cela inclut les effets individuels de `x1` et `x2` ainsi que leur interaction spécifique.


### 2.4 **``summary()``:**

Dans cette section, nous allons expliquer en détail les résultats de la commande `summary` appliquée sur un objet de régression linéaire :

Lorsque vous appliquez la fonction `summary()` sur un objet de régression linéaire (`lm`), vous obtenez une variété d'informations qui permettent d'évaluer la qualité de l'ajustement du modèle. Voici une explication détaillée de chacune des sections du résumé renvoyé par `summary()` :

Prenons un exemple d'objet de régression linéaire nommé `modele_regression` :

```R
# Exemple : modèle de régression linéaire simple 
regvf<-lm(freinage~vitesse)
summary(regvf)
```

Voici les principales sections du résumé et leur signification :


1. **Coefficients :**
   Cette section présente les coefficients estimés pour chaque variable du modèle, ainsi que leur erreur standard, le t-value associé et la p-value. Les coefficients indiquent la contribution de chaque variable à la prédiction de la variable dépendante.

   - **Estimateurs (Estimate)** : Ce sont les coefficients estimés pour chaque variable.
   - **Erreur standard (Std. Error)** : Mesure la précision de l'estimation du coefficient.
   - **t-value (t value)** : Le rapport du coefficient estimé sur son erreur standard.
   - **Pr(>|t|)** : La p-value associée au test de nullité du coefficient ie :(les tests de ``β0 = 0`` contre ``β0 ̸= 0 ``) Si la p-value est très petite, on peut bien rejeter l'hypothèse ``β0 = 0``.


2. **Statistiques de test globales :**
   Cette section comprend des statistiques globales pour évaluer la performance globale du modèle.

   - **Résumé de la statistique F (F-statistic)** : Mesure la significativité globale du modèle.
   - **Pr(>F)** : La p-value associée à la statistique F.


3. **Résidus :**
   Cette section fournit des informations sur les résidus du modèle.

   - **Residual standard error** : Estimation de l'écart-type des résidus.
   - **Degrees of freedom** : Les degrés de liberté associés aux résidus.
   - **Multiple R-squared** : Indique la proportion de la variance expliquée par le modèle.


- **Exemple:**

Dans cet exemple, nous voulons expliquer la distance de freinage d'une voiture par sa vitesse. Ainsi, au début, nous réalisons un modèle de régression linéaire simple :

```r
# Exemple : modèle de régression linéaire simple 
regvf<-lm(freinage~vitesse)
summary(regvf)

```

![alt text](images/summary.jpeg)


* La colonne ``Estimate`` donne les  coefficients estimés pour chaque variable du modèle  (β₀ et β₁) = (-39.06,4.82).

*  La colonne ``Pr(>|t|)`` donne les p-valeurs de tests de nullité du coefficient. Dans l’exemple, ces p-valeurs sont très faibles, donc les hypothèses ``β0 = 0`` et ``β1 = 0`` sont largement rejetées. (Dans les lignes correspondantes, plus il y a d’étoiles plus le rejet est fort).

* La ``Residual standard error`` est la valeur $\hat{\sigma}$ .

* Le ``Multiple R-Squared`` est la valeur de $R^2$ , ce qui permet de faire le test de pertinence de la régression . 

* La ``F-statistic`` est la statistique de test de pertinence de la régression, On retrouve qu’elle vaut 144.7. La ``p-value`` fournie est la p-valeur de ce test. Elle est très faible
 $2.10^{-5}$ donc on conclut bien que la régression linéaire est pertinente sur notre exemple






### 2.5  **Attributs du modèle (`modele_regression`) :**

1. **Coefficients :**
   Vous pouvez obtenir les coefficients estimés du modèle à l'aide de la fonction `coefficients()` :
   ```R
   coefficients(modele_regression)
   ```

2. **Résidus :**
   Les résidus du modèle (différences entre les valeurs observées et les valeurs prédites) peuvent être obtenus avec :
   ```R
   residuals(modele_regression)
   ```

3. **Valeurs prédites :**
   Les valeurs prédites par le modèle pour les observations dans le jeu de données peuvent être obtenues avec :
   ```R
   fitted.values(modele_regression)
   ```

4. **Résumé du modèle :**
   La fonction `summary()` fournit des statistiques détaillées sur l'ajustement du modèle :
   ```R
   summary(modele_regression)
   ```

   Cette fonction fournit des informations telles que les coefficients, les tests de significativité, les résidus, les statistiques de ajustement, etc.

5. **Graphiques de diagnostic :**
   Vous pouvez également créer des graphiques de diagnostic pour évaluer la validité des hypothèses du modèle :
   ```R
   plot(modele_regression)
   ```



## 3. **Affichage:**

## 4. **prédictions**

La fonction `predict()` en R est utilisée pour générer des prédictions à partir de modèles statistiques, notamment les modèles de régression. Voici une explication détaillée de la fonction, sa syntaxe, différentes façons d'utilisation et des exemples :

### Définition :
La fonction `predict()` est utilisée pour faire des prédictions à partir de modèles statistiques. Elle prend en entrée un objet de modèle (généralement obtenu à l'aide de fonctions telles que `lm()` pour la régression linéaire) et de nouvelles données pour lesquelles vous souhaitez faire des prédictions.

### Syntaxe :
```R
predict(object, newdata = NULL, interval = "none", level = 0.95, type = "response", terms = NULL, ...)
```

- `object`: L'objet du modèle (généralement le résultat d'une fonction de modélisation comme `lm()`).
- `newdata`: Les nouvelles données pour lesquelles vous souhaitez faire des prédictions.
- `interval`: Spécifie si des intervalles de confiance doivent être calculés ("none", "confidence", ou "prediction").
- `level`: Le niveau de confiance pour les intervalles de confiance.
- `type`: Le type de prédictions à générer, souvent utilisé pour les modèles de régression logistique ("link" ou "response").
- `terms`: Un ensemble optionnel de termes à utiliser pour générer des prédictions spécifiques.
- `...`: Des arguments supplémentaires spécifiques au modèle.

### Utilisation :
#### 1. Prédictions simples :
```R
# Supposons que 'modele' est un objet de régression linéaire
predictions <- predict(modele, newdata = new_data)
```

#### 2. Intervalles de confiance :
```R
# Pour obtenir des intervalles de confiance à 95%
predictions_with_intervals <- predict(modele, newdata = new_data, interval = "confidence", level = 0.95)
```

#### 3. Prédictions spécifiques à certains termes :
```R
# Supposons que 'modele' inclut les termes X1, X2, et X1:X2
# Pour obtenir des prédictions uniquement pour X1 et X2
predictions_specific_terms <- predict(modele, newdata = new_data, terms = c("X1", "X2"))
```

### Exemples :
```R
# Exemple avec lm (régression linéaire)
modele <- lm(mpg ~ wt + hp, data = mtcars)
new_data <- data.frame(wt = c(3.0, 4.0), hp = c(120, 150))

# Prédictions simples
predictions <- predict(modele, newdata = new_data)
print(predictions)

# Intervalles de confiance à 95%
predictions_with_intervals <- predict(modele, newdata = new_data, interval = "confidence", level = 0.95)
print(predictions_with_intervals)

# Prédictions spécifiques à certains termes
predictions_specific_terms <- predict(modele, newdata = new_data, terms = c("wt", "hp"))
print(predictions_specific_terms)
```

Ces exemples illustrent différentes façons d'utiliser la fonction `predict()` pour générer des prédictions à partir d'un modèle de régression linéaire. Vous pouvez ajuster les arguments en fonction des besoins spécifiques de votre analyse.