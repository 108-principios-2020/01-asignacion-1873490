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

# Determinar cuantas observaciones son menor o iguales a 16.9 de diametro

sum(conjunto$Diametro <= 16.9)

# determina cuantas observaciones son mayores a 18.5 metros de altura

sum(conjunto$Altura > 18.5)


# Histograma  -------------------------------------------------------------

hist(conjunto$Altura, col = "yellow" , xlab = "H.media", ylab = "H.16", main = "histograma de altura")
hist(conjunto$Vecinos, col = "pink" , xlab = "vecinos.3", ylab = "vecinos.4", main = "histograma de vecinos")
hist(conjunto$Diametro, col = "blue" , xlab = "DBH.media", ylab = "DBH.16", main = "histograma de Diametro")

mean(conjunto$Altura)
mean(conjunto$Vecinos)
mean(conjunto$Diametro)
sd(conjunto$Altura)
sd(conjunto$Vecinos)
sd(conjunto$Diametro)
