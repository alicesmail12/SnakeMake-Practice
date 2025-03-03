# Packages
library(tidyverse)

# Read file
SnakeSizes <- read.csv('SnakeSizes.csv')

# Make plot
palette <- list(colorRampPalette(colors = c('#ba5346','#cfc963','#75a450','#90bdcf'))(4))
Plot <- ggplot(SnakeSizes, aes(x=SnakeSpecies, y=Length, fill=SnakeSpecies, colour=SnakeSpecies))+
  geom_boxplot(alpha=0.5)+
  geom_dotplot(binaxis="y",
               stackdir="center",
               dotsize=1) +
  theme_classic()+
  scale_fill_manual(values=c(palette[[1]]))+
  scale_colour_manual(values=c(palette[[1]]))+
  theme(text=element_text(family='Roboto', size=16))+
  guides(fill='none', colour='none')

# Save
ggsave('SnakeSize.png', Plot)
