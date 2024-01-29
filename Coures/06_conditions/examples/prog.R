
a <- 7
b <- 12

if (a > 5 && !(b < 15)) {
  print("Les deux conditions sont vraies.")
}


x <- 8

message <- (x > 5) ? "x est supérieur à 5" : "x est inférieur ou égal à 5"

print(message)

jour <- "lundi"

resultat <- switch(
  jour,
  "lundi" = "C'est le début de la semaine.",
  "vendredi" = "C'est presque le week-end.",
  "autre" = "C'est un jour ordinaire."
)

print(resultat)


x <- 8

message <- ifelse(x > 5, "x est supérieur à 5", "x est inférieur ou égal à 5")

print(message)


vecteur <- c(3, 8, 12, 5, 9)

resultat <- ifelse(vecteur > 5, "Supérieur à 5", "Inférieur ou égal à 5")

print(resultat)


# ===================

x <- 2
is.vector(x)
y <- ifelse(x > 2 , 1 , 0)

y
typeof(y)
is.vector(y)
is.numeric(y)
