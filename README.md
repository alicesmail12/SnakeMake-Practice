# Snakemake Practice
Very simple workflow to practice using Snakemake on a HPC. Involves the generation and visualisation of 2 datasets using snakemake wildcards and the same R scripts.

***RunSnakemake Bash File***

Loads snakemake and runs the `Snakefile` on a slurm based HPC.

***Snakefile***

The `Snakefile` contains four rules: 
- `get_data` which generates the data in `/Data` using `R/Make-Data.R`
- `make_boxplot` and `make_barplot` which generate the plots in `/Plots` using `R/Make-BoxPlot.R` and `R/Make-BarPlot.R`
- the `all` rule defines the target output files of the snakemake workflow

***Snakemake.out***

Output file from running this workflow on a HPC using slurm.

## Using Wildcards in R via Snakemake

In the Snakefile define an `all` rule to get the final target output files (File1.out, File2.out and File3.out here), and in subsequent rules use the wildcards but without `expand()`.
```
rule all:
    input:
        expand('Data/{wildcard}.out', wildcard=['File1', 'File2', 'File3'])

rule rule1:
  output:
    'Data/{wildcard}.out'
  script:
    'R/Do-Something.R'
```
Inside the R file the input and output files using wildcards can be accessed from `snakemake`.
```
paste(snakemake@input)
paste(snakemake@output)
```

