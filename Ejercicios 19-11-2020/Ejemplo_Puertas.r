rm(list = ls())

clc <- function(){
  cat("\014")
}

clc()

doors_obs = c(23, 36, 31)
doors_esp = c(30, 30, 30)
gl = length(doors_obs) - 1

chisq.test(doors_obs)

Xsq = chisq.test(doors_obs)
Xsq$observed
Xsq$expected
Xsq$residuals
Xsq$p.value
q = Xsq$statistic
pchisq(q, df = 2, lower.tail = FALSE)
qchisq(0.95, df = gl)
qchisq(0.05, df = gl, lower.tail = FALSE)

