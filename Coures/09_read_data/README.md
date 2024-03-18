# cour 09 : **read data**


>L'objectif de ce cours est de connaître les méthodes pour importer des données à partir de fichiers CSV, Excel, SQL, etc., et aussi comment sauvegarder un data.frame dans ces fichiers.


## 1. **les fichiers ``CSV``:**

- **Description:**

  - >Les fichiers CSV (Comma-Separated Values) sont des fichiers texte simples utilisés pour stocker des données tabulaires. Dans un fichier CSV, les données sont organisées en lignes, où chaque ligne correspond à une entrée distincte, et les valeurs de chaque entrée sont séparées par des virgules (ou un autre délimiteur, comme un point-virgule ou une tabulation).

  
  - **Par exemple, un fichier CSV peut ressembler à ceci :**

    ```plaintext
    Nom,Âge,Ville
    Alice,25,Paris
    Bob,30,Londres
    Charlie,22,Berlin
    ```

    Dans cet exemple, chaque ligne représente une personne avec des informations sur son nom, son âge et sa ville, et les valeurs correspondantes sont séparées par des virgules. 
  
  - Les fichiers CSV sont largement utilisés car ils sont simples à créer, à lire et à interpréter, et ils sont compatibles avec de nombreux logiciels et outils d'analyse de données.




- **La fonction `read.csv()` :**

  - **Description:**

    >La fonction `read.csv()` en R est utilisée pour lire des fichiers CSV  dans R. Les fichiers CSV sont des fichiers texte où les valeurs sont séparées par des virgules (ou d'autres délimiteurs spécifiés). 
    
  - **La syntaxe de base de la fonction `read.csv()` est la suivante :**

      ```R
      read.csv(file, header = TRUE, sep = ",", quote = "\"", dec = ".", ...)
      ```

      - `file`: Le chemin vers le fichier CSV que vous souhaitez lire.
      - `header`: Un argument logique indiquant si la première ligne du fichier contient les noms de colonnes (par défaut, `TRUE`).
      - `sep`: Le caractère de séparation entre les valeurs (par défaut, la virgule `,`).
      - `quote`: Le caractère utilisé pour encadrer les champs de texte (par défaut, la double quote `"`)
      - `dec`: Le caractère utilisé pour spécifier le séparateur décimal (par défaut, le point `.`).


  - **Voici un exemple d'utilisation de `read.csv()` avec un fichier CSV :**

      ```R
      # Charger un fichier CSV
      donnees <- read.csv("chemin/vers/le/fichier.csv")

      # Afficher la structure des données
      str(donnees)

      # Afficher les premières lignes des données
      head(donnees)
      ```

      Dans cet exemple, `donnees` sera un objet de type ``data.frame`` contenant les données du fichier CSV. Vous pouvez ajuster les paramètres de la fonction `read.csv()` en fonction des caractéristiques de votre fichier CSV.


  - en RStudio, vous pouvez également utiliser l'interface graphique pour importer des fichiers CSV. Allez dans le menu "Session" -> "Import Data" -> "From Text (base)...", puis sélectionnez votre fichier CSV.




- **La fonction `write.csv()`:**

  - **Description:**

  >La fonction `write.csv()` en R est utilisée pour écrire un objet data frame dans un fichier CSV (Comma-Separated Values). Cela permet de sauvegarder les données contenues dans le data frame dans un format CSV qui peut être facilement partagé ou importé dans d'autres logiciels.


  - **La syntaxe générale de la fonction `write.csv()` est la suivante :**

    ```R
    write.csv(x, file, row.names = TRUE, col.names = TRUE, quote = TRUE, sep = ",")
    ```

    - `x`: L'objet data frame à écrire dans le fichier CSV.
    - `file`: Le chemin vers le fichier où vous souhaitez sauvegarder les données.
    - `row.names`: Un argument logique indiquant si les noms de lignes doivent être inclus dans le fichier (par défaut, `TRUE`).
    - `col.names`: Un argument logique indiquant si les noms de colonnes doivent être inclus dans le fichier (par défaut, `TRUE`).
    - `quote`: Un argument logique indiquant si les chaînes de caractères doivent être entourées de guillemets doubles (par défaut, `TRUE`).
    - `sep`: Le caractère de séparation entre les valeurs (par défaut, la virgule `,`).

  - **Exemple d'utilisation de `write.csv()` :**

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


## 2. **les fichiers ``excel :  xlsx``**

### 2.1 **``readxl``:**

- **le package ``readxl``:**

  >Le package `readxl` en R est un package très utile qui fournit des fonctionnalités pour lire les fichiers Excel directement dans R. Il permet d'importer des données à partir de fichiers Excel (.xls et .xlsx) dans des structures de données R telles que les dataframes.


  - **Installation** :
    Vous pouvez installer le package `readxl` à partir du dépôt CRAN en utilisant la fonction `install.packages()` :

    ```r
    install.packages("readxl")
    ```

  - **Chargement de la bibliothèque** :
    Après l'avoir installé, vous devez charger la bibliothèque dans votre session R à l'aide de la fonction `library()` :

    ```r
    library(readxl)
    ```



- **la fonction ``excel_sheets``:**

  >La fonction `excel_sheets()` fait partie du package `readxl` en R. Elle permet d'obtenir une liste des noms des feuilles de calcul présentes dans un fichier Excel spécifié. 

  - Utilisez la fonction `excel_sheets()` pour obtenir les noms des feuilles de calcul dans le fichier Excel spécifié :

    ```r
    feuilles <- excel_sheets("chemin/vers/votre/fichier.xlsx")
    ```

- **la fonction ``read_excel``:**

  - **Description :**
    >La fonction `read_excel()` est une fonction du package `readxl` en R, qui permet de lire des données à partir de fichiers Excel et de les importer dans R sous forme de dataframe. Voici une description détaillée et la syntaxe de cette fonction :


  - **Syntaxe :**

    ```r
    read_excel(path, sheet = NULL, range = NULL, col_names = TRUE, col_types = NULL, skip = 0)
    ```

    - `path` : Le chemin d'accès au fichier Excel à lire.
    - `sheet` : Le nom ou l'index de la feuille de calcul à lire. 
    - `range` : Les coordonnées de la plage de cellules à lire. Par défaut, toutes les données sont lues. Par exemple, `"B2:E10"` .
    - `col_names` : Un booléen indiquant si la première ligne du fichier Excel contient des noms de colonnes. Par défaut, il est défini sur `TRUE`.
    - `skip` : Le nombre de lignes à sauter au début du fichier Excel. Par défaut, il est défini sur 0.



- **Exemple:**

  ```r

  install.packages("readxl")
  library(readxl)

  list_sheets <- excel_sheets("Coures/09_read_data/examples/test.xlsx"  )
  list_sheets

  # data.frame of sheet1 
  df.1 <- read_excel("Coures/09_read_data/examples/test.xlsx" , sheet="Sheet1")
  head(df.1)
  class(df.1)

  # list of all data-frame of all sheet in excel file

  list_df <- lapply(list_sheets, FUN = read_excel , path="Coures/09_read_data/examples/test.xlsx")
  list_df
  ```



### 2.2 .**``writexl``:**


- **le package ``writexl``:**

  >Le package ``writexl`` en R est un package conçu pour écrire des données dans des fichiers Excel. Il offre une alternative simple et légère pour créer des fichiers Excel sans avoir besoin d'autres dépendances ou de logiciels externes.


  - **Installation** :
    Vous pouvez installer le package `writexl` à partir du dépôt CRAN en utilisant la fonction `install.packages()` :

    ```r
    install.packages("writexl")
    ```

  - **Chargement de la bibliothèque** :
    Après l'avoir installé, vous devez charger la bibliothèque dans votre session R à l'aide de la fonction `library()` :

    ```r
    library(writexl)
    ```

- **la fonction ``write_xlsx``:**

  - **Description :**
    >La fonction `write_xlsx()` prend en entrée un dataframe R et écrit ses données dans un fichier Excel au format .xlsx.

  - **Syntaxe :**

    ```r
    write_xlsx(data, path, col_names = TRUE)
    ```

    - `data` : Le dataframe R à écrire dans le fichier Excel.
    - `path` : Le chemin d'accès et le nom du fichier Excel de destination.
    - `col_names` : Un booléen indiquant si les noms de colonnes doivent être inclus dans le fichier Excel. Par défaut, il est défini sur `TRUE`.




- **Exemple:**

  ```r
  install.packages("writexl")
  library(writexl)
  df <- mtcars
  class(df)
  head(df)
  write_xlsx(df , "test.xlsx")
  getwd()
  ```




## 3. **La fonction `read.table()`:**



- **Description :**

  >La fonction `read.table()` lit les données à partir d'un fichier texte ou CSV et les stocke dans un dataframe. Elle est polyvalente et peut être utilisée pour lire des données dans divers formats, notamment les fichiers CSV, TSV et d'autres formats de données tabulaires.

- **Syntaxe :**

  ```r
  read.table(file, header = FALSE, sep = "", quote = "\"'", dec = ".")
  ```


  - `file` : Le chemin d'accès au fichier à lire.
  - `header` : Un booléen indiquant si la première ligne du fichier contient des noms de colonnes. Par défaut, il est défini sur `FALSE`.
  - `sep` : Le séparateur utilisé pour séparer les champs dans le fichier. Par défaut, il est défini sur `""`, ce qui signifie que R essaiera de deviner le séparateur automatiquement.

  - `quote` : Le caractère utilisé pour entourer les champs de texte dans le fichier. Par défaut, il est défini sur `"'`.
  - `dec` : Le caractère utilisé comme séparateur décimal dans les nombres. Par défaut, il est défini sur `"."`.


- **Exemple d'utilisation :**

  ```r
  # Lire un fichier CSV avec des noms de colonnes
  data <- read.table("chemin/vers/mon_fichier.txt", header = TRUE, sep = ",", quote = "\"")

  # Afficher les premières lignes des données
  head(data)
  ```




