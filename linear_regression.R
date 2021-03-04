dir()
df = read.csv("train.csv")
head(df)

reg = lm(df$Survived~df$Age, data=df)
summary(reg)

reg = lm(df$Survived~df$Age+df$Sex+df$Pclass+df$Fare+df$SibSp, data=df)
summary(reg)

reg = lm(df$Survived~df$Age+df$Sex+df$Pclass+df$SibSp, data=df)
summary(reg)
