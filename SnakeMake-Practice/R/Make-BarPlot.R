#!/usr/bin/env Rscript

# Packages
library(tidyverse)

# Read file
message(paste(snakemake@input))
SnakeSizes <- read.csv(paste(snakemake@input))
SnakeSizesSum <- SnakeSizes %>% group_by(Species) %>% summarise(Length=mean(Length))

# Make plot
palette <- list(colorRampPalette(colors = c('#ba5346','#cfc963','#75a450','#90bdcf'))(4))
Plot <- ggplot(SnakeSizesSum, aes(x=Species, y=Length, fill=Species, colour=Species))+
  geom_col(alpha=0.5)+
  theme_classic()+
  scale_fill_manual(values=c(palette[[1]]))+
  scale_colour_manual(values=c(palette[[1]]))+
  theme(text=element_text(family='Roboto', size=16))+
  guides(fill='none', colour='none')

# Save
message(paste(snakemake@output))
ggsave(paste(snakemake@output), Plot)
