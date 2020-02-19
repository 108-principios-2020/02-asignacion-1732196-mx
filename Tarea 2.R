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


# Ejercicio #3 ------------------------------------------------------------

library(repmis)


