x = rnorm(100, mean = 20, sd = 5)
y = x + rnorm(100, mean = 0, sd = 2)
fit = lm(y ~ x)
summary(fit)

plot(x,y)
abline(fit, col=2)
windows()
dev.set(5)
plot(x,y)

Co2 = read.csv("co2_mm_mlo.csv")
plot(Co2$decdate, Co2$interpolated, type = 'l', main = "Mauna Loa Co2", xlab = "Time", ylab = "ppm")
lines(Co2$decdate, Co2$trend, col=2, lwd=2)
