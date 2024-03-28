# exemples sur les fonctions en R :

ma_fonction <- function(arg1, arg2, ...) {
  # Convertir les arguments supplémentaires en une liste
  args <- list(...)
  
  # Accéder aux valeurs individuelles des arguments supplémentaires
  for (i in seq_along(args)) {
    print(args[[i]])
  }
}

# Appel de la fonction avec des arguments supplémentaires
ma_fonction("valeur1", "valeur2", "valeur3", "valeur4")
