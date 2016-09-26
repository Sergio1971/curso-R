gapminder<- read.csv("Data/gapminder-FiveYearData.csv")
library(plyr)
calcPBI <- function(dat) {
  pbi <- dat$pop * dat$gdpPercap
  pbi
}

conPBI <- calcPBI(gapminder)
gapminder$pbi <- conPBI
dlply(.data = gapminder,
  .variables = "continent",
  .fun = function(dat) mean(dat$pbi))
daply(.data = gapminder,
      .variables = c("continent","year")
      .fun = function(dat) mean(dat$pbi))
d_ply(
  .data = gapminder,
  .variables = "continent",
  .fun = function (dat) {
    meanGDPperCap <- mean(dat$gdpPercap)
    print(paste(
      "The mean GDP per capita for", unique(dat$continent),
      "is", format(meanGDPperCap, big.mark = ",")
    ))
  }

lifeExp_continent_year1952 <- ddply(gapminder, .(continent, year = 1952), function(x) mean (x$lifeExp))


d_ply(
  .data = gapminder,
  .variables = "continent",
  .fun = function (dat) {
    meanlifeExp <- mean(dat$lifeExp)
   print ( paste ("The mean lifeExp", unique (dat$continent),
    "is", format(meanlifeExp, big.mark = "," )))
  }
)
lifeExp_continent_year <- ddply(gapminder, .(continent, year), function(x) mean (x$lifeExp))
# Creo dos objetos
# Uno con los datos de 1952, y otro de 2007
lifeExp_continent_1952 <- 
  lifeExp_continent_year[lifeExp_continent_year$year == 1952, ]
lifeExp_continent_2007 <- 
  lifeExp_continent_year[lifeExp_continent_year$year == 2007, ]
lifeExp_continent_1952
lifeExp_continent_2007

# Con cbind le uno al data.frame del año 1952 
# la columna de medias del año 2007 y le digo
# que la llame anio_2007
lifeExp_continent_1952_2007 <- 
  cbind(lifeExp_continent_1952, 
        anio_2007 = lifeExp_continent_2007$V1)
lifeExp_continent_1952_2007
# Me quedó V1 como nombre así que lo cambio a "anio_1952"
# Es el tercer nombre y solo cambio ese
names(lifeExp_continent_1952_2007)[3] <- "anio_1952"
#Calculo la diferencia
lifeExp_continent_1952_2007$diferencia <- 
  with(lifeExp_continent_1952_2007, anio_2007 - anio_1952)

ddply(gapminder, .(continent), summarise,
      media_lifeExp = mean(lifeExp),
      sd_lifeExp = sd(lifeExp))


year_country_gdp <- gapminder %>% select(year,country,gdpPercap)
library(dplyr)
year_country_gdp <- gapminder %>% select(year,gdpPercap)
year_country_gdp_africa <- gapminder %>%
  filter(continent == "Africa") %>%
  select(year, country, gdpPercap)
str(gapminder %>% group_by(continent))
lifeExp_bycountry <- gapminder %>%
  group_by(country) %>%
  summarize(mean_lifeExp = mean(lifeExp))
lifeExp_bycountry[which.max(lifeExp_bycountry$mean_lifeExp),]
lifeExp_bycountry[which.min(lifeExp_bycountry$mean_lifeExp),]


gdp_bycontinents_byyear <- gapminder %>%
  group_by(continent, year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap))

gdp_pop_bycontinents_byyear <- gapminder %>%
  group_by(continent, year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap),
            sd_gdpPercap = sd(gdpPercap),
            mean_pop = mean(pop),
            sd_pop = sd(pop))

gdp_pop_bycontinents_byyear <- gapminder %>%
  mutate(gdp_billion = gdpPercap*pop/10^9) %>%
  group_by(continent,year) %>%
  summarize(mean_gdpPercap = mean(gdpPercap),
            sd_gdpPercap = sd(gdpPercap),
            mean_pop = mean(pop),
            sd_pop = sd(pop),
            mean_gdp_billion = mean(gdp_billion),
            sd_gdp_billion = sd(gdp_billion))

gdp_contry_2002 <- gapminder %>%
  group_by(country, year = 2002) %>%
  summarize(mean_gdpPercap = mean(gdpPercap))


