# Punto 4 Parcial 3 Estadistica

rm(list = ls())

clc <- function(){
  cat("\014")
}

clc()


# Cargar el dataset

data = read.table("1003557913VELASCO.txt", header = TRUE) 
summary(data)

# a) Ajuste el modelo de regresion lineal

x = data$x
y = data$y

mod = lm(y ~ x)

plot(x, y, main = "scatterplot")
abline(lm(y ~ x), col = 3, lwd = 3)

betas = mod$coefficients


# b) y_gorrito = beta0 + beta1 * x = -7.188065 + 59.415171 * x


# c) 

summary(mod)
# Los parametros son bastante significativos ya que el ajuste se realiza con 
# 3 asteriscos (***), es decir con alpha = 0.001
# Para beta0, p_value = -0.321
# Para beta1, p_value = 47.537


# d) Valor R ^ 2

x_b = mean(x)
y_b = mean(y)
s_xx = sum((x - x_b) ^ 2)
s_yy = sum((y - y_b) ^ 2)
beta1 = 59.415171
r = beta1 * sqrt(s_xx / s_yy)
r_cuad = r ^ 2 # 0.7907 
# En un 79% la variacion de los datos de y se explica al ajustar el modelo,
# usando x como la variable independiente.
# Como r es positivo, se concluye que entre mas grande el valor de x, 
# mas grande sera el valor de y (como se ve en la grafica)


# e) predict y cuando x = 20

x_ast = 20
y_ast = -7.188065 + 59.415171 * x_ast
predict(mod, newdata = data.frame(x = c(x_ast))) # y_gorrito = 1181.115
# Se verifica efectivamente que la prediccion concuerde con el modelo (y_ast)

