
La fonction `shapiro.test` en R est utilisée pour effectuer le test de normalité de Shapiro-Wilk sur un échantillon de données. Le test de Shapiro-Wilk est un test statistique qui évalue si un échantillon de données suit une distribution normale. Il est couramment utilisé pour vérifier l'assumption de normalité avant d'appliquer des méthodes statistiques qui supposent une distribution normale, comme certaines procédures de régression ou d'analyse de la variance.

Voici comment utiliser `shapiro.test` et interpréter ses résultats :

```R
# Exemple d'utilisation de shapiro.test
set.seed(123)  # Pour la reproductibilité
donnees <- rnorm(100)  # Générer un échantillon de données normalement distribuées

# Effectuer le test de normalité de Shapiro-Wilk
resultat_test <- shapiro.test(donnees)

# Afficher les résultats du test
print(resultat_test)
```

Interprétation des résultats du test :

- **Statistic W :** La statistique de test, W, est fournie dans les résultats. Plus la valeur de W est proche de 1, plus les données sont conformes à une distribution normale. 

- **p-value :** La p-value associée au test. Si la p-value est inférieure à un seuil de signification donné (par exemple 0,05), on peut rejeter l'hypothèse nulle selon laquelle les données suivent une distribution normale.

En termes simples, si la p-value est supérieure à votre niveau de signification (par exemple 0,05), vous ne pouvez pas rejeter l'hypothèse nulle, ce qui suggère que les données peuvent être considérées comme provenant d'une distribution normale. Si la p-value est inférieure à votre niveau de signification, vous pouvez remettre en question l'hypothèse de normalité.

Exemple d'interprétation :
```R
# Exemple d'interprétation des résultats
if(resultat_test$p.value > 0.05) {
  cat("Les données semblent suivre une distribution normale.")
} else {
  cat("Les données ne suivent pas une distribution normale.")
}
```

Il est important de noter que le test de normalité n'est pas toujours nécessaire, et son interprétation doit être effectuée avec prudence, surtout avec des échantillons de grande taille où des petites déviations de la normalité peuvent conduire à des p-values significatives. Dans certains cas, une exploration visuelle des données (par exemple, à l'aide d'histogrammes ou de qq-plots) peut également être informative pour évaluer la normalité.