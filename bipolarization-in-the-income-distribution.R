#IMPORT DATI 2004---------------------------------------------------------------
library(readxl)
rfam04 <- read_excel("rfam04.xlsx")
########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################
tabella_finale04[,YC04p:=((YC)*(PESO))/(coeff)]

#creazione vettori per ogni variabile pulita e pesata
Y04<-tabella_finale04[Y04p>0,Y04p]
YL04<-tabella_finale04[YL04p>0,YL04p]
YT04<-tabella_finale04[YT04p>0,YT04p]
YM04<-tabella_finale04[YM04p>0,YM04p]
YC04<-tabella_finale04[YC04p>0,YC04p]

#IMPORT DATI 2006---------------------------------------------------------------
library(readxl)
rfam06 <- read_excel("rfam06.xlsx")
comp06 <- read_excel("comp06.xlsx")
peso06 <- read_excel("peso06.xlsx")

library(data.table)
tab1 <- data.table(NQUEST = rfam06$NQUEST, Y = rfam06$Y, YL = rfam06$YL, YT = rfam06$YT, YM = rfam06$YM, YC = rfam06$YC)
tab2 <- data.table(NQUEST = comp06$NQUEST, NORD = comp06$NORD, ETA = comp06$ETA)
tab3 <- data.table(NQUEST = peso06$NQUEST, peso06$PESO)

library(dplyr)

#STRUTTURA TABELLA E MATCHING FAMIGLIA-COMPONENTI
########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################
tabella_finale06[,YM06p:=((YM)*(PESO))/(coeff)]
tabella_finale06[,YC06p:=((YC)*(PESO))/(coeff)]

#creazione vettori per ogni variabile pulita e pesata
Y06<-tabella_finale06[Y06p>0,Y06p]
YL06<-tabella_finale06[YL06p>0,YL06p]
YT06<-tabella_finale06[YT06p>0,YT06p]
YM06<-tabella_finale06[YM06p>0,YM06p]
YC06<-tabella_finale06[YC06p>0,YC06p]

#IMPORT DATI 2008---------------------------------------------------------------
library(readxl)
rfam08 <- read_excel("rfam08.xlsx")
comp08 <- read_excel("comp08.xlsx")
peso08 <- read_excel("peso08.xlsx")

library(data.table)
tab1 <- data.table(NQUEST = rfam08$NQUEST, Y = rfam08$Y, YL = rfam08$YL, YT = rfam08$YT, YM = rfam08$YM, YC = rfam08$YC)
tab2 <- data.table(NQUEST = comp08$NQUEST, NORD = comp08$NORD, ETA = comp08$ETA)
tab3 <- data.table(NQUEST = peso08$NQUEST, peso08$PESO)

library(dplyr)

#STRUTTURA TABELLA E MATCHING FAMIGLIA-COMPONENTI
# Calcola il numero di figli con età < 15 anni in 'tabella2'
tabella2_figli08 <- tab2 %>%
  filter(ETA < 14) %>%
  group_by(NQUEST) %>%
  summarise(figli = n())
########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################

#IMPORT DATI 2020---------------------------------------------------------------
library(readxl)
rfam20 <- read_excel("rfam20.xlsx")
comp20 <- read_excel("comp20.xlsx")
peso20 <- read_excel("peso20.xlsx")

library(data.table)
tab1 <- data.table(NQUEST = rfam20$NQUEST, Y = rfam20$Y, YL = rfam20$YL, YT = rfam20$YT, YM = rfam20$YM, YC = rfam20$YC)
tab2 <- data.table(NQUEST = comp20$NQUEST, NORD = comp20$NORD, ETA = comp20$ETA)
tab3 <- data.table(NQUEST = peso20$NQUEST, peso20$PESO)

library(dplyr)

#STRUTTURA TABELLA E MATCHING FAMIGLIA-COMPONENTI
# Calcola il numero di figli con età < 15 anni in 'tabella2'
tabella2_figli20 <- tab2 %>%
  filter(ETA < 14) %>%
  group_by(NQUEST) %>%
  ########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################

#creazione colonna coefficiente per scala oecd
tabella_finale20 <- tabella_finale20 %>%
  mutate(coeff = ifelse(NCOMP == 1, 1, 1 + 0.5 * (NCOMP - 1) - 0.2 * figli))

#unione con tabella peso
tabella_finale20 <- tabella_finale20 %>%
  left_join(peso20 %>% select(NQUEST, PESO), by = "NQUEST")

#creazione colonne con variabili definitive pesate
tabella_finale20[,Y20p:=((Y)*(PESO))/(coeff)]
tabella_finale20[,YL20p:=((YL)*(PESO))/(coeff)]
tabella_finale20[,YT20p:=((YT)*(PESO))/(coeff)]
########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################


#tutte le applicazioni seguenti fanno un overfitting
#così poi si vede cosa indagare meglio e come tarare smooth


#salto i location...in caso il comando è    reldist(y=Y02, yo=Y00, location="median", binn=100, show="effect", method=##############, smooth=0.2)
#ISTOGRAMMI Y-------------
options(scipen = 6)
hist(Y00, freq=FALSE, breaks=900, xlim=c(0,100000), ylim=c(0,0.00008), xlab="Y00", main="Histogram Y00")
########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################

#ISTOGRAMMI YC-------------
options(scipen = 6)
hist(YC00, freq=FALSE, breaks=1000, xlim=c(0,25000), ylim=c(0,0.00045), xlab="YC00", main="Histogram YC00")
########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################

#DISTRIBUZIONE RELATIVA Y OVERFITTED----
########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################

#DISTRIBUZIONE RELATIVA YC OVERFITTED----
########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################

#DISTRIBUZIONE RELATIVA YM ----
########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################

#DISTRIBUZIONE RELATIVA YT ----
########################################################################
############### CENSORED CODE ##########################################
########### CONTACT ME FOR THE FULL VERSION OF THE NOTEBOOK ############
########################################################################