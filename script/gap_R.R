gapminder <- read.csv("data/gapminder-FiveYearData.csv")
gapminderhead(gapminder)
str(gapminder)
head(gapminder)
print(gapminder)
gapminder
if (any(gapminder$year == 2002)){print("Hay elementos del año 2002")} else print(("algo"))
if (any(gapminder$year == 2012)){print("Hay elementos del año 2002")} else print(("algo"))
vector_salida<-for (i in 1:10) {vector_salida(i)}
vector_salida<- c()
vector_salida
matrix_salida <- matrix(nrow = 5, ncol = 5)
vector_j<-c("a","b","c","d","e")
for (i in 1:5) {
  for (j in 1:5) {
    valor_j_temp<-vector_j[j]
    salida_temp<-paste(i, valor_j_temp)
    matrix_salida[j, i]<-salida_temp
  }
}
t(matrix_salida)
vector_salida2<-as.vector(matrix_salida)
vector_salida2
vector_salida <- c()
for (i in 1:5){
  for (j in c('a', 'b', 'c', 'd', 'e')){
    salida_temporal <- paste(i, j)
    vector_salida <- c(vector_salida, salida_temporal)
  }
}
vector_salida
vector_salida2
z <- 1
while (z > 0.1){
  z <- runif(1)
  print(z)
}
r
continentes <- levels(gapminder$continent)
for(continente in continentes){
  media <- mean(gapminder$lifeExp[gapminder$continent == continente])
  if(media > 70){
    print(paste("En", continente, "la media de vida es mayor a 70"))
  } else {
    print(paste("En", continente, "La media de vida es menor a 70"))
  }
}
r

paises <- levels(gapminder$country)
for(country in paises) {
  media <- mean(gapminder$lifeExp[gapminder$country == paises])
  if(media > 70){
    print(paste("En", paises, "la media de vida es mayor a 70"))
  } else if (media < 50){
    print(paste("En", paises, "La media de vida es menor a 50"))
  } else {
    print(paste("En", paises, "La media de vida esta entre 50 y 70"))
  }
}
    