## La fonction `round()`:

- **Description:**

    >La fonction `round()` en R est utilisée pour arrondir les nombres à un nombre spécifié de décimales. Elle prend en entrée un ou plusieurs nombres, ainsi qu'un argument `digits` qui spécifie le nombre de décimales à conserver. 


- **Voici la syntaxe de la fonction `round()` :***

    ```R
    round(x, digits = 0)
    ```

    - `x` : Le nombre ou le vecteur de nombres à arrondir.
    - `digits` : Le nombre d'endroits décimaux à conserver. Par défaut, `digits` est égal à 0, ce qui signifie que la fonction arrondira au nombre entier le plus proche.


- **Exemples d'utilisation de la fonction `round()` :**

    ```R
    # Exemple 1 : Arrondir un nombre à deux décimales
    result1 <- round(3.14159, digits = 2)
    print(result1)  # Résultat : 3.14

    # Exemple 2 : Arrondir un vecteur de nombres à zéro décimale
    vec <- c(2.345, 6.789, 9.123)
    result2 <- round(vec)
    print(result2)  # Résultat : 2 7 9
    ```

    Dans l'exemple 1, `round()` est utilisée pour arrondir le nombre π (pi) à deux décimales. Dans l'exemple 2, un vecteur de nombres est arrondi à zéro décimale par défaut. Vous pouvez personnaliser le nombre de décimales en ajustant l'argument `digits` en conséquence. La fonction `round()` est couramment utilisée pour obtenir des valeurs plus gérables dans les résultats numériques.