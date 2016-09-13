x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x[3]
x[c(1, 3)]
x[1: 4]
x[1, 1, 2]
x[c(1, 1, 1, 3, 3)]
x[6]
x[-1]
x[c(-1, -3)]
x[-c(1, 3)]
x
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)
x[-c(4, 5)]
x
x[-c(1, 5)]
print(x)
x[-1]
x[2:4]
x[c(2, 3, 4)]
x["a"]
x[2b]
x["b"]
x[c("a", "b")]
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)

names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)
x[-which(names(x) == "a")]
x[-which(names(x) %in% c("a", "c"))]
x[-which(names(x) == "g")]
x <- 1:3
x
names(x) <- c('a', 'a', 'a')
x
x <- 1:1000
x
x <- 1:3
x
names(x) == c('a', 'c')
x[c(TRUE, TRUE, FALSE, FALSE)]   
x[c(TRUE, FALSE, FALSE)]
x[x > 7]
x < 6 || x > 7
all(x < 6 || x > 7)
all(x>4)
any(all(x < 6 || x > 7))
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)
all(x > 4 | x < 7)
all(x > 4 || x < 7)
all(x > 5 | x < 6)
all(x < 5 | x > 6)
x [x>4 & x < 6]
x <- c(x, NA)
is.na(x)
na.omit(x)
c (x, 4)
f <- factor(c('a', 'b', 'c', 'd', 'e'))
f
f <- factor(c("a", "a", "b", "c", "c", "d"))
f[f == "a"]
f[f %in% c("b", "c")]
f[1:3]
f
set.seed(1)
m <- matrix(rnorm( 6 * 4), ncol = 4, nrow = 6)
m [5, 2]
m[3:4, c(1, 3)]
m[4:5, c(1, 2)]
m[,c( 3, 4)]
m[3, , drop = FALSE]
m[ , c(3, 6)]
m[5]
m[1]
m[]m <- matrix(1:18, nrow = 3, ncol = 6)
print(m)
set.seed(1)
m <- matrix(1:18, nrow = 3, ncol = 6)
m[2,4,2,5]
m[2:5]
m[4:5,2] 
m[2,c(4,5)]
xlist <- list(a = "UNTDF", b = 1:10, data = head(iris))
xlist[1]
class(xlist[1])
typeof(xlist[1])
xlist[1:2]
xlist[c ("a", "data")]
xlist ["data"]
xlist$a
xlist$b
xlist$data$Petal.Length[xlist$data$Petal.Length == 1.5, drop = FALSE]
xlist$data$Petal.Length[xlist$data$Petal.Length == 1.4]
xlist$data$Petal.Length == 1.5, drop = FALSE
xlist
xlist$b[2]
mod <- aov(pop ~ lifeExp, data=gapminder)
mod
str(mod)
attributes(mod)
mod$df.residual
mod
print(lm)
lapply(mod)
head(gapminder[3],5)
head(gapminder[["lifeExp"]])
head(gapminder$year)
gapminder[gapminder$country == "Argentina", ]
gapminder[gapminder$year == 1957, ]
gapminder[1,4]
gapminder
head(gapminder)
gapminder [ , 1:4]
gapminder [ , -c(1, 4)]
