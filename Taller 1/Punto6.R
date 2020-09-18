
clc <- function(){
  cat("\014")
}

clc()

################################################################################

# a)

data(iris)
head(iris)


# b)

sl = iris$Sepal.Length
print("Category: Sepal.Length")
print(paste0("The Mean is: ", round(mean(sl), 3)))
print(paste0("The Median is: ", round(median(sl), 3)))
print(paste0("The Max is: ", max(sl)))
print(paste0("The Min is: ", min(sl)))
print(paste0("The Range is: ", range(sl)[1], " - ", range(sl)[2]))
print(paste0("The Variance is: ", round(var(sl), 3)))
print(paste0("The Standard Deviation is: ", round(sd(sl), 3)))

sw = iris$Sepal.Width
print("Category: Sepal.Width")
print(paste0("The Mean is: ", round(mean(sw), 3)))
print(paste0("The Median is: ", round(median(sw), 3)))
print(paste0("The Max is: ", max(sw)))
print(paste0("The Min is: ", min(sw)))
print(paste0("The Range is: ", range(sw)[1], " - ", range(sw)[2]))
print(paste0("The Variance is: ", round(var(sw), 3)))
print(paste0("The Standard Deviation is: ", round(sd(sw), 3)))

pl = iris$Petal.Length
print("Category: Petal.Length")
print(paste0("The Mean is: ", round(mean(pl), 3)))
print(paste0("The Median is: ", round(median(pl), 3)))
print(paste0("The Max is: ", max(pl)))
print(paste0("The Min is: ", min(pl)))
print(paste0("The Range is: ", range(pl)[1], " - ", range(pl)[2]))
print(paste0("The Variance is: ", round(var(pl), 3)))
print(paste0("The Standard Deviation is: ", round(sd(pl), 3)))

pw = iris$Petal.Width
print("Category: Petal.Width")
print(paste0("The Mean is: ", round(mean(pw), 3)))
print(paste0("The Median is: ", round(median(pw), 3)))
print(paste0("The Max is: ", max(pw)))
print(paste0("The Min is: ", min(pw)))
print(paste0("The Range is: ", range(pw)[1], " - ", range(pw)[2]))
print(paste0("The Variance is: ", round(var(pw))))
print(paste0("The Standard Deviation is: ", round(sd(pw), 3)))


# c) and d)

par(mfrow = c(2, 4))

hist(sl, main = "Histogram of Sepal.Length", xlab = "Intervals", col = "blue")
table_sl = table(sl)
barplot(table_sl, main = "Bar Diagram of Sepal.Length", xlab = "Data", ylab = "Frequency", col = topo.colors(10), ylim = c(0, max(table_sl)+4))

hist(sw, main = "Histogram of Sepal.Width", xlab = "Intervals", col = "red")
table_sw = table(sw)
barplot(table_sw, main = "Bar Diagram of Sepal.Width", xlab = "Data", ylab = "Frequency", col = heat.colors(10), ylim = c(0, max(table_sw)+4))

hist(pl, main = "Histogram of Petal.Length", xlab = "Intervals", col = "green")
table_pl = table(pl)
barplot(table_pl, main = "Bar Diagram of Petal.Length", xlab = "Data", ylab = "Frequency", col = terrain.colors(10), ylim = c(0, max(table_pl)+4))

hist(pw, main = "Histogram of Petal.Width", xlab = "Intervals", col = "orange")
table_pw = table(pw)
barplot(table_pw, main = "Bar Diagram of Petal.Width", xlab = "Data", ylab = "Frequency", col = rainbow(10), ylim = c(0, max(table_pw)+4))
