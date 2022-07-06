# Analysis-of-Market-Values
這是我在"統計軟體實務應用"這門課的期末報告。

我們這組認為要在股市做長期投資，一間公司市值未來的成長非常重要，所以我們使用了[TEJ台灣經濟新報資料庫](http://schplus.tej.com.tw/)內上市公司的數據來做分析，看看能不能藉此找到市值有潛力的公司，其中我們又使用了三種我們有興趣的方法。

![照片](https://i2.bahamut.com.tw/bahaLOGO_1200x630.jpg)

```{r}
test <- data.frame(matrix(0, nrow = 4, ncol = 2))
colnames(test) <- c("A", "B")
row.names(test) <- c("W", "X", "Y", "Z")
for (i in c(1:4)) {
  for (j in c(1:2)) {
    test[i, j] <- 4*(i-1) + j
  }
}
print(test)
```
