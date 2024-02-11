# Exercice : 

Pour tester la performance du système de freinage d’une voiture, on la fait rouler jusqu’à atteindre une vitesse x (en mètres par seconde), à laquelle on freine.

On mesure alors la distance de freinage y (en mètres). On fait l’expérience pour n vitesses différentes  $x_1, . . . , x_n$  et on mesure les n distances de freinage correspondantes $y_1, . . . , y_n$. 
 
Toutes les mesures sont faites avec le même véhicule et le même pilote, et sont supposées indépendantes. On obtient le tableau suivant  :

| Numéro de mesure | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|------------------|---|---|---|---|---|---|---|---|
| Vitesse (xi)     | 5 | 10 | 15 | 20 | 25 | 30 | 35 | 40 |
| Distance de freinage (yi) | 3.42 | 5.96 | 31.14 | 41.76 | 74.54 | 94.92 | 133.78 | 169.16 |



- Quel modèle de dépendance entre la distance de freinage et la vitesse peut-on proposer ? 

- Une dépendance affine est-elle raisonnable ? 

- Peut-on estimer la distance de freinage d’une voiture lancée à 50 m/s ? Avec quelle précision ?


### Rappel :

$$\hat{\beta_1} = \frac{C_{xY}}{s_x^2}$$

$$\hat{\beta_0} = \bar{Y_n} - \hat{\beta_1}.\bar{x_n}$$

$$\hat{\sigma}^2 = \frac{n}{n-2} s_Y^2 (1 - r_{xY}^2)$$


### RQ : 

- En R, $r_{xy}$ est donné par ``cor(x,y)``. 

- La commande ``cov(x,y)`` ne donne pas $c_{xy}$ mais $\frac{n}{n − 1}.c_{xy}$ . 

- de meme la commande ``var(x)`` ne donne pas $var(x)$ mais $\frac{n}{n-1}var(X)$

