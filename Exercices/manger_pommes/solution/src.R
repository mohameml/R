# correction :

# ========= Q1 : verifications des hypothése :

# data :

variete<-rep(1:6,c(5,5,5,5,5,5))

vitamine<-c(93.6,95.3,96,93.7,96.2,95.3,96.9,95.8,97.3,97.7,94.5,97,97.8,97,
            98.3,98.8,98.2,97.8,97.2,97.9,94.6,97.8,98,95,98.9,93.2,94.4,93.8,95.6,94.8)

variete <- factor(variete)

df <- data.frame(variete , vitamine)

View(df)

# modele :

modele <- aov(vitamine ~ variete , data = df)
summary(modele)


# ========= normalité des residus : 

### ==== qq-plot

qqnorm(resid(modele))
qqline(resid(modele))

### === histogramme :

hist(resid(modele))


