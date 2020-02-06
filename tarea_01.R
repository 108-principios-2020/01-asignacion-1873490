library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

mean(conjunto$Altura)

H.media <- subset (conjunto, conjunto$Altura <= mean(conjunto$Altura))
H.16 <- subset(conjunto, conjunto$Altura < 16.5 )

vecinos.3 <- subset(conjunto, conjunto$Vecinos <= 3)
vecinos.4 <- subset(conjunto, conjunto$Vecinos > 4)

DDH.media <- subset(conjunto, conjunto$Diametro < mean(conjunto$Diametro))
DDH.16 <- subset(conjunto, conjunto$Diametro > 16)


# Especie -----------------------------------------------------------------

cedro_rojo <- subset(conjunto, conjunto$Especie == "C")
Tsuga_heterófila <- subset(conjunto, conjunto$Especie == "H")
Douglasia_verde <- subset(conjunto, conjunto$Especie == "F")

HyF <- rbind(Tsuga_heterófila, Douglasia_verde)

# Determinar cuantas observaciones son menor o iguales a 16.9 de diametro

sum(conjunto$Diametro <= 16.9)

# determina cuantas observaciones son mayores a 18.5 metros de altura

sum(conjunto$Altura > 18.5)


# Histograma  -------------------------------------------------------------

hist(conjunto$Altura, col = "yellow" , xlab = "H.media", ylab = "H.16", main = "histograma de altura")
hist(conjunto$Vecinos, col = "pink" , xlab = "vecinos.3", ylab = "vecinos.4", main = "histograma de vecinos")
hist(conjunto$Diametro, col = "blue" , xlab = "DBH.media", ylab = "DBH.16", main = "histograma de Diametro")

# graficas ----------------------------------------------------------------

par(mfrow=c(2,2)) 
hist(conjunto$Altura, main= "Altura", col= "blue", xlab="Altura", ylab="frecuencia")
hist(conjunto$Diametro, main= "Diametro", col= "yellow", xlab="Diametro", ylab="frecuencia")
hist(conjunto$Vecinos, main= "Vecinos", col= "purple", xlab="Vecinos", ylab="frecuencia")
hist(conjunto$Arbol, main= "Arbol", col= "green", xlab="Arbol", ylab="frecuencia")
par(mfrow=c(1,1))


mean(conjunto$Altura)
mean(conjunto$Vecinos)
mean(conjunto$Diametro)
sd(conjunto$Altura)
sd(conjunto$Vecinos)
sd(conjunto$Diametro)
