install.packages("tidyr")
install.packages("dplyr")
library("tidyr")
library("dplyr")
gapminder <- read.csv("Data/gapminder-FiveYearData.csv")
gapminder
str(gapminder)
library(ggplot2)
library(GGally)
ggpairs(gapminder, columns = c(3, 5, 6), colour = "continent")
gap_wide <- read.csv ("http://bit.ly/gap_wide", stringsAsFactors = FALSE)
gap_wide
str(gap_wide)
head(gap_wide)
View(gap_wide)
gap_long <- gap_wide %>%
  gather(obstype_year,obs_values, starts_with('pop'),
         starts_with('lifeExp'), starts_with('gdpPercap'))
str(gap_long)
gap_long <- gap_wide %>% gather(obstype_year,obs_values,-continent,-country)
str(gap_long)
View(gap_long)
gap_long <- gap_long %>% 
  separate(obstype_year,
           into = c('obs_type','year'), sep = "_")
gap_long$year <- as.integer(gap_long$year)
head(gap_long)
tail(gap_long)
gap_long$year <- as.integer(gap_long$year)


gap_long1 <- gap_long %>% 
  group_by(continent, obs_type) %>% 
  summarise (media = mean(obs_value)
library(plyr)
gap_aov <- gap_long %>% group_by  (obstype) %>% do ( aov= obs_value ~ continent, data = .))


gap_normal <- gap_long %>% spread(obs_type, obs_values)
head(gap_normal)

gap_normal <- gap_normal[,names(gapminder)]
all.equal(gap_normal,gapminder)

gap_normal <- gap_normal %>% arrange(country,continent,year)
all.equal(gap_normal,gapminder)

gap_temp <- gap_long %>% 
  unite(var_ID, continent, country, sep = "_")

str(gap_temp)

gap_wide_new <- gap_long %>%
  unite(ID_var, continent, country, sep = "_") %>%
  unite(var_names, obs_type, year, sep = "_") %>%
  spread(var_names, obs_values)
str(gap_wide_new)

gap_wide_new2 <- gap_long %>%
  unite(var_names, year, country, obs_type, sep = "_") %>%
  spread(var_names, obs_values)
gap_wide_new2

str(gap_wide_new)
dim(gap_wide_new2)

gap_wide_betterID <- separate(gap_wide_new, ID_var, 
                              c("continent","country"), sep = "_")
gap_wide_betterID <- gap_long %>%
  unite(ID_var, continent, country, sep = "_") %>%
  unite(var_names, obs_type, year, sep = "_") %>%
  spread(var_names, obs_values) %>%
  separate(ID_var, c("continent", "country"), sep = "_")

