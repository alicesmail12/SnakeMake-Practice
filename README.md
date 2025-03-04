# Snakemake Practice
Very simple workflow to practice using Snakemake on a HPC. Involves the generation and visualisation of 2 datasets using snakemake wildcards and the same R scripts.

***RunSnakemake Bash File***

Loads snakemake and runs the Snakefile on a slurm based HPC.

***Snakefile***

The `Snakefile` contains four rules: 
- `get_data` which generates the data in `/Data` using `R/Make-Data.R`
- `make_boxplot` and `make_barplot` which generate the plots in `/Plots` using `R/Make-BoxPlot.R` and `R/Make-BarPlot.R`
- the `all` rule defines the target output files of the snakemake workflow

***Snakemake.out***

Output file from running this workflow on a HPC using slurm.

### Using Wildcards in R via Snakemake

In the Snakefile use:
```
expand({wildcard}.out, wildcard=['File1', 'File2', 'File3'])
*File1.out File2.out File3.out*
```
to get the final target output files

Then inside the R file, use:
```
paste(snakemake@input)
paste(snakemake@output)
```
to access the input and output wildcards.
