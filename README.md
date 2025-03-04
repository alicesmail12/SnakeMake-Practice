# Snakemake
Snakemake is a management system that helps develop reproducible workflows using lots of different software. For example, input files may be run through bash commands, Python code or external Python/R scripts - snakemake helps bring all of this together in a single file that schedules each step of the workflow. As well as improving workflow management, Snakemake also aids parallelisation when different files are subjected to the same workflow.

# Using Wildcards in R via Snakemake

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

# Snakemake Practice
Very simple workflow to practice using Snakemake on a HPC. Involves the generation and visualisation of 2 datasets using snakemake wildcards and the same R scripts.

***RunSnakemake Bash File***

Loads snakemake and runs the `Snakefile` on a slurm based HPC.

***Snakefile***

The `Snakefile` contains four rules: 
- `get_data` which generates the data in `/Data` using `R/Make-Data.R`
- `make_boxplot` and `make_barplot` which generate the plots in `/Plots` using `R/Make-BoxPlot.R` and `R/Make-BarPlot.R`
- the `all` rule defines the target output files of the snakemake workflow

***Log File***

`Snakemake.out` is the output file from running this workflow on a HPC using slurm.

***DAG***

`Plots/dag.svg` is a visualisation of the DAG from this workflow.

