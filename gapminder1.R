library(gapminder)
library(tidyverse)
gapminder%>%
  filter(continent == "Americas" & year == "1997")%>%
  mutate(logpop = log2(pop))%>%
  arrange(-lifeExp)-> gapminder1
gapminder1