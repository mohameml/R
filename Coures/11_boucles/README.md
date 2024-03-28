# cour 11 : **Les Boucles en R**




## 1. **``while``:**

- **Description:**

  >une boucle `while` est utilisée pour répéter l'exécution d'un bloc de code tant qu'une condition donnée est vraie. 
  
- **Voici la syntaxe générale d'une boucle `while` en R :**

  ```R
  while (condition) {
    # Bloc de code à exécuter tant que la condition est vraie
    # (instructions à répéter)
    
    # Mise à jour de la condition (pour éviter une boucle infinie)
  }
  ```

  Dans une boucle `while`, la condition est évaluée avant chaque itération du bloc de code. Si la condition est vraie, le bloc de code est exécuté. Après l'exécution du bloc de code, la condition est à nouveau évaluée. Si la condition devient fausse, la boucle `while` se termine et le programme passe à l'instruction suivante après la boucle.

- **Exemple:**

  Voici un exemple simple d'utilisation d'une boucle `while` en R pour afficher les nombres de 1 à 5 :

  ```R
  # Initialisation d'un compteur
  i <- 1

  # Boucle while pour afficher les nombres de 1 à 5
  while (i <= 5) {
    print(i)  # Afficher la valeur de i
    i <- i + 1  # Mise à jour du compteur
  }
  ```

## 2. **``for``:**

- **Description:**

  >une boucle `for` est utilisée pour répéter l'exécution d'un bloc de code un nombre spécifié de fois. 
  

- **Voici la syntaxe générale d'une boucle `for` en R :**

  ```R
  for (variable in sequence) {
    # Bloc de code à exécuter à chaque itération de la boucle
    # (instructions à répéter)
  }
  ```

  Dans une boucle `for`, la variable de boucle (`variable`) prend successivement les valeurs de la séquence spécifiée (`sequence`). À chaque itération de la boucle, le bloc de code à l'intérieur des accolades est exécuté avec la valeur actuelle de la variable de boucle.

- **Exemple:**

  Voici un exemple simple d'utilisation d'une boucle `for` en R pour afficher les nombres de 1 à 5 :

  ```R
  # Boucle for pour afficher les nombres de 1 à 5
  for (i in 1:5) {
    print(i)  # Afficher la valeur de i
  }
  ```

## 3. **les mots clés ``break`` && ``next``:**

### 3.1. **``break``:**

- **Description:**

  >le mot-clé `break` est utilisé pour interrompre une boucle   si une certaine condition est vérifiée. Lorsque le programme rencontre l'instruction `break` à l'intérieur d'une boucle, il quitte immédiatement cette boucle et passe à l'instruction suivante après la boucle.

- **Exemple:**

  Voici un exemple simple illustrant l'utilisation de `break` dans une boucle `for` :

  ```R
  # Boucle for pour afficher les nombres de 1 à 10
  for (i in 1:10) {
    print(i)  # Afficher la valeur de i
    
    # Si i est égal à 5, interrompre la boucle
    if (i == 5) {
      break
    }
  }
  ```

### 3.2 **``next``:**

- **Description:**
  
  >le mot-clé `next` est utilisé à l'intérieur d'une boucle pour passer à l'itération suivante sans exécuter le reste du code dans la boucle actuelle. Cela permet de sauter une itération de la boucle si une certaine condition est vérifiée.


- **Exemple:**

  Voici un exemple d'utilisation de `next` dans une boucle `for` pour afficher les nombres de 1 à 10 sauf le nombre 5 :

  ```R
  # Boucle for pour afficher les nombres de 1 à 10 sauf le nombre 5
  for (i in 1:10) {
    if (i == 5) {
      next  # Passe à l'itération suivante sans exécuter le reste du code dans la boucle actuelle
    }
    print(i)  # Afficher la valeur de i
  }
  ```

