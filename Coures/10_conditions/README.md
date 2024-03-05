# cour  : **les Structures Conditionnelles en R**

Les structures conditionnelles en R permettent d'exécuter différentes portions de code en fonction de conditions spécifiées. Les structures les plus couramment utilisées sont `if`, `else if`, et `else`. Elles permettent de créer des flux de contrôle dans votre programme en fonction de certaines conditions.

## 1. **La structure `if`:**

>La structure `if` est utilisée pour exécuter une portion de code si une condition est vraie. 


- **La syntaxe générale est la suivante :**

```R
if (condition) {
  # Code à exécuter si la condition est vraie
}
```

- **Exemple :**

```R
x <- 10

if (x > 5) {
  print("La valeur de x est supérieure à 5.")
}
```

Dans cet exemple, le message sera imprimé car la condition `(x > 5)` est vraie.

## 2. La structure `if-else`

>La structure `if-else` permet d'exécuter une portion de code si une condition est vraie et une autre portion si elle est fausse. 

- **La syntaxe générale est la suivante :**

```R
if (condition) {
  # Code à exécuter si la condition est vraie
} else {
  # Code à exécuter si la condition est fausse
}
```

- **Exemple :**

```R
y <- 3

if (y > 5) {
  print("y est supérieur à 5.")
} else {
  print("y n'est pas supérieur à 5.")
}
```

Dans cet exemple, le message "y n'est pas supérieur à 5." sera imprimé car la condition `(y > 5)` est fausse.

## 3. **La structure `else if`:**

>La structure `else if` permet de spécifier plusieurs conditions à vérifier successivement. La première condition vraie déclenche l'exécution du code correspondant. 


- **La syntaxe générale est la suivante :**

```R
if (condition1) {
  # Code à exécuter si condition1 est vraie
} else if (condition2) {
  # Code à exécuter si condition2 est vraie
} else {
  # Code à exécuter si aucune des conditions précédentes n'est vraie
}
```

- **Exemple :**

```R
z <- 7

if (z < 5) {
  print("z est inférieur à 5.")
} else if (z >= 5 && z <= 10) {
  print("z est entre 5 et 10.")
} else {
  print("z est supérieur à 10.")
}
```

Dans cet exemple, le message "z est entre 5 et 10." sera imprimé car la deuxième condition `(z >= 5 && z <= 10)` est vraie.


## 4. **Opérateurs Logiques:**

En R, les opérateurs logiques sont utilisés pour effectuer des opérations logiques sur des expressions booléennes, c'est-à-dire des expressions qui peuvent être vraies (`TRUE`) ou fausses (`FALSE`). Les opérateurs logiques les plus couramment utilisés sont `&&` (ET), `||` (OU), et `!` (NON).

1. **Opérateur ET (`&&`) :**

L'opérateur `&&` renvoie `TRUE` si toutes les conditions spécifiées sont vraies, sinon il renvoie `FALSE`. L'ordre d'évaluation est important ici. Il évalue la deuxième condition uniquement si la première est vraie.

Exemple :

```R
x <- 5
y <- 10

resultat <- (x > 0) && (y > 5)
# Dans cet exemple, le résultat est TRUE car les deux conditions sont vraies.
```

2. **Opérateur OU (`||`) :**

L'opérateur `||` renvoie `TRUE` si au moins l'une des conditions spécifiées est vraie. Comme avec l'opérateur `&&`, l'ordre d'évaluation est important, et il évalue la deuxième condition uniquement si la première est fausse.

Exemple :

```R
a <- 3
b <- 7

resultat <- (a > 5) || (b > 5)
# Dans cet exemple, le résultat est TRUE car au moins l'une des conditions est vraie.
```

3. **Opérateur NON (`!`) :**

L'opérateur `!` inverse la valeur logique de l'expression. Si l'expression est vraie, `!` la rend fausse, et vice versa.

Exemple :

```R
z <- TRUE

resultat <- !z
# Dans cet exemple, le résultat est FALSE car !z inverse la valeur logique de z.
```

4. **Ordre d'Évaluation : ``court-circuit``**

L'ordre d'évaluation des opérateurs logiques en R suit généralement la logique de court-circuit. Cela signifie que l'évaluation s'arrête dès qu'il est possible de déterminer la valeur de la condition. Pour `&&`, si la première condition est fausse, l'expression entière est évaluée comme fausse sans vérifier la deuxième condition. Pour `||`, si la première condition est vraie, l'expression entière est évaluée comme vraie sans vérifier la deuxième condition.

Exemple :

```R
a <- 3
b <- 7

resultat <- (a > 5) && (b > 5)
# Dans cet exemple, la première condition est fausse, donc l'expression entière est évaluée comme fausse sans évaluer la deuxième condition.
```

Il est important de comprendre cet ordre d'évaluation, car cela peut affecter les performances du code, en particulier lorsque des opérations coûteuses sont impliquées dans les conditions.


5. **l'ordre de priorité:**

Lorsque vous utilisez plusieurs opérateurs logiques dans une expression en R, l'ordre de priorité est crucial pour déterminer le résultat correct. 

- Voici l'ordre de priorité décroissante pour les opérateurs logiques en R :

  - **NOT (`!`)** : C'est l'opérateur logique unaire, il a la plus haute priorité. Il s'applique directement à l'élément suivant.

  - **AND (`&&`)** : L'opérateur AND a une priorité plus élevée que l'opérateur OR. 

  - **OR (`||`)** : L'opérateur OR a une priorité inférieure à l'opérateur AND.

L'utilisation de parenthèses peut être utile pour clarifier l'ordre d'évaluation, surtout lorsque vous utilisez plusieurs opérateurs dans une expression.

Voici un exemple pour illustrer l'ordre de priorité :

```R
a <- TRUE
b <- FALSE
c <- TRUE

resultat <- !a && b || c
# L'ordre d'évaluation est NOT, THEN AND, enfin OR.

# Équivalent avec parenthèses explicites :
resultat <- ((!a) && b) || c
```

Dans cet exemple, l'opérateur NOT est évalué en premier, suivi de AND, puis OR.

En général, bien que l'ordre de priorité des opérateurs logiques en R soit important, l'utilisation explicite de parenthèses peut rendre le code plus lisible et aider à éviter toute confusion quant à l'ordre d'évaluation.


## 5. **L'Opérateur Ternaire:**

>L'opérateur ternaire en R est représenté par la fonction `ifelse()`. Bien que cela ne soit pas un opérateur au sens strict, `ifelse()` est souvent utilisé comme équivalent à un opérateur ternaire dans d'autres langages de programmation. Cela permet d'effectuer une opération conditionnelle en une seule ligne.

- **La syntaxe de `ifelse()` est la suivante :**

```R
ifelse(condition, valeur_si_vraie, valeur_si_fausse)
```

- Si la `condition` est vraie, la fonction renvoie la `valeur_si_vraie`.
- Si la `condition` est fausse, la fonction renvoie la `valeur_si_fausse`.

- **Voici un exemple concret :**

```R
x <- 8

message <- ifelse(x > 5, "x est supérieur à 5", "x est inférieur ou égal à 5")

print(message)
```

Dans cet exemple, la `condition` est `x > 5`. Si cette condition est vraie, la fonction renvoie la chaîne de caractères "x est supérieur à 5", sinon elle renvoie la chaîne de caractères "x est inférieur ou égal à 5".


- L'utilisation de `ifelse()` est particulièrement pratique lorsque vous devez effectuer une opération conditionnelle sur des vecteurs. Par exemple :

```R
vecteur <- c(3, 8, 12, 5, 9)

resultat <- ifelse(vecteur > 5, "Supérieur à 5", "Inférieur ou égal à 5")

print(resultat)
```

Dans cet exemple, chaque élément du vecteur est évalué individuellement en fonction de la condition `vecteur > 5`. Le résultat est un nouveau vecteur avec les valeurs correspondantes en fonction de la condition.

Notez que `ifelse()` renvoie un vecteur, même si vous n'avez qu'une seule valeur conditionnelle. 



## 6. **Switch Case:**

>En R, la fonction `switch()` est utilisée pour implémenter une structure de contrôle similaire à une instruction switch-case que l'on trouve dans d'autres langages de programmation. La fonction `switch()` prend une expression et évalue différentes expressions en fonction de la valeur de l'expression fournie.

- **Voici la syntaxe générale de la fonction `switch()` :**

```R
switch(EXPR, CASE1 = EXPRESSION1, CASE2 = EXPRESSION2, ..., default = DEFAULT_EXPRESSION)
```

- `EXPR` : L'expression dont la valeur est évaluée.
- `CASE1`, `CASE2`, ... : Différents cas possibles à évaluer en fonction de la valeur de `EXPR`.
- `default` : Expression à évaluer si aucune des expressions des cas n'est applicable.

- **Voici un exemple concret :**

```R
jour_de_la_semaine <- "lundi"

message <- switch(
  jour_de_la_semaine,
  "lundi" = "C'est le début de la semaine.",
  "mercredi" = "Milieu de la semaine.",
  "vendredi" = "Bientôt le week-end.",
  default = "Jour ordinaire."
)

print(message)
```

Dans cet exemple, le contenu de la variable `message` dépend de la valeur de `jour_de_la_semaine`. Si `jour_de_la_semaine` est "lundi", le message est "C'est le début de la semaine.".

#### RQ : 

- Notez que `switch()` utilise l'évaluation par correspondance exacte. Il évalue chaque cas en comparant l'expression fournie avec les valeurs des cas, et le premier cas correspondant est évalué.

- La spécification de `default` est facultative, mais elle est utile pour fournir une valeur par défaut si aucune des expressions des cas ne correspond.




