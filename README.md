# Snakemake Practice
Very simple workflow to practice using Snakemake on a HPC. Involves the generation and visualisation of 2 datasets using snakemake wildcards and the same R scripts.

**RunSnakemake Bash File**

Loads snakemake and runs the Snakefile on a slurm based HPC.

**Snakefile**
The `Snakefile` contains three rules: 
- `get_data` which generates the data in `/Data` using `R/Make-Data.R`
- `make_boxplot` and `make_barplot` which generate the plots in `/Plots` using `R/Make-BoxPlot.R` and `R/Make-BarPlot.R`
- the `all` rule defines the target output files of the snakemake workflow

**Snakemake.out**
Output file from running this workflow on a HPC using slurm.
