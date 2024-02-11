# Exo : 

Pour apaiser un certain type de maux de tête, on a l’habitude de traiter les malades avec un médicament **A**. 

Une étude statistique a montré que la durée de disparition de la douleur chez les malades traités avec A était une variable aléatoire de loi normale $\mathcal{N}(m_0, \sigma_0)$ , avec $m_0$  = 30 mn et $\sigma_0$  = 5 mn. 

Un laboratoire pharmaceutique a conçu un nouveau médicament B et désire tester son efficacité. Pour cela, le nouveau médicament a été administré à n malades cobayes, et on a mesuré la durée de disparition
de la douleur pour chacun d’entre eux : $x_1, . . . , x_n$. 

Une étude de statistique descriptive sur ces données a amené les pharmacologues à considérer que cette durée était une variable aléatoire de loi normale $\mathcal{N}(m, \sigma_2)$

L’effet du nouveau médicament se traduit facilement sur la valeur de la durée moyenne de disparition de la douleur :

- **m = m0** : le médicament B a en moyenne le même effet que le médicament A.
- **m < m0** : le médicament B est en moyenne plus efficace que le médicament A.
- **m > m0** : le médicament B est en moyenne moins efficace que le médicament A.

Pour savoir s’il faut commercialiser B, il faut trancher entre ces 3 hypothèses. 

L’important est de ne pas se tromper si on décide de changer de médicament : il est préférable de conserver un médicament moins performant que le nouveau que d’adopter
un médicament moins performant que l’ancien. 

Il faut donc que l’hypothèse **m < m0** corresponde au rejet de H0.

Par conséquent, nous allons tester H0 : **m ≥ m0** contre H1 : **m < m0** au vu de n réalisations indépendantes $x_1, . . . , x_n$  de la loi $\mathcal{N}(m, \sigma_2)$.


## Q1 :

- **montere que la région critque de ce test est :**  

$$ W ~~ = ~~  \left\{ (x_1, \dots , x_n ) ~~ , \sqrt{n}\frac{\bar{x}_n - m_0}{s_n^{'}} \leq -t_{n-1 , 2\alpha} \right\}$$



Avec le médicament A, la durée moyenne de disparition de la douleur était 30 mn.
On a administré le médicament B à 12 malades et relevé les durées de disparition de la
douleur suivants :

25 28 20 32 17 24 41 28 25 30 27 24

on pose alpha = 5%  

## Q2 : 

- **est-ce que il faut commercialiser B ?**

## Q3 : 

- **Déterminer la p-valeur**