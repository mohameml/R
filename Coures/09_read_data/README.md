# cour 09 : **read data**


## 1. **CSV**

- **La fonction `read.csv()` :**

La fonction `read.csv()` en R est utilisée pour lire des fichiers CSV (Comma-Separated Values) dans R. Les fichiers CSV sont des fichiers texte où les valeurs sont séparées par des virgules (ou d'autres délimiteurs spécifiés). La syntaxe de base de la fonction `read.csv()` est la suivante :

```R
read.csv(file, header = TRUE, sep = ",", quote = "\"", dec = ".", ...)
```

- `file`: Le chemin vers le fichier CSV que vous souhaitez lire.
- `header`: Un argument logique indiquant si la première ligne du fichier contient les noms de colonnes (par défaut, `TRUE`).
- `sep`: Le caractère de séparation entre les valeurs (par défaut, la virgule `,`).
- `quote`: Le caractère utilisé pour encadrer les champs de texte (par défaut, la double quote `"`)
- `dec`: Le caractère utilisé pour spécifier le séparateur décimal (par défaut, le point `.`).

Voici un exemple d'utilisation de `read.csv()` avec un fichier CSV :

```R
# Charger un fichier CSV
donnees <- read.csv("chemin/vers/le/fichier.csv")

# Afficher la structure des données
str(donnees)

# Afficher les premières lignes des données
head(donnees)
```

Dans cet exemple, `donnees` sera un objet de type data frame contenant les données du fichier CSV. Vous pouvez ajuster les paramètres de la fonction `read.csv()` en fonction des caractéristiques de votre fichier CSV.

Si vous utilisez RStudio, vous pouvez également utiliser l'interface graphique pour importer des fichiers CSV. Allez dans le menu "Session" -> "Import Data" -> "From Text (base)...", puis sélectionnez votre fichier CSV.

N'oubliez pas de spécifier le chemin correct vers votre fichier CSV dans la fonction `read.csv()`.



- **La fonction `write.csv()`**

La fonction `write.csv()` en R est utilisée pour écrire un objet data frame dans un fichier CSV (Comma-Separated Values). Cela permet de sauvegarder les données contenues dans le data frame dans un format CSV qui peut être facilement partagé ou importé dans d'autres logiciels.

La syntaxe générale de la fonction `write.csv()` est la suivante :

```R
write.csv(x, file, row.names = TRUE, col.names = TRUE, quote = TRUE, sep = ",")
```

- `x`: L'objet data frame à écrire dans le fichier CSV.
- `file`: Le chemin vers le fichier où vous souhaitez sauvegarder les données.
- `row.names`: Un argument logique indiquant si les noms de lignes doivent être inclus dans le fichier (par défaut, `TRUE`).
- `col.names`: Un argument logique indiquant si les noms de colonnes doivent être inclus dans le fichier (par défaut, `TRUE`).
- `quote`: Un argument logique indiquant si les chaînes de caractères doivent être entourées de guillemets doubles (par défaut, `TRUE`).
- `sep`: Le caractère de séparation entre les valeurs (par défaut, la virgule `,`).

Exemple d'utilisation de `write.csv()` :

```R
# Création d'un exemple de data frame
donnees <- data.frame(
  Nom = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22),
  Score = c(92, 85, 78)
)

# Écriture du data frame dans un fichier CSV
write.csv(donnees, "chemin/vers/le/fichier.csv", row.names = FALSE)
```

Dans cet exemple, le data frame `donnees` est écrit dans un fichier CSV spécifié par le chemin "chemin/vers/le/fichier.csv". Les noms de lignes sont exclus (`row.names = FALSE`), et le fichier CSV utilisera la virgule comme séparateur (`sep = ","`), par défaut.

L'utilisation de `write.csv()` permet de stocker les données d'un data frame dans un fichier CSV, facilitant ainsi le partage et l'importation de données entre différentes applications.