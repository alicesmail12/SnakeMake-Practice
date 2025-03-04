ANIMALS = ['Snake', 'Lizard']

rule all:
    input:
        expand('Plots/{animal}SizeBar.png', animal=ANIMALS), expand('Plots/{animal}SizeBox.png', animal=ANIMALS)
          
rule get_data:
  output:
    'Data/{animal}Sizes.csv'
  script:
    'R/Make-Data.R'
    
rule make_boxplot:
  input:
    'Data/{animal}Sizes.csv'
  output:
    'Plots/{animal}SizeBox.png'
  script:
    'R/Make-BoxPlot.R'
    
rule make_barplot:
  input:
    'Data/{animal}Sizes.csv'
  output:
    'Plots/{animal}SizeBar.png'
  script:
    'R/Make-BarPlot.R'
    