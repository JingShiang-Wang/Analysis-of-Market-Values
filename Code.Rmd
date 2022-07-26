第一部分

```{r}
data1<-read.csv("C:\\Users\\andyw\\OneDrive\\桌面\\課本\\統計軟體實務應用\\data1.csv")

#將匯入的資料分成2019、2020矩陣
M2019 <- matrix(0, nrow = 856, ncol = 2)
M2020 <- matrix(0, nrow = 856, ncol = 2)
for (i in 1:856) {
  M2019[i, 1] <- as.numeric(data1[i, 3])
  M2019[i, 2] <- as.numeric(data1[i, 7])
  M2020[i, 1] <- as.numeric(data1[i, 2])
  M2020[i, 2] <- as.numeric(data1[i, 8])
}
Q11 <- quantile(data3[, 9])
Q12 <- quantile(data3[, 10])

#製作兩個年份的圖
r11<-lm(M2019[, 1] ~ M2019[, 2])
plot(x = M2019[, 1], y = M2019[, 2], xlab = "外資持股比", ylab = "市值成長率", main = "2019")
abline(a = r11$coefficients[1], b = r11$coefficients[2], col = "red")

r12<-lm(M2020[, 1] ~ M2020[, 2])
plot(x = M2020[, 1], y = M2020[, 2], xlab = "外資持股比", ylab = "市值成長率", main = "2020")
abline(a = r12$coefficients[1], b = r12$coefficients[2], col = "red")
```
