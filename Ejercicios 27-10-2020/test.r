
clc <- function(){
  cat("\014")
}

clc()

rm(list = ls())

x = c(-2, -1, 0, 1, 2)
y = c(0, 0, 1, 1, 3)

plot(x, y, main = "Scatterplot")

mod = lm(y ~ x)

summary(mod)

mod$coefficients
abline(mod, col = 3, lwd = 3)