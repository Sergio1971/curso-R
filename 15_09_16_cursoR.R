gapminder<-read.csv("data/gapminder-FiveYearDAta.csv")
library(ggplot2)
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()
ggplot(data = gapminder, aes(x = year, y = lifeExp)) +
  geom_point()
ejercicio2
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, color = continent)) +
  geom_line()
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           by = country, color = continent)) +
  geom_line()
ejercicio2
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           by = country, color = continent)) + geom_point() +
  geom_line()
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5) + scale_x_log10()
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() + scale_x_log10()
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5, color ="red") + scale_x_log10() + geom_smooth(method = "lm")

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5, color ="red") + scale_x_log10() + geom_smooth(method = "lm", color = "green") 

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.8, color ="blue", size = 2) + scale_x_log10() + geom_smooth(method = "lm", color = "green")
ggplot(data = gapminder, aes( color = continent, x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.8, size = 2, color = continente) + scale_x_log10() + geom_smooth(method = "lm")
ggplot(data = gapminder, aes( color = continent, x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.8, size = 1) + scale_x_log10() + geom_smooth(method = "lm")
az.countries <- gapminder[starts.with %in% c("A", "Z"), ]
ggplot(data = az.countries, 
       aes(x = year, y = lifeExp, color = continent)) +
  geom_line() + facet_wrap( ~ country)
starts.with <- substr(gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A", "Z"), ]
ggplot(data = az.countries, 
       aes(x = year, y = lifeExp, color = continent)) +
  geom_line() + facet_wrap( ~country)
ggplot(data = az.countries, 
       aes(x = year, y = lifeExp, color = continent)) +
  geom_line() + 
  facet_wrap( ~  country) +
  xlab("Year") +
  ylab("Life expectancy") + 
  ggtitle("Figura 2") +
  scale_colour_discrete( name = "Continent") +
  theme ( strip.text = element_text(size = 14)
           ggplot(data = az.countries, 
                  aes(x = year, y = lifeExp, color = continent)) +
             geom_line() + 
             facet_wrap( ~ country) +
             xlab("Year") +
             ylab("Life expectancy") + 
             ggtitle("Figura 1") +
             scale_colour_discrete( name = "Continent") +
             theme(strip.text =  element_text(size = 9)
x<- matrix(1:12, nrow = 3, ncol = 4)
x<- c(1: 100)
x1<- c(1:1000)
sumatoria <- 1/x^ 2
sumatoria
sum(sumatoria)

sumatoria2 <- 1/x1^2
sumatoria2
ls
