#| echo: true

library(tidyverse)
library(readr)
library(ggplot2)
library(hrbrthemes)
summary <- read_csv("summary.csv")
offensive <- read_csv("offensive.csv")
xg <- read_csv("xg.csv")
passing <- read_csv("passing.csv")
away <- read_csv("away.csv")
home <- read_csv("home.csv")

 away |>
   ggplot(aes(x = Rating, y = Player, color = Player)) + 
   geom_point()  










library(ggplot2)
library(hrbrthemes)


summary |>
  mutate(summary, mins_age = Mins / Age) |>
  ggplot(aes(y=Player, x=mins_age)) +
  geom_area( fill="#69b3a2", alpha=0.4) +
  geom_line(color="#69b3a2", size=2) +
  geom_point(size=3, color="#69b3a2") +
  theme_ipsum() +
  ggtitle("Evolution of something") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))







library(dplyr)
library(ggplot2)
library(hrbrthemes)
library(ggtext)

summary <- summary %>%
  mutate(mins_age = Mins / Age) %>%
  arrange(desc(mins_age)) %>%
  mutate(Player_label = paste0('<span style="color:blue;">', Player, '</span> <span style="color:black;">(', Age, ')</span>'))


ggplot(summary, aes(y = mins_age, x = reorder(Player_label, mins_age))) +
  geom_segment(aes(y = 0, yend = mins_age), color = "orange", size = 0.9) +
  geom_point(color = "grey", size = 2.5) +
  theme_ipsum() +
  coord_flip() +
  theme(legend.position = "none") +
  xlab("") +
  ylab("") +
  ggtitle("") +
  theme(axis.text.y = element_markdown(size = 11.5, angle = 0, hjust = 1))








