# cour 24 : **``anova``**


## 1. **Introduction:**

>L'ANOVA (Analyse de la Variance) est une méthode statistique utilisée pour analyser la variation entre les moyennes de plusieurs groupes. Elle permet de déterminer si ces moyennes sont significativement différentes les unes des autres. L'ANOVA est couramment utilisée dans le cadre de comparaisons de moyennes de trois groupes ou plus.


- L'objectif principal de l'ANOVA est de décomposer la variation totale observée dans les données en deux composantes principales : la variation entre les groupes (intergroupe) et la variation au sein des groupes (intragroupe). Si la variation entre les groupes est significativement plus grande que la variation au sein des groupes, cela suggère que les moyennes des groupes sont différentes.


- L'ANOVA suppose que les échantillons suivent une distribution normale et que les variances des groupes sont égales (**homoscédasticité**). Il existe différents types d'ANOVA, notamment l'ANOVA à un facteur (pour comparer les moyennes de plusieurs niveaux d'une seule variable), l'ANOVA à deux facteurs (pour comparer les moyennes en tenant compte de deux variables), et l'ANOVA à mesures répétées (lorsque les mesures sont prises sur les mêmes sujets à différents moments).

- Le test d'hypothèses associé à l'ANOVA évalue si la variation entre les groupes est statistiquement significative. Si cette variation est significative, on peut effectuer des tests post-hoc pour déterminer quels groupes spécifiques diffèrent significativement les uns des autres.


## 2. **ANOVA en R:**


### 2.1 **la fonction ``anova()``:**

- **Description:**

    >La fonction `anova()` en R est utilisée pour effectuer une analyse de la variance (ANOVA). Elle permet de comparer les moyennes de plusieurs groupes et de déterminer si ces moyennes sont statistiquement différentes. 
    
- **Syntaxe:**
    >La syntaxe générale de la fonction `anova()` dépend du modèle que vous ajustez, mais elle est souvent utilisée avec des modèles linéaires ou linéaires généralisés. 

    ```R
    modele <- lm(reponse ~ facteur , data = df)
    anova(modele)
    ```
    - ``anova()`` return la table de l'analyse de variance 

- **Exemple :**

    ```R
    foret <- rep(1:3 , c(10 , 10 , 10))
    hauteur <- c(23.4 , 24.4 , 24.6 , 24.8 , 24.9 , 25 ,25.5 , 25.8 , 26.1 , 26.2
            , 18.9 ,21.1 , 21.1 , 21.3 , 21.7 , 22.1 , 22.2 , 22.5 , 22.7 , 23.5 
            , 22.5 , 22.9 , 23.4 , 23.7 , 23.9 , 24 , 24 , 24.2 , 24.3 , 24.5 )

    foret <- factor(foret)
    arbre <- data.frame(foret , hauteur)

    # definition des condition d'anova la somme de alpha_i = 0 

    options(contrasts = c("contr.sum" , "contr.poly"))

    # modele  : 
    m1 <- lm(hauteur~foret , data = arbre)
    anova(m1)
    ```

    ```output
    Analysis of Variance Table

    Response: hauteur
            Df Sum Sq Mean Sq F value    Pr(>F)    
    foret      2 57.265 28.6323  31.874 7.809e-08 ***
    Residuals 27 24.254  0.8983                      
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

    ```


    Dans cet exemple :
    - Nous créons un dataframe `arbre` avec une variable `hauteur` et une variable catégorielle `foret`.
    - Nous ajustons un modèle linéaire (`lm()`) pour examiner comment la variable dépend de la variable catégorielle.
    - La fonction `anova()` est utilisée pour effectuer l'ANOVA sur le modèle linéaire, ``anova()`` return la table de l'analyse de variance 



### 2.2 **la fonction ``aov()``:**

- **Description:**

    >La fonction `aov()` en R est utilisée pour effectuer une analyse de la variance (ANOVA) pour les modèles linéaires. Elle est spécifiquement conçue pour ajuster des modèles linéaires en utilisant le cadre ANOVA. 
    

- **Syntaxe:**

    ```R
    modele <- aov(reponse ~ facteur , data = df)
    summary(modele)
    ```
    - ``summary(modele)`` return la table de l'analyse de variance   
    

- **Exemple :**

    ```R
    foret <- rep(1:3 , c(10 , 10 , 10))
    hauteur <- c(23.4 , 24.4 , 24.6 , 24.8 , 24.9 , 25 ,25.5 , 25.8 , 26.1 , 26.2
            , 18.9 ,21.1 , 21.1 , 21.3 , 21.7 , 22.1 , 22.2 , 22.5 , 22.7 , 23.5 
            , 22.5 , 22.9 , 23.4 , 23.7 , 23.9 , 24 , 24 , 24.2 , 24.3 , 24.5 )

    foret <- factor(foret)
    arbre <- data.frame(foret , hauteur)

    # definition des condition d'anova la somme de alpha_i = 0 

    options(contrasts = c("contr.sum" , "contr.poly"))

    # modele  : 
    m2 <- aov(hauteur ~ foret , data = arbre)
    summary(m2)
    ```

    ```output
                Df Sum Sq Mean Sq F value   Pr(>F)    
    foret        2  57.26  28.632   31.87 7.81e-08 ***
    Residuals   27  24.25   0.898                     
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
    ```

## 3. **Verification des hypothèse ``d'anova``:**

### 3.1 **condition de normalité:**

La vérification de l'hypothèse de normalité des résidus est une étape importante lors de l'analyse de variance (ANOVA). Les résidus représentent les différences entre les valeurs observées et les valeurs prédites par le modèle, et leur normalité est une condition nécessaire pour effectuer des tests d'inférence statistique valides.

Voici quelques méthodes couramment utilisées pour vérifier l'hypothèse de normalité des résidus en ANOVA :

1. **Graphiques de probabilité normale (QQ-plot) :**
   - Un graphique ``QQ-plot`` compare les quantiles des résidus à ceux d'une distribution normale. Si les points du graphique suivent approximativement une ligne droite, cela suggère que les résidus sont normalement distribués.
   - Vous pouvez créer un QQ-plot en utilisant la fonction `qqnorm()` et `qqline()` en R après avoir ajusté le modèle ANOVA.

   ```R
   # Ajuster le modèle ANOVA (remplacez "modele_anova" par votre modèle)
   modele_anova <- aov(Valeurs ~ Groupe, data = donnees)

   # Créer un QQ-plot des résidus
   qqnorm(resid(modele_anova))
   qqline(resid(modele_anova))
   ```

2. **Tests statistiques de normalité :**
   - Des tests formels de normalité tels que le test de Shapiro-Wilk ou le test d'Anderson-Darling peuvent être utilisés pour évaluer si les résidus suivent une distribution normale.
   - Vous pouvez utiliser la fonction `shapiro.test()` en R pour le test de Shapiro-Wilk.

   ```R
   # Test de normalité des résidus avec le test de Shapiro-Wilk
   shapiro.test(resid(modele_anova))
   ```

   Un petit p-value dans ces tests suggère un rejet de l'hypothèse nulle de normalité.

3. **Histogramme des résidus :**
   - Un histogramme des résidus peut également être utile pour visualiser leur distribution. Il peut être créé avec la fonction `hist()`.

   ```R
   # Histogramme des résidus
   hist(resid(modele_anova), main = "Histogramme des Résidus")
   ```

### 3.2 **condition d'homogénéité des variances:``Le test de Bartlett``**

- **Description:**

    >Le test de Bartlett est un test statistique utilisé pour évaluer l'hypothèse d'homogénéité des variances entre plusieurs groupes. En d'autres termes, il examine si les variances des échantillons provenant de différents groupes sont statistiquement équivalentes.

    - L'hypothèse nulle (H0) du test de Bartlett stipule que toutes les populations ont des variances égales, tandis que l'hypothèse alternative suggère que au moins une population a une variance différente des autres. En d'autres termes, si la valeur de p obtenue à partir du test de Bartlett est inférieure à un certain seuil (souvent 0,05), on peut rejeter l'hypothèse nulle et conclure à l'existence de différences significatives entre les variances des groupes.

    - **condition:** Le test de Bartlett est sensible à la normalité des données. Si les données dans chaque groupe ne suivent pas une distribution normale, le test de Bartlett peut ne pas être approprié. Dans de tels cas, des tests alternatifs tels que le test de Levene peuvent être utilisés.

- **``bartlett.test()``:**

    >Pour vérifier l'hypothèse d'homogénéité des variances dans le contexte d'une ANOVA (Analyse de la variance) en utilisant le test de Bartlett, vous pouvez utiliser la fonction `bartlett.test()` en R. 

    Supposons que vous avez un modèle ANOVA comme celui-ci :

    ```R
    # Exemple de données pour un modèle ANOVA
    groupe1 <- c(25, 30, 35, 40, 45)
    groupe2 <- c(20, 22, 25, 28, 30)
    groupe3 <- c(18, 20, 22, 24, 26)

    # Création d'un data frame
    donnees_anova <- data.frame(
    Valeurs = c(groupe1, groupe2, groupe3),
    Groupe = rep(c("Groupe1", "Groupe2", "Groupe3"), each = 5)
    )

    # Réalisation de l'ANOVA
    resultat_anova <- aov(Valeurs ~ Groupe, data = donnees_anova)

    # Test de Bartlett pour l'homogénéité des variances
    test_bartlett <- bartlett.test(Valeurs ~ Groupe, data = donnees_anova)

    # Affichage des résultats
    print(test_bartlett)
    ```

    Dans cet exemple, `Valeurs` représente les données numériques et `Groupe` est la variable catégorielle indiquant à quel groupe chaque observation appartient. Vous appliquez d'abord l'ANOVA avec `aov()` et ensuite vous effectuez le test de Bartlett avec `bartlett.test()`.

    Le résultat du test de Bartlett sera affiché, et vous pouvez examiner la valeur de p (`p.value`) pour déterminer si l'hypothèse d'homogénéité des variances est rejetée ou non. Une petite valeur de p (généralement < 0,05) suggère un rejet de l'hypothèse d'homogénéité des variances, ce qui peut influencer l'interprétation des résultats de l'ANOVA.


### RQ : calcul des coefficients d'ANOVA :

- la fonction ``coef(modele)`` return les valeures de $\mu$ et de $\alpha_i$ suaf la dernier car la somme de $\alpha_i$ est nulle

- la fonction ``dummy.coef(modele)``  return les valeures de $\mu$ et de $\alpha_i$. 

- si le modéle de ANOVA a été ajuste avec la fonction ``aov`` alors la fonction ``model.tables(modele)`` return les valeurs de tous les coefficients du modéle.
