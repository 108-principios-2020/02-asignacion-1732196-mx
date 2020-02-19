library(plyr)
accidentes <- c(0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc

acc$rf <- acc$freq/sum(acc$freq)*100
acc

barplot(acc$freq, names.arg = acc$x, xlab = "# Accidentes en el aserradero", col = "lightgreen")
mean(accidentes)
sum(accidentes)
boxplot(accidentes)

# Ejercicio #2 ------------------------------------------------------------


especies <- c("F", "H", "F", "C", "F", "A", "H", "F",
              "H", "C", "A", "C", "F", "H", "H", "H",
              "F", "H", "A", "C", "F", "H", "H", "F")
esp <- count(especies)
esp

esp$fr <- esp$freq/sum(esp$freq)*100
esp

barplot(esp$freq, names.arg = esp$x, main = "especies", col = "blue")


# ¿Que especie presenta mayor proporción (%)?   ---------------------------

# La especie que presenta mayor proporción es la Tsuga heterófila  --------

# Con un porcentaje de 37.5% ----------------------------------------------




# Ejercicio #3 ------------------------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

vecyesp <- table(conjunto$vecinos,conjunto$especies)
vecyesp  

# Ejercicio #4 ------------------------------------------------------------

Altura <- conjunto$Altura
range(Altura)

Intervalo <- seq(8.47, 21.46, by=5)
Intervalo

Altura.table <- cut(Altura, Intervalo)
table(Altura.table)

Altura.prop <- cbind(table(Altura.table))
Altura.per <- round(prop.table(Altura.prop)*100,2)


# Ejercicio 5 -------------------------------------------------------------

diametro <- conjunto$Diametro
range(diametro)

Intervalo <- seq(7.5, 25.5, by= 2.5)

par(mfrow=c(1,2))
hist(conjunto$Diametro, main = "Sin modificar", xlab = "Díametro", col = "pink")
hist(conjunto$Diametro, breaks = Intervalo, main = "Datos Intervalos", col = "yellow")
par(mfrow=c(1,1))
