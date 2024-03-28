# dplyr :

library(dplyr)


install.packages("nycflights13")

library(nycflights13)

# read data :
df <- nycflights13::flights

# explore data : 

head(df)
str(df)
nrow(df)
ncol(df)
colnames(df)
# manupliation data :
df %>% 
  filter(year == 2013)

filter(df , year == 2014)
  
colnames(df)
filter(df , year == 2013 , day==3 , month==11)

df %>% 
  filter(month == 3 , day == 10) %>% 
  slice(1:10)



arrange(df , year , month , day)

# la fonction distinct : 

head(df)

distinct(df , select(df , carrier))

# Exemple de données
students <- data.frame(
  Name = c("Alice", "Bob", "Alice"),
  Age = c(20, 18, 20),
  Grade = c("A", "B", "C")
)

# Supprimer les doublons basés sur les colonnes Age et Grade
unique_students <- distinct(students, Age , Grade)
?distinct
# Afficher le dataframe avec les observations uniques
print(unique_students)


# la fonction mutate 
students
mutate(students , NB = Age*12)

transmute(students , NB = Age*12)


NB2 <- c(1,232 , 20)


# ============ les fonctions summarise() et group_by() :

# Exemple de données
students <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Emily"),
  Age = c(20, 18, 21, 19, 22),
  Grade = c("A", "B", "C", "A", "B")
)

students

# Regrouper les étudiants par grade
grouped_students <- group_by(students, Grade)

grouped_students
# Calculer la moyenne d'âge par grade
summary_data <- summarise(group_by(students , Grade), mean_age = mean(Age))

# Afficher le résumé statistique
print(summary_data)


# =================



















