mi_suma <-function(a, b) {
  suma <- a + b 
  return(suma)
}
mi_suma
kelvin_a_fahr <- function(temp) {
  fahr <- (temp - 273.15) * (9/5) + 32
  return(fahr)
}
kelvin_a_fahr(373.15)
temp <- c(273.15, 373.15)
kelvin_a_fahr(temp)
Celsius_a_Kelvin <- function(temp){
  Celsius <- (temp + 273.15) 
  return(Celsius)
}
celsius_a_kelvin <- function(temp){
  kelvin <- temp + 273.15
  return(kelvin)
}
kelvin_a_fahr <- function(temp) {
   kelvin <- celsius_a_kelvin (temp) 
   fahr <- kelvin_a_fahr(kelvin)
   return(fahr)
}
calcPBI <- function(dat) {
  pbi <- dat$pop * dat$gdpPercap
  pbi
}
calcPBI (gapminder, year =c(1987, ), country)

mejores_practicas <- c("Escribe", "programas", "para", "personas", 
                       "no", "para", "computadoras")
paste(mejores_practicas, envoltura = "")
paste("***", paste(mejores_practicas, collapse = ""), "***")
#' Title
#'
#' @param texto 
#' @param envoltura 
#'
#' @return
#' @export
#'
#' @examples
vallar<- function(texto,envoltura){paste0(envoltura, paste(texto, collapse = " "), envoltura)
}
vallar(texto = mejores_practicas, envoltura = "***")
calcPBI <- function(dat) {
  pbi <- dat$pop * dat$gdpPercap
  pbi
}
calcPBI(head(gapminder))

gapminder<-read.csv( "Data/gapminder-FiveYearData.csv")
gapminder
library(ggplot2)
ggplot(data = gapminder, aes(x = year, y = lifeExp), color = country)
pdf("Mi_grafico.pdf", width = 12, height = 8, onefile = TRUE)
for( continent in levels(gapminder$continent)) {
  print(ggplot(data = gapminder[gapminder$continent == continent, ], aes(x = year, y = lifeExp, colour = country)) +
  geom_line())
}
dev.off()
pdf("Life_Exp_vs_time.pdf", width = 12, height = 12, onefile = TRUE)
ggplot(data=gapminder, aes(x = year, y = lifeExp, colour = country)) +
  geom_line() +
  theme(legend.position = "bottom")

# You then have to make sure to turn off the pdf device!

dev.off()


dir.create("cleaned-data")
aust_subset <- gapminder[gapminder$country == "Australia",]
aust_subset <- gapminder[gapminder$country == "Australia",]
aust_subset <- gapminder[gapminder$country == "Australia",]

aust_subset
write.table(aust_subset,
  file = "cleaned-data/gapminder-aus.csv",
  sep = ",", quote = FALSE, row.names = FALSE)
aust_subset
aust_subset <- gapminder[gapminder$country == "Australia",]
gapminder<- read.csv("Data/gapminder-FiveYearData")
ddply(
  .data = calcPBI(gapminder),
  .variables = "continent",
  .fun = function(x) mean(x$gdp)
)
