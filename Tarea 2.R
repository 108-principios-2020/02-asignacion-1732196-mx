
# Tarea.02-Asignación de datos --------------------------------------------


# Uriel Sarmiento Véliz - - -1732196-mx   ---------------------------------


# 19/02/2020 - 20/02/2020 -------------------------------------------------


library(plyr)
accidentes <- c(0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc

acc$rf <- acc$freq/sum(acc$freq)*100
acc

barplot(acc$freq, names.arg = acc$x, xlab = "# Accidentes en el aserradero", 
        col = "lightgreen")
mean(accidentes)
sum(accidentes)
boxplot(accidentes)

# ¿Cuál es el promedio de accidentes al mes? ------------------------------

# 1.9 es el promedio de accidentes al mes ---------------------------------

# 38 accidentes en proporción  --------------------------------------------





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

.vc <- table(conjunto$Vecinos,conjunto$Especie)
.vc1 <- addmargins(as.table(.vc))
.vc1
vecyesp <- table(conjunto$vecinos,conjunto$especies)
vecyesp  

# Ejercicio #4 ------------------------------------------------------------

.h <- conjunto$Altura
range(.h)
hist(.h, main = "Datos sin intervalo definido", col = "red")

Intervalo <- seq(7.5, 22.5, by=5)
Intervalo

.h.table <- cut(.h, Intervalo)
table(.h.table)

par(mfrow=c(1,2))
hist(conjunto$Altura, breaks = Intervalo, 
     main = "Datos con intervalo definido", col = "green")
hist(.h, main = "Datos sin intervalo definido", col = "red")
par(mfrow=c(1,1))
.h.prop <- cbind(table(.h.table))
.h.per <- round(prop.table(.h.prop)*100,2)


# Ejercicio 5 -------------------------------------------------------------

diametro <- conjunto$Diametro
range(diametro)

Intervalo <- seq(7.5, 27.5, by= 5)

par(mfrow=c(1,2))
hist(conjunto$Diametro, main = "Sin modificar", xlab = "Díametro", col = "pink")
hist(conjunto$Diametro, breaks = Intervalo, main = "Datos Intervalos", col = "yellow")
par(mfrow=c(1,1))

