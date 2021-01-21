rm(list = ls())

clc <- function(){
  cat("\014")
}

clc()

y_i = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 19)
f_i = c(56, 104, 80, 62, 42, 27, 9, 9, 5, 3, 2, 0, 1)
n = 400
sum(f_i) == n

yb = sum(y_i * f_i) / 400
i = ((yb ^ y_i) * exp(-yb)) / factorial(y_i)
i2 = dpois(y_i, yb)
p_i = i[1:7]
p_i[8] = 1 - sum(p_i[1:7])
sum(p_i)

E_i = n * p_i
df = length(p_i) - 1 - 1
n_i = f_i[1:7]
n_i[8] = sum(f_i[8:length(f_i)])
X_2 = sum(((n_i - E_i) ^ 2) / E_i)
qchisq(0.95, df)
pchisq(X_2, df = df, 0.05, lower.tail = F)
