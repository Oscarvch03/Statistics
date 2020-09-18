
clc <- function(){
  cat("\014")
}

clc()

################################################################################

N1 = 1000
Edad = round(runif(N1, 17, 25))
mean(Edad)
var(Edad)

N2 = 100000
Edad2 = round(runif(N2, 17, 25))
Edad2
mean(Edad2)
var(Edad2)

# par(mfrow = c(1, 2))
hist(Edad2, col = "green",  ylim = c(0, 13000))
hist(Edad, col = "red", add = T)

