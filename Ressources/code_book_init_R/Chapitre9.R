#' ---
#' title: "Initiation à la statistique avec R, code et compléments chapitre 9"
#' author: "Frédéric Bertrand et Myriam Maumy-Bertrand"
#' date: "11 décembre 2018"
#' ---
#Chapitre 9
require(BioStatR)

#page 377
#Exercice 9.1
#1)
lauriers<-subset(Mesures,subset=(Mesures$espece=="laurier rose"))
plot(taille~masse,data=lauriers,pch=19)

#page 378
#3)
droite_lauriers<-lm(taille~masse,data=lauriers)
coef(droite_lauriers)
#4)
fitted(droite_lauriers)

#page 379
#5)
abline(coef(droite_lauriers),col="red",lwd=2)
#6)
predict(droite_lauriers,(masse=4.8))
#fonctionne comme predict(droite_lauriers,list(masse=4.8))
#7)
residuals(droite_lauriers)[lauriers$masse==4.8]

#page 380
#8)
mean(lauriers$taille)
6.413523+1.700114*mean(lauriers$masse)
coef(droite_lauriers)[1]+coef(droite_lauriers)[2]*mean(lauriers$masse)
#9)
summary(droite_lauriers)

#page 381
#10)
anova(droite_lauriers)
#11)
summary(droite_lauriers)

#page 382
#12)
residus<-residuals(droite_lauriers)
shapiro.test(residus)

#page 383
plot(lauriers$masse,residus)
pdf("residusmasse.pdf")
plot(lauriers$masse,residus)
dev.off()

#Les résidus ont l'air corrects => homoscédasticité des erreurs ok et 
#absence d'effet systématique
#Approche par permutation valide

#13)
if(!("lmPerm" %in% rownames(installed.packages()))){install.packages("lmPerm")}
library(lmPerm)
lmp(taille~masse,lauriers)

#page 384
perm_laurier<-lmp(taille~masse,lauriers,center=FALSE)
summary(perm_laurier)

#page 385
#14)
confint(droite_lauriers)
predict(droite_lauriers,list(masse=c(4.8)),interval="confidence")
predict(droite_lauriers,list(masse=c(4.8)),interval="prediction")

#page 386
#Exercice 9.2
#1)
bignones<-subset(Mesures5,subset=(Mesures5$espece=="bignone"))[,c(1,4)]
plot(masse~masse_sec,data=bignones,pch=19)
pdf("figure94.pdf")
plot(masse~masse_sec,data=bignones,pch=19)
dev.off()
#3)a)
droite_bignones<-lm(masse~masse_sec,data=bignones)
coef(droite_bignones)

#page 387
residus<-residuals(droite_bignones)
plot(bignones$masse_sec,residus)
pdf("figure95.pdf")
plot(bignones$masse_sec,residus)
dev.off()
#Les résidus n'ont l'air corrects car ils présentent une forme en trompette, 
#ce qui remet en question de l'homoscédasticité des erreurs. Nous procéderons
#dans la suite à un test pour nous assurer que ce défaut est significatif au 
#seuil de \alpha=5%. Par contre les résidus ont l'air répartis aléatoirement 
#au-dessus ou en-dessous de l'axe des abscisses. Vous notez également l'absence 
#d'un effet systématique qui se traduirait par exemple par une forme de banane. 
#L'hypothèse d'indépendance n'est pas remise en question.
#Malgré l'inhomogénéité des variances l'estimation de la pente et de l'ordonnée 
#à l'origine reste sans biais. Il sera, par contre, nécessaire tenir compte de 
#l'hétéroscédasticté des erreurs pour la mise en oeuvre des procédures de test et 
#la construction des intervalles de confiance.

#page 388
#4)
fitted(droite_bignones)
#5)
plot(masse~masse_sec,data=bignones,pch=19)
abline(coef(droite_bignones),col="red",lwd=2)
pdf("figure96.pdf")
plot(masse~masse_sec,data=bignones,pch=19)
abline(coef(droite_bignones),col="red",lwd=2)
dev.off()
#6)
predict(droite_bignones,(masse_sec=2.5))
plot(masse~masse_sec,data=bignones,pch=19)
abline(coef(droite_bignones),col="red",lwd=2)
points(2.5,predict(droite_bignones,(masse_sec=2.5)),pch=17,col="blue")
segments(2.5, bignones$masse[bignones$masse_sec==2.5],2.5,
  predict(droite_bignones,(masse_sec=2.5)),lty=2,lwd=2)
pdf("figure96residusmasselinepoint.pdf")
plot(masse~masse_sec,data=bignones,pch=19)
abline(coef(droite_bignones),col="red",lwd=2)
points(2.5,predict(droite_bignones,(masse_sec=2.5)),pch=17,col="blue")
segments(2.5, bignones$masse[bignones$masse_sec==2.5],2.5,
  predict(droite_bignones,(masse_sec=2.5)),lty=2,lwd=2)
dev.off()

#page 389
#7)
residuals(droite_bignones)[bignones$masse_sec==2.5]
#8)
mean(bignones$masse)
-0.5391407+4.8851935*mean(bignones$masse_sec)
coef(droite_bignones)[1]+coef(droite_bignones)[2]*mean(bignones$masse_sec)

#page 390
#9)
summary(droite_bignones)
#10)
anova(droite_bignones)

#page 391
#12) et 13)
residus<-residuals(droite_bignones)
shapiro.test(residus)
length(residus)
#Les résidus sont au nombre de 70 supérieur ou égal à 30. Le test de normalité 
#est donc fiable. La $p$-valeur du test est strictement supérieure à \alpha=5%, 
#le test n'est pas significatif. Nous conservons, par défaut, l'hypothèse H0 
#de normalité des erreurs.

#page 392
#Le test de White est un cas particulier du test de Breusch-Pagan qui est 
#disponible dans le bibliothèque lmtest
if(!("lmtest" %in% rownames(installed.packages()))){install.packages("lmtest")}
library(lmtest)
bptest(droite_bignones, ~ masse_sec + I(masse_sec^2), data = bignones)
## White test (Table 5.1, p. 113)
#bptest(cig_lm2, ~ income * price + I(income^2) + I(price^2), data = CigarettesB)

#Le test de White permet de s'intéresser aux deux hypothèses : 
#"H0 : les erreurs sont homoscédastiques" 
#contre
#"H1 : les erreurs sont hétéroscédastiques". 
#L'hypothèse de normalité des erreurs n'a été remise en cause, le test de White 
#est donc fiable. La $p$-valeur du test est inférieure ou égale à \alpha=5%, 
#le test est significatif. Nous rejetons l'hypothèse H0 d'homoscédasticité 
#des erreurs et décidons que l'hypothèse alternative d'hétéroscédasticité 
#des erreurs est vraie.

#Comme nous l'avions perçu graphiquement, les erreurs ne sont pas homoscédastiques,
#il faut tenir compte de cette inhomogénéité des variances lors de l'estimation 
#des paramètres du modèle puis de la mise en oeuvre des tests de student ou 
#du test global de Fisher pour la régression.
if(!("sandwich" %in% rownames(installed.packages()))){install.packages("sandwich")}
library(sandwich)
vcovHC(droite_bignones)
#Estimation, tenant de l'inhomogénéité des variances, de la matrice de 
#variance-covariance des estimateurs \hat\beta_0 et \hat\beta_1.
coeftest(droite_bignones, df="inf", vcov=vcovHC)
#Tests de student des coefficient \beta_0 et \beta_1.

#page 393
waldtest(droite_bignones, vcov=vcovHC)
#Tests de Fihser global du modèle de régression linéaire simple.

#Pour construire les intervalles de confiance autour des paramètres, 
#vous poouvez utiliser la bibliothèque hcci.
if(!("hcci" %in% rownames(installed.packages()))){install.packages("hcci")}
library(hcci)
?hcci
#L'aide de la bibliothèque HCCI vous apprend qu'il existe plusieurs procédures 
#permettant de tenir compte de l'hétéroscédasticité. La fonction vcovHC utilise 
#la méthode HC3 par défaut  La fonction HC, la méthode HC4 avec le paramètre k=0.7
#par défaut. Les méthodes HC3, HC4 et HC5 sont recommendées. En comparant leurs 
#résultats, vous constatez qu'elles aboutissent toutes aux mêmes conclusions 
#au seuil de \alpha=5% : conservation, par défaut, de "H0 : \beta_0=0" pour 
#le test de l'ordonnée à l'origine et décision que "H1 : \beta_1<>0" est vraie.
HC(droite_bignones,method=3)
coeftest(droite_bignones, df="inf", vcov=HC(droite_bignones,method=3))

#page 394
vcovHC(droite_bignones,type="HC4")
coeftest(droite_bignones, df="inf", vcov=vcovHC(droite_bignones,type="HC4"))
vcovHC(droite_bignones,type="HC4m")
coeftest(droite_bignones, df="inf", vcov=vcovHC(droite_bignones,type="HC4m"))

#page 395
HC(droite_bignones,method=4,k=0.7)
coeftest(droite_bignones, df="inf", vcov=HC(droite_bignones,method=4,k=0.7))
vcovHC(droite_bignones,type="HC5")
coeftest(droite_bignones, df="inf", vcov=vcovHC(droite_bignones,type="HC5"))
HC(droite_bignones,method=5)

#page 396
coeftest(droite_bignones, df="inf", vcov=HC(droite_bignones,method=5))

#Passons à la construction d'intervalles de confiance sur les paramètres 
#\beta_0 et \beta_1 de la régression linéaire simple. Nous devons passer par 
#cette étape de réécriture du modèle pour pouvoir utiliser les fonctions Pboot 
#et Tbootde la bibliothèque hcci.
y = bignones$masse 
x = bignones$masse_sec
model = lm(y ~ x)

#Il est possible de "fixer" le point de départ du générateur aléatoir
#pour avoir des résultats reproductibles à l'aide de la fonction set.seed
set.seed(123456)

#Commencez par utiliser une technique de bootstrap simple.
#Bootstrap percentile simple.
Pboot(model, significance = 0.05, double = FALSE, J=1000, K = 100, 
  distribution = "rademacher")

#page 397
#Bootstrap t simple.
Tboot(model, significance = 0.05, double = FALSE, J=1000, K = 100, 
  distribution = "rademacher")

#Utilisez maintenant une technique de bootstrap double.
#Bootstrap percentile double.
Pboot(model, significance = 0.05, double = TRUE, J=1000, K = 100, 
  distribution = "rademacher")
#Bootstrap t double.
Tboot(model, significance = 0.05, double = TRUE, J=1000, K = 100, 
  distribution = "rademacher")

#Le modèle étant hétéroscédastique, la construction d'intervalles de prédiction 
#n'est pas fiable
