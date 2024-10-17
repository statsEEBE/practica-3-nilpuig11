#pregunta 1
x<-c(0,1)
f<-c(0.68,0.32)
plot(x,f,type="h",ylim=c(0,1),col="red")
n<-43
y<-function(i){sum(sample(x,n,f,replace=TRUE))} #exemple de l'experiment
y(i) #definim la funció perquè cada cop que cridem la funció ens doni un valor diferent
encuestas<-sapply(1:400000, y) #400000 encuestas diferents (cada valor és un experiment aleatori)
encuestas
fr<-table(encuestas)/400000 #freq relativa de 400000 encuestas i trobem la de 13
fr["13"]
barplot(fr)
#quan y és una binomial (n,p)
dbinom(13,43,0.32) #ho resol directamen (casos positius,casos totals,p)
y<-0:43
plot(y,dbinom(y,43,0.32),type="h",col="red")
dbinom(17,44,0.32)
plot(y,dbinom(y,44,0.32),type="h",col="red")
pbinom(16,44,0.32) #pbinom per F(X) com el 17 no està inclòs ho fem fins a 16
qbinom(0.5,44,0.32) #per calcular la mediana
qbinom(0.25,44,0.32)#per calcular primer quartil  
24*0.68 #esperança de x
24*0.68*0.32 #variança
qbinom(0.25,24,0.68)#càlcul primer quartil canviant la resposta positiva
plot(y,pbinom(y,24,0.68),type="s")
46*0.32 #últim apartat