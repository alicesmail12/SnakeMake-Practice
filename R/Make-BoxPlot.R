#!/usr/bin/env Rscript

# Packages
library(tidyverse)

# Read file
message(paste(snakemake@input))
SnakeSizes <- read.csv(paste(snakemake@input))

# Make plot
palette <- list(colorRampPalette(colors = c('#ba5346','#cfc963','#75a450','#90bdcf'))(4))
Plot <- ggplot(SnakeSizes, aes(x=Species, y=Length, fill=Species, colour=Species))+
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
ggsave(paste(snakemake@output), Plot)
