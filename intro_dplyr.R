library(gapminder)
library(tidyverse)

filter(gapminder, lifeExp < 29)

# pipe: Cmd + Shift + M 
gapminder %>%
  filter(country == "Cambodia") %>%
  select(year, lifeExp)

my_gap <- gapminder

my_gap %>%
  mutate(gdp = pop * gdpPercap)

ctib <- my_gap %>%
  filter(country == "Canada")
## this is a semi-dangerous way to add this variable
## I'd prefer to join on year, but we haven't covered joins yet
my_gap <- my_gap %>%
  mutate(tmp = rep(ctib$gdpPercap, nlevels(country)),
         gdpPercapRel = gdpPercap / tmp,
         tmp = NULL)
head(my_gap)

my_gap %>% 
  filter(country == "Canada") %>% 
  select(country, year, gdpPercapRel)
