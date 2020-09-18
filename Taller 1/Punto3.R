
clc <- function(){
  cat("\014")
}

clc()

################################################################################

dat1 = rep(12.5, 3)
dat2 = rep(12.7, 10)
dat3 = rep(13.0, 22)
dat4 = rep(13.1, 29)
dat5 = rep(13.2, 12)
dat6 = rep(13.8, 5)
datos = c(dat1, dat2, dat3, dat4, dat5, dat6)
table_datos = table(datos)

# a)

barplot(table_datos, main = "Diagrama de Barras (Frecuencias)", ylim = c(0, max(table_datos)+4),
        xlab = "Ganancia de peso", ylab = "Frecuencia", col = "green")  # Diagrama de Barras

# b)
mean(datos) # Moda
median(datos) # Mediana
sort(table_datos, decreasing = TRUE) # Moda


# c)

var(datos) # Varianza
median(abs(datos - median(datos))) # Desviacion Mediana
     
summary(datos)
