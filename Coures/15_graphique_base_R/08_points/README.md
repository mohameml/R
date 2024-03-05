# cour : **``points``**


La fonction `points` en R est utilisée pour ajouter des points à un graphique existant. Elle est souvent utilisée en conjonction avec la fonction `plot` pour superposer des points supplémentaires à un graphique déjà tracé. Voici la syntaxe de base de la fonction `points` :

```R
points(x, y, ...)
```

- `x` : les valeurs de l'axe des abscisses (X) pour les points à ajouter.
- `y` : les valeurs de l'axe des ordonnées (Y) pour les points à ajouter.
- `...` : des arguments supplémentaires permettant de spécifier d'autres propriétés graphiques, tels que la couleur, la forme, la taille, etc.

Voici un exemple simple pour illustrer l'utilisation de `points` :

```R
# Créer un graphique de dispersion avec plot
plot(x = 1:5, y = c(2, 3, 1, 4, 5), main = "Exemple de points() avec plot()")

# Ajouter des points supplémentaires avec points
points(x = c(2, 4), y = c(4, 2), col = "red", pch = 16)
```

Dans cet exemple, `plot` est utilisé pour créer un graphique de dispersion de base, puis `points` est utilisé pour ajouter des points rouges (`col = "red"`) aux coordonnées (2, 4) et (4, 2) avec une forme spécifiée par `pch = 16` (qui représente un cercle plein).

La fonction `points` est utile lorsque vous avez déjà un graphique existant et que vous souhaitez ajouter des données supplémentaires à ce graphique. Vous pouvez personnaliser les points ajoutés en utilisant les arguments supplémentaires disponibles dans `points`.