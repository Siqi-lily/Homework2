library(gapminder)
library(tidyverse)
gapminder%>%
  filter(continent == "Americas" & year == "1997")%>%
  mutate(logpop = log2(pop))%>%
  arrange(-lifeExp)%>%
  ggplot() +
  geom_bar(mapping = aes(x = lifeExp, y = country, fill= country), stat = "identity")