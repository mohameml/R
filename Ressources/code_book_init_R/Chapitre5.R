#' ---
#' title: "Initiation à la statistique avec R, code et compléments chapitre 5"
#' author: "Frédéric Bertrand et Myriam Maumy-Bertrand"
#' date: "11 décembre 2018"
#' ---
#Chapitre 5
#page 223
library(BioStatR)
attach(Mesures5)
table(graines,espece)

#page 224
table(graines,espece,useNA="ifany")
(table.cont<-table(factor(graines),espece,dnn=c("nbr.graines","espece"),
  exclude=c("bignone","laurier rose")))

#page 225
(table.cont<-table(factor(graines),espece,dnn=c("nbr.graines","espece"),
  exclude=c("bignone","laurier rose"),useNA="no"))
#En plus : deuxième manière de faire
(table.cont<-table(factor(graines),espece,dnn=c("nbr.graines","espece"),
  exclude=c("bignone","laurier rose",NA)))

library(ggplot2)
#Couleur
ggplot(Mesures,aes(x=masse,y=taille,color=espece))+geom_point(size=3,shape=19)+
  ggtitle("Taille en fonction de la masse par espèce")
#Noir et blanc
ggplot(Mesures,aes(x=masse,y=taille,shape=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()

#page 226
#En plus : code figure 51A
pdf("fig51A.pdf")
print(ggplot(Mesures,aes(x=masse,y=taille,shape=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw())
dev.off()

addmargins(table.cont)

#page 227
print(prop.table(table.cont),digits=3)
margin.table(table.cont,1)

#page 228
margin.table(table.cont,2)
margin.table(prop.table(table.cont),1)
margin.table(prop.table(table.cont),2)

#page 229
prop.table(table.cont,1)

#page 230
prop.table(table.cont,2)

#page 233
cov(masse,taille)
cor(masse,taille)

#page 235
require(BioStatR)
eta2(Mesures5$taille,Mesures5$espece)

#page 236
#Couleur
plot(taille~masse,col=rainbow(4)[espece],pch=19,data=Mesures)
legend("bottomright",levels(Mesures$espece),pch=19,col=rainbow(4))
title("Taille en fonction de la masse par espèce")
#Noir et blanc
plot(taille~masse,pch=1:4,data=Mesures)       
legend("bottomright",levels(Mesures$espece),pch=1:4)
title("Taille en fonction de la masse par espèce")

#En plus : code figure 51B
pdf("fig51B.pdf")
plot(taille~masse,pch=1:4,data=Mesures)       
legend("bottomright",levels(Mesures$espece),pch=1:4)
title("Taille en fonction de la masse par espèce")
dev.off()

#Les mêmes figures avec ggplot2 (code page 225 et 226)
library(ggplot2)
#Couleur
ggplot(Mesures,aes(x=masse,y=taille,color=espece))+geom_point(size=3,shape=19)+
  ggtitle("Taille en fonction de la masse par espèce")
#Noir et blanc
ggplot(Mesures,aes(x=masse,y=taille,shape=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()

#page 237
library(lattice)
show.settings()
show.settings(x=standard.theme(color=FALSE))
lattice.options(default.theme=standard.theme(color=FALSE))

#page 238
lattice.options(default.theme=NULL)
trellis.device(theme=standard.theme(color=FALSE))
dev.off()
trellis.device(color=FALSE)
dev.off()

#Pour obtenir les graphiques en noir et blanc
trellis.device(theme=standard.theme(color=FALSE),new=FALSE)

#page 239
xyplot(taille~masse,groups=espece,auto.key = list(corner = c(1, 0)),
  main="Taille en fonction de la masse par espèce",data=Mesures)
xyplot(taille~masse|espece,groups=espece,data=Mesures)
xyplot(taille~masse|espece,groups=espece,scales="free",data=Mesures)

#page 241
xyplot(taille~masse|espece,data=Mesures,groups=espece,
       prepanel=function(x,y) prepanel.loess(x,y,span=1),
       panel=function(x,y,subscripts,groups) {
         panel.grid(h=-1,v=2)
         panel.xyplot(x,y,pch=groups[subscripts])
         panel.loess(x,y,span=1,lwd=2,pch=groups[subscripts])})

#début page 241 et fin page 242 
xyplot(taille~masse|espece,data=Mesures,groups=espece,scales="free",
  prepanel=function(x,y) prepanel.loess(x,y,span=1),
  panel=function(x,y,subscripts,groups) {
    panel.grid(h=-1,v=2)
    panel.xyplot(x,y,pch=groups[subscripts])
    panel.loess(x,y,span=1,lwd=2,pch=groups[subscripts])
    }
  )

#page 242
xyplot(masse+masse_sec~taille|espece,data=Mesures5,scales="free",
  layout=c(2,2),auto.key=list(x=-.01,y=.37,corner=c(0,0)))

#début page 242 et fin page 243 
xyplot(masse+masse_sec~taille|espece,data=Mesures5,scales="free",
  layout=c(2,2),auto.key=list(x=-.01,y=.37,points=FALSE,
  col=c("black","grey50"),font=2,corner=c(0,0)),
  panel=function(x,y,subscripts,groups) {
    panel.grid(h=-1,v= 2)
    panel.xyplot(x,y,pch=19,col=c("black","grey50")[groups[subscripts]])
    }
  )

#page 243
#contruction des graphiques précédents en couleur
trellis.device(theme=NULL,color = TRUE,new=FALSE)

#ceux de la page 239
xyplot(taille~masse,groups=espece,auto.key = list(corner = c(1, 0)),
       main="Taille en fonction de la masse par espèce",data=Mesures)
xyplot(taille~masse|espece,groups=espece,data=Mesures,pch=19)
xyplot(taille~masse|espece,groups=espece,scales="free",data=Mesures,pch=19)

#ceux de la page 241
xyplot(taille~masse|espece,data=Mesures,groups=espece,prepanel=function(x,y) prepanel.loess(x,y,span=1),
       panel=function(x,y,subscripts,groups) {
         panel.grid(h=-1,v=2)
         panel.xyplot(x,y,pch=19,col=groups[subscripts])
         panel.loess(x,y,span=1,lwd=2,col=groups[subscripts])})

xyplot(taille~masse|espece,data=Mesures,groups=espece,scales="free",
       prepanel=function(x,y) prepanel.loess(x,y,span=1),
       panel=function(x,y,subscripts,groups) {
         panel.grid(h=-1,v=2)
         panel.xyplot(x,y,pch=19,col=groups[subscripts])
         panel.loess(x,y,span=1,lwd=2,col=groups[subscripts])})

#ceux de la page 242
xyplot(masse+masse_sec~taille|espece,data=Mesures5,scales="free",layout=c(2,2),
  auto.key=list(x=-.01,y=.37,corner=c(0,0)))

xyplot(masse+masse_sec~taille|espece,data=Mesures5,scales="free",layout=c(2,2),
  auto.key=list(x=-.01,y=.37,points=FALSE,col=c("black","red"),corner=c(0,0)),
  panel=function(x,y,subscripts,groups) {
    panel.grid(h=-1,v= 2)
    panel.xyplot(x,y,pch=19,col=groups[subscripts])
    }
  )

#page 245
#Contruction des graphiques précédents avec ggplot2
#Noir et blanc
library(ggplot2)
#ceux de la page 239
ggplot(Mesures,aes(x=masse,y=taille,shape=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  theme(legend.position="bottom")
ggplot(Mesures,aes(x=masse,y=taille,shape=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  facet_wrap(~espece)
ggplot(Mesures,aes(x=masse,y=taille,shape=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  facet_wrap(~espece,scales = "free")

#ceux de la page 241
ggplot(Mesures,aes(x=masse,y=taille,shape=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  facet_wrap(~espece)+stat_smooth(color="grey50")
ggplot(Mesures,aes(x=masse,y=taille,shape=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  facet_wrap(~espece,scales = "free")+stat_smooth(color="grey50")

#ceux de la page 242
ggplot(Mesures5,aes(x=taille,y=masse,shape=espece))+geom_point(aes(x=taille,y=masse_sec),
  color="gray50")+geom_point()+ggtitle("Taille en fonction de la masse par espèce")+
  theme_bw()+facet_wrap(~espece,scales = "free")+stat_smooth(color="black")+
  stat_smooth(aes(x=taille,y=masse_sec),color="grey50")

#Pour faire apparaître les deux variables dans la légende en plus des groupes liés #aux espèces
if(!("reshape" %in% rownames(installed.packages()))){install.packages("reshape")}
library(reshape)
Mesures5.long <- melt(Mesures5, id = c("taille","espece"), 
  measure = c("masse", "masse_sec"))
ggplot(Mesures5.long,aes(x=taille,y=value,shape=espece,color=variable))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  facet_wrap(~espece,scales = "free")+stat_smooth(aes(color=variable))+
  scale_color_grey(start=.1,end=.5)

pdf("chap5fig511ggplot.pdf")
print(ggplot(Mesures5.long,aes(x=taille,y=value,shape=espece,color=variable))+
  geom_point()+ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  facet_wrap(~espece,scales = "free")+stat_smooth(aes(color=variable))+
  scale_color_grey(start=.1,end=.5)
)
dev.off()

#page 246
#Couleur
#ceux de la page 239
ggplot(Mesures,aes(x=masse,y=taille,color=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()
ggplot(Mesures,aes(x=masse,y=taille,color=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  facet_wrap(~espece)
ggplot(Mesures,aes(x=masse,y=taille,color=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  facet_wrap(~espece,scales = "free")

#ceux de la page 241
ggplot(Mesures,aes(x=masse,y=taille,color=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  facet_wrap(~espece)+stat_smooth()
ggplot(Mesures,aes(x=masse,y=taille,color=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  facet_wrap(~espece,scales = "free")+stat_smooth()

#ceux de la page 242
ggplot(Mesures5,aes(x=taille,y=masse,color=espece))+
  geom_point(aes(x=taille,y=masse_sec,color=espece),shape=22)+geom_point(shape=19)+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  facet_wrap(~espece,scales = "free")+stat_smooth()+
  stat_smooth(aes(x=taille,y=masse_sec))

#page 247
#Pour faire apparaître les deux variables dans la légende en plus des groupes liés
#aux espèces
if(!("reshape" %in% rownames(installed.packages()))){install.packages("reshape")}
library(reshape)
ggplot(Mesures5.long,aes(x=taille,y=value,color=variable,shape=espece))+geom_point()+
  ggtitle("Taille en fonction de la masse par espèce")+theme_bw()+
  facet_wrap(~espece,scales = "free")+stat_smooth(aes(color=variable))



#Exercice 5.1
#page 248
#2)
outer(1:6,1:6,"+")
outer(1:6,1:6,pmin)
(effs<-table(outer(1:6,1:6,"+"),outer(1:6,1:6,pmin)))

#page 250
#1)
require(BioStatR)
plotcdf2(Mesures5$taille,Mesures5$masse,f=0,"taille","poids",theme="bw")

#En plus : autres options pour plotcdf2 
plotcdf2(Mesures5$taille,Mesures5$masse,f=0,"taille","poids",col="gray50")
plotcdf2(Mesures5$taille,Mesures5$masse,f=0,"taille","poids")
plotcdf2(Mesures5$taille,Mesures5$masse,f=0,"taille","poids",theme="1")
plotcdf2(Mesures5$taille,Mesures5$masse,f=0,"taille","poids",theme="2")
plotcdf2(Mesures5$taille,Mesures5$masse,f=0,"taille","poids",theme="3")

#page 251
#2)
margin.table(effs)
plotcdf2(2:12,1:6,f=effs/36,"somme des dés","valeur du plus petit",the="bw")             
#En plus : autres options pour plotcdf2 
plotcdf2(2:12,1:6,f=effs/36,"somme des dés","valeur du plus petit",col="gray50")
plotcdf2(2:12,1:6,f=effs/36,"somme des dés","valeur du plus petit")             
plotcdf2(2:12,1:6,f=effs/36,"somme des dés","valeur du plus petit",theme="1")   
plotcdf2(2:12,1:6,f=effs/36,"somme des dés","valeur du plus petit",theme="2")   
plotcdf2(2:12,1:6,f=effs/36,"somme des dés","valeur du plus petit",theme="3")   
#3)
margin.table(effs,1)

#page 252
margin.table(effs,2)
print(prop.table(margin.table(effs,1)),3)
print(prop.table(margin.table(effs,2)),3)
#4)
print(prop.table(effs,1),digit=3)

#page 253
print(prop.table(effs,2),digit=3)

#Exercice 5.2
#1)
cov(Mesures5[,1:4])
cor(Mesures5[,1:4])

#page 254
#2)
cov(Mesures5[,1:4],use="pairwise.complete.obs")
cor(Mesures5[,1:4],use="pairwise.complete.obs")
