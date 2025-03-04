#!/usr/bin/env Rscript

# Make dataframe
SnakeSizes <- data.frame('Species'=c('Cobra', 'Cobra', 'Cobra', 'Cobra', 'Cobra', 'Cobra', 
                                          'Mamba', 'Mamba', 'Mamba', 'Mamba', 'Mamba', 'Mamba',
                                          'Rattlesnake', 'Rattlesnake', 'Rattlesnake', 'Rattlesnake', 'Rattlesnake', 'Rattlesnake', 
                                          'Anaconda', 'Anaconda', 'Anaconda', 'Anaconda', 'Anaconda', 'Anaconda'),
                         'Length'=c(3.5,3.6,3.9,3.8,3.2,3.6,
                                    4.3,4.2,4.5,4.3,4.1,4.0,
                                    2,2.1,2.2,1.8,2.5,2.3,
                                    6,7,6.8,6.5,6.2,7.1))

# Save file
write.csv(SnakeSizes, 'SnakeSizes.csv')

# Make dataframe
LizardSizes <- data.frame('Species'=c('Horned', 'Horned', 'Horned', 'Horned', 'Horned', 'Horned', 
                                          'Mojave', 'Mojave', 'Mojave', 'Mojave', 'Mojave', 'Mojave',
                                          'Sagebrush', 'Sagebrush', 'Sagebrush', 'Sagebrush', 'Sagebrush', 'Sagebrush', 
                                          'Prairie', 'Prairie', 'Prairie', 'Prairie', 'Prairie', 'Prairie'),
                         'Length'=c(2,4,5,4.4,5.3,6,
                                    6.3,6.2,6.5,7.3,7.1,7.0,
                                    2,2.3,2.2,3,2.5,3,
                                    4,7,6.8,4.5,5.2,6.1))

# Save file
write.csv(LizardSizes, 'LizardSizes.csv')
