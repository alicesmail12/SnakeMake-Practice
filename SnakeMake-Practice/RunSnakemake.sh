#!/bin/bash
#SBATCH --output=Snakemake.out

cd /mnt/nfs/home/c4064951/SnakeMake-Practice/

module load R
module load Graphviz
module load snakemake

snakemake -c1
snakemake -c1 --dag Plots/LizardSizeBox.png Plots/LizardSizeBar.png Plots/SnakeSizeBox.png Plots/SnakeSizeBar.png | dot -Tsvg > Plots/dag.svg