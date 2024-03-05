# cour : **le type ``NA``:**



## 1. **Introduction:**
   
>En R, `NA` (Not Available) est utilisé pour représenter les données manquantes ou non disponibles. C'est une valeur spéciale qui indique qu'une valeur est manquante ou inconnue dans le contexte des données. 


   ```R
   vecteur <- c(10, NA, 30, NA, 50)
   ```

## 2. **propriétés de ``NA``:**


- **Compatibilité avec différents types de données :** 

   - `NA` peut être utilisé avec différents types de données en R, tels que numériques, caractères, logiques, etc. Par exemple, `NA` peut être utilisé pour représenter une valeur manquante dans un vecteur numérique ou une chaîne de caractères manquante.

      ```R
      vecteur_numerique <- c(10, NA, 30, NA, 50)
      vecteur_caracteres <- c("a", "b", NA, "d")
      ```

- **Traitement de `NA` :** 
   
   - Lorsque des opérations sont effectuées sur des vecteurs contenant des `NA`, le résultat peut également être `NA`. Cela reflète l'incertitude associée à des données manquantes.

      ```R
      somme <- sum(c(10, NA, 30, NA, 50))
      # La somme sera NA car il y a des données manquantes
      ```


## 3. **Fonctions pour gérer `NA` :** 


### 3.1 **`is.na()`:**

- **Description:**

   >La fonction `is.na()` en R est utilisée pour vérifier si les éléments d'un objet sont manquants (NA). Cette fonction renvoie un vecteur logique de la même longueur que l'objet d'origine, indiquant pour chaque élément s'il est manquant ou non.


- **Voici un exemple d'utilisation de la fonction `is.na()` :**

   ```R
   # Création d'un vecteur avec des valeurs manquantes
   mon_vecteur <- c(1, 2, NA, 4, NA, 6)

   # Utilisation de is.na pour vérifier les valeurs manquantes
   resultat <- is.na(mon_vecteur)

   print(resultat)
   ```

   Dans cet exemple, `resultat` sera un vecteur logique indiquant TRUE pour les positions où les valeurs sont manquantes (NA) et FALSE pour les positions où les valeurs sont présentes.

- **Utilisation:**

   - **nombre de NA dans un vecteur:**

      Si vous voulez savoir combien de valeurs manquantes il y a dans un objet, vous pouvez utiliser la fonction `sum()` en conjonction avec `is.na()` :

      ```R
      # Compter le nombre de valeurs manquantes dans mon_vecteur
      nb_valeurs_manquantes <- sum(is.na(mon_vecteur))

      print(nb_valeurs_manquantes)
      ```

      Cela affichera le nombre total de valeurs manquantes dans le vecteur `mon_vecteur`.

   - **existence de NA :**

      Pour vérifier s'il existe au moins un NA dans un vecteur, vous pouvez utiliser la fonction `any()` en conjonction avec `is.na()`.

      Voici comment vous pouvez le faire :

      ```R
      # Création d'un vecteur avec des valeurs manquantes
      mon_vecteur <- c(1, 2, NA, 4, NA, 6)

      # Vérifier s'il existe au moins un NA dans le vecteur
      existence_na <- any(is.na(mon_vecteur))

      print(existence_na)
      ```

      La variable `existence_na` sera TRUE si au moins un NA est présent dans le vecteur, sinon elle sera FALSE. C'est une façon pratique de vérifier rapidement s'il y a des valeurs manquantes dans un vecteur sans avoir besoin de compter leur nombre précis.

   

### 3.1 **L'argument ``na.rm``:**

- **Description:**

   >L'argument `na.rm` est  un argument facultatif que l'on retrouve dans certaines fonctions, telles que `sum()`, `mean()`, `min()`, `max()`, etc. Cet argument permet de spécifier si les valeurs manquantes (NA) doivent être supprimées avant de calculer le résultat.

   >Cela permet de gérer plus facilement les données contenant des valeurs manquantes lors de l'utilisation de certaines fonctions de base en R. Vous pouvez utiliser l'argument `na.rm` de manière similaire avec d'autres fonctions qui supportent cet argument.

- **Par exemple, considérons la fonction `sum()` :**

   ```R
   # Création d'un vecteur avec des valeurs manquantes
   mon_vecteur <- c(1, 2, NA, 4, NA, 6)

   # Utilisation de sum() avec na.rm = TRUE pour exclure les valeurs manquantes
   resultat_sans_na <- sum(mon_vecteur, na.rm = TRUE)

   print(resultat_sans_na)
   ```

   Dans cet exemple, `resultat_sans_na` sera la somme des valeurs non manquantes du vecteur, car `na.rm = TRUE` indique à R d'ignorer les valeurs manquantes.


