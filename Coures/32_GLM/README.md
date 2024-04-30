# cour 32 : **``GLM``**


## 1. **Introduction:**

- **Définition:**

    >L'idée fondamentale derrière les GLM est de généraliser le cadre des modèles linéaires classiques en permettant à la variable de réponse de suivre une distribution de probabilité autre que la distribution normale, et en utilisant une fonction de lien pour relier les paramètres de la distribution à une combinaison linéaire des prédicteurs.


- **concepts clés qui caractérisent les modèles linéaires généralisés :**

    1. **Famille de distributions**: Contrairement aux modèles linéaires classiques qui supposent une distribution normale pour la variable de réponse, les GLM permettent d'utiliser différentes distributions de probabilité pour la variable de réponse. Les distributions couramment utilisées incluent la binomiale, la de Poisson, la gamma, etc.

    2. **Fonction de lien**: Les GLM utilisent une fonction de lien pour relier la moyenne de la variable de réponse aux prédicteurs. Cette fonction de lien peut être linéaire, logarithmique, identité, inverse, etc. Elle permet de capturer des relations non linéaires entre les prédicteurs et la variable de réponse.





## 2. **Modéle  ``glm()``:**

### 2.1 . **la fonction  ``glm()``:**

- **Description:**

    >La fonction `glm()` en R est une fonction essentielle pour ajuster des modèles linéaires généralisés (GLM). Cette fonction est utilisée pour créer et ajuster des modèles statistiques où la variable de réponse suit une distribution de probabilité autre que la normale, et où la relation entre les prédicteurs et la variable de réponse est modélisée à l'aide d'une fonction de lien.


- **Syntaxe:**


    ```R
    glm(formula, data, family = nom_loi("fonction_lien"), ...)
    ```

    - `formula` : Spécifie le modèle à ajuster. Il s'agit généralement d'une formule R qui décrit la relation entre la variable de réponse et les prédicteurs. 

    - `data` : Spécifie le dataframe dans lequel se trouvent les variables utilisées dans la formule.

    - `family` : Spécifie la famille de distribution de la variable de réponse et la fonction de lien à utiliser :   

        ```R

        binomial(link = "logit")
        gaussian(link = "identity")
        Gamma(link = "inverse")
        inverse.gaussian(link = "1/mu^2")
        poisson(link = "log")
        ```


- **Exemple:**

    ```R
    # Charger les données
    data <- read.csv("donnees.csv")

    # Ajuster un modèle GLM avec une distribution binomiale
    model <- glm(y ~ x1 + x2, data = data, family = binomial)

    # Afficher un résumé du modèle
    summary(model)
    ```


### 2.2 **summary sur un Modéle ``GLM``:**

- **Description:**

    >Lorsque vous utilisez la fonction `summary()` sur un objet de modèle GLM en R, vous obtenez un résumé statistique détaillé du modèle ajusté. Ce résumé comprend plusieurs éléments importants qui permettent d'évaluer la qualité de l'ajustement du modèle et l'importance des différents prédicteurs. 


- 

    1. **Deviance Residuals** : Cette section fournit des statistiques sur les résidus du modèle, y compris la moyenne, les quantiles, la déviance et le nombre de résidus.

    2. **Coefficients** : Cette section présente les coefficients estimés pour chaque prédicteur inclus dans le modèle, ainsi que leur erreur standard, leur statistique de test  et la valeur p associée à ce test. Ces informations vous aident à déterminer l'importance de chaque prédicteur dans le modèle.

    3. **Dispersion Parameter** : Cette section fournit des informations sur le paramètre de dispersion du modèle, qui est utilisé pour ajuster la variance du modèle.

    4. **Null Deviance** : Il s'agit de la déviance du modèle nul, qui est le modèle sans prédicteurs (c'est-à-dire juste l'intercept). Cette statistique vous permet de comparer la déviance du modèle ajusté à celle du modèle nul pour évaluer l'amélioration de l'ajustement apportée par les prédicteurs.

    5. **AIC et BIC** : Ces mesures sont des critères d'information qui évaluent la qualité globale du modèle en tenant compte de sa complexité. Un AIC ou BIC plus faible indique un meilleur ajustement du modèle.


- **Exemples:**

    ```R

    df <- iris
    names(df)
    # la fonction glm :
    ?family
    model <- glm(Sepal.Length~Sepal.Width+Petal.Length+Petal.Width , data = df , 
                family = Gamma(link = "inverse"))
    summary(model)
    ```


    **resultat :**

    ```R

    Call:
    glm(formula = Sepal.Length ~ Sepal.Width + Petal.Length + Petal.Width, 
        family = Gamma(link = "inverse"), data = df)

    Deviance Residuals: 
        Min         1Q     Median         3Q        Max  
    -0.148990  -0.036126  -0.001259   0.032754   0.124851  

    Coefficients:
                Estimate Std. Error t value Pr(>|t|)    
    (Intercept)   0.279548   0.007163  39.024  < 2e-16 ***
    Sepal.Width  -0.016124   0.001940  -8.313 5.96e-14 ***
    Petal.Length -0.018891   0.001499 -12.601  < 2e-16 ***
    Petal.Width   0.012318   0.003400   3.623 0.000401 ***
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

    (Dispersion parameter for Gamma family taken to be 0.002917642)

        Null deviance: 2.97256  on 149  degrees of freedom
    Residual deviance: 0.42558  on 146  degrees of freedom
    AIC: 82.629

    Number of Fisher Scoring iterations: 4

    ```





## 3. **la fonction ``setpAIC()``:**

- **Description:**

    >La fonction `stepAIC()` fait partie du package R appelé ``MASS``, Elle est utilisée pour effectuer une sélection de modèle automatique basée sur le critère d'information d'Akaike (AIC). Cette fonction est utile lorsque vous avez un ensemble de modèles candidats et que vous souhaitez sélectionner le meilleur modèle parmi eux en utilisant l'AIC comme critère de sélection.

- **Syntaxe:**

    ```R
    stepAIC(object, direction = c("both", "backward", "forward"), scope, scale = 0, ...)
    ```

    - `object` : Spécifie le modèle initial sur lequel effectuer la sélection de modèle. 

    - `direction` : Spécifie la direction dans laquelle la sélection de modèle doit être effectuée: ``backward`` , ``forward`` 



- **Exemples:**

    ```R
    library(MASS)

    # Charger les données
    data <- read.csv("donnees.csv")

    # Spécifier le modèle initial
    model <- lm(response ~ ., data = data)

    # Effectuer une sélection de modèle basée sur l'AIC
    selected_model <- stepAIC(model, direction = "forward")

    # Afficher le modèle sélectionné
    summary(selected_model)
    ```

