
clc <- function(){
  cat("\014")
}

clc()

rm(list = ls())

x = c(10, 12, 9, 27, 47, 112, 36, 241, 59, 167)
mean(x)
y = c(9, 14, 7, 29, 45, 109, 40, 238, 60, 170)
mean(y)

plot(x, y, main = "Scatterplot")

mod = lm(y ~ x)

summary(mod)

mod$coefficients
abline(mod, col = 3, lwd = 3)
