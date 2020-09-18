
clc <- function(){
  cat("\014")
}

clc()

################################################################################

datos = c(40, 35, 76, 63, 48, 59, 67, 71, 33, 69, 53, 51, 28, 25, 36, 32, 61, 60, 49, 78, 48, 42, 58, 52, 50, 66, 58, 44, 44, 56)

# b)

quantile(datos, prob = c(0.25, 0.5, 0.75)) # Cuartiles

# c)

mean(datos) # Media
median(datos) # Mediana
tabla = table(datos)
sort(tabla, decreasing = TRUE) # Moda

sd(datos) # Desviacion Estandar
var(datos) # Varianza
mean(abs(datos - mean(datos))) # Desviacion Media
median(abs(datos - median(datos))) # Desviacion Mediana

# d)

summary(datos)

boxplot(datos, main = "Diagrama de Caja", horizontal = TRUE, border = "red", col = "green")
text((max(datos)+min(datos))/2, 1.3, labels = paste0("IQR = ", IQR(datos)))
