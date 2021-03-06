library(tidyverse)
d <- read_delim("dane_wlasciwe.csv", 
                            ";", escape_double = FALSE, trim_ws = TRUE)

warunki <- group_by(d, Warunek)
summarise (warunki, srednia = mean(Ocena), odchylenie = mad(Ocena), count = n())

status_zwiazku <- group_by(d, `status zwiazku`)
summarise (status_zwiazku, srednia = mean(Ocena), odchylenie = mad(Ocena))

ggplot(data = dane_wlasciwe) +
  geom_point(mapping = aes(x = Wiek, y = Ocena, alpha = 3/10)) +
  geom_smooth(mapping = aes(x = Wiek, y = Ocena))

