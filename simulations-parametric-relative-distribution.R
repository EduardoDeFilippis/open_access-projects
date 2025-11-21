#Notazione: arg=argomento, b=beta, l=lambda, d=delta

#setting dei parametri specifici per 2 distribuzioni: Y e Y0--------------------SCEGLIERE QUI' I PARAMETRI DA TESTARE
beta=#######
lambda=##########
delta=#########

beta0=######
lambda0=#####
delta0=########

#creazione funzioni F, f, qf, me------------------------------------------------

#funzione di ripartizione
cF=function(############){
  (1+l*arg^(-d))^(-b)
}

#funzione di densità
df=function(arg, b, l, d) {
  b*l*d*(ar############
}

#quantile (F^-1)
qf=function(arg, b, l, d) {
  (l^(1/d))*((arg^(-1/################
}

#mediana
med=function(arg, b, l, d) {
  (l^(1/d))*((2^(################
}

#ordine quantili q e realizzazioni x(q) per le 2 distribuzioni------------------
q<-seq(0.01, 1, 0.01)
y=qf(###############

q0<-seq(0.01, 1, 0.01)
y0=qf(##############

#funzioni calcolate per le 2 distribuzioni--------------------------------------
F=cF(arg=y, b=beta, l=lambda, d=delta)
f=df(arg=y, b=beta, l=lambda, d=delta)
me=med(arg=y, b=beta, l=lambda, d=delta)

########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################

#costruzione variabile R e densità relativa-------------------------------------
########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################

rd=(df(arg=yr, b=beta, l=lambda, d=delta))/(df(##############

#decomposizione distribuzione relativa------------------------------------------

#differenza tra mediane
rho=###########################

#location effect
le=(df(arg=(yr+rho), b=beta0, l=lambda0, ##################

#shape effect
se=(df(arg=yr, b=beta, l=lambda, d=delta))/(df(arg=(yr+#####################

#grafici------------------------------------------------------------------------
#quelli che sembrano uniformi vanno adeguati nella scala del grafico con ylim=c(...,...)
plot(r,rd,cex=0.2) #distribuzione relativa
plot(r,le,cex=0.2) #location effect
plot(r,se,cex=0.2) #shape effect
plot(y,f,cex=0.2)
points(y0,f0, col="red",cex=0.2, type="l")

