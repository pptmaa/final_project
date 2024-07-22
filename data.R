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

# away |>
  # ggplot(aes(x = Rating, y = Player, color = Player)) + 
  # geom_point()  










library(ggplot2)
library(hrbrthemes)


summary |>
  mutate(summary, mins_age = Mins / Age) |>
  ggplot(aes(x=Player, y=mins_age)) +
  geom_area( fill="#69b3a2", alpha=0.4) +
  geom_line(color="#69b3a2", size=2) +
  geom_point(size=3, color="#69b3a2") +
  theme_ipsum() +
  ggtitle("Evolution of something") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))












