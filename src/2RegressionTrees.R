#regression trees
dryver <- read.csv("https://raw.githubusercontent.com/kurtjoy/DRYVER_IMPACT/master/dryver_nat_20180612.csv")
names(dryver)[1] <- "NEW_ID" 
dryver["NEW_ID"] <- as.character(dryver["NEW_ID"])
dim(dryver)

str(dryver)
#regression tree predictors should have NO interaction terms

raw.dryver <- dryver[c(2:9,16:18,23,24)]
names(raw.dryver)
install.packages("tree")
install.packages("rpart")
library(tree)
library(rpart)
k <- tree(formula = X0P_AV_TIME ~ ., data = raw.dryver)
summary(k)
plot(k)
text(k, cex=.75)

names(dryver)

X <- dryver[c(2,5:15,19,20,25,16)]
names(X)
k <- tree(formula = X0P_AV_TIME ~ ., data = X)
summary(k)
plot(k)
text(k, cex=.75)


X0P <- dryver[c(2,5:15,16)]
names(X0P)
k <- tree(formula = X0P_AV_TIME ~ ., data = X0P)
k
summary(k)
plot(k)
text(k, cex=.75)
