list(1, "a", true, 1 +4i)
list(1, "a", true, 1 +4i)
gatos <- read.csv("data/datos-felinos0.csv")
gatos 
typeof(gatos[1])
typeof(gatos[[1]])
typeof(gatos$pelaje)
typeof(gatos["pelaje"])
typeof[1, 1]
gatos[1, ]
list(1, "a", TRUE, 1 + 4i)
list_example <- list(1, "a", TRUE, 1 + 4i)
list_example
gatos[1, 1]
gatos["pelaje"]
gatos[1, 1]
gatos$pelaje
matrix_example <- matrix(0, ncol = 6, nrow = 3)
matrix_example
matrix(ncol = 6, nrow = 3)
matrix(ncol = 5, nrow = 10)
1:50
x<- 1:50
ej5 <- matrix(x, nrow = 10, ncol = 5)
matrix[1, ]
matrix(1, )
matrix(2, )
matrix(4, 1)
matrix(c(4, 1, 9, 5, 10, 7), nrow = 3)
matrix(c(4, 9, 10, 1, 5, 7), ncol= 2, byrow = TRUE)
matrix(c(4, 9, 10, 1, 5, 7), ncol= 2, byrow = TRUE)
levels(gatos$pelaje)
levels(gatos$pelaje) <- C(levels(gatos$pelaje), "carey")
levels(gatos$pelaje)
levels(gatos$pelaje) <- c(levels(gatos$pelaje), "carey")

levels(gatos$pelaje)
gatos <- levels(gatos$pelajes)
nuevafila <- c(4,5,8,9)
gatos <- rbind(gatos, nuevafila)
gatos
typeof(gatos)
df <- data.frame(id = c('a', 'b', "c"), x = 1:3, y = c(TRUE, TRUE, FALSE), stringsAsFactors = FALSE)                 
df <- data.frame("sergio"= c("a", "b", "c"), "camargo"= 1:3, y "numero" = c(TRUE, TRUE, FALSE), stringsAsFactors = FALSE)
data.frame(apellido = "camargo", nombre = "sergio", numero = 3)
rbind(rbind("pepe", "polo"))
data.frame <- rbind("pepe", "polo")
Df <- data.frame(apellido = "camargo", nombre = "sergio", numero = 3, stringsAsFactors = FALSE) 
df1 <- data.frame(apellido = "camargo", nombre = "sergio", numero = 3)
Df1 <- rbind ("polo", "pepe", 4)
gapminder <- read.csv("gapminder-FiveYearData.csv")
gapminder
