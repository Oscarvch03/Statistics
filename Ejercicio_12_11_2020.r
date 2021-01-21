
rm(list = ls())

x = c(1.21, 1.29, 1.37, 1.46, 1.62, 1.79)
y = c(1.302, 1.231, 1.061, 1.040, 0.803, 0.711)
n = length(x)
gl = n - 2
alpha = 0.05

plot(x, y, main = "scatterplot")


# modelo

mod = lm(y ~ x)
summary(mod)
abline(mod)
abline(mod, col = 3, lwd = 3)

xb = mean(x)
yb = mean(y)

sxx = sum((x - xb) ^ 2)
syy = sum((y - yb) ^ 2)
sxy = sum((x - xb) * (y - yb))

beta1 = sxy / sxx
beta0 = yb - beta1 * xb

yg = beta1 * x + beta0

c11 = 1/ sxx
c00 = sum(x ^ 2) / n * sxx
c10 = -xb / sxx

SSE = syy - beta1 * sxy
S = sqrt((SSE / (n - 2)))

t = beta1 / (S * sqrt(c11))

pt(-abs(t), df = n - 2)
qt(alpha, gl)


xn = 1.5
yn = beta0 + xn * beta1

