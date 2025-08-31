# ONT Lambda DNA Analysis

## Objective
End-to-end analysis of Lambda phage ONT sequencing data, including QC, trimming, alignment, and coverage analysis.

## Repo Structure
- `scripts/` : Analysis scripts (bash, Python)
- `results/` : Example output files (small files only)
- `ont_env.yaml` : Conda environment for reproducing workflow

## Installation

### Option 1: Use Conda Environment 
```bash
conda env create -f ont_env.yaml
conda activate ONTlambda
```
### Option 2: Install Tools Individually via Conda
```bash
conda install -c bioconda fastqc
conda install -c bioconda chopper
conda install -c bioconda minimap2
conda install -c bioconda samtools
conda install -c conda-forge matplotlib
```
Usage

1. Run QC on raw reads:

```bash
scripts/01_QC.sh
```

2. Trim reads:

```bash 
scripts/02_TRIMMING.sh
```

3. Align reads to reference genome:

```bash
scripts/03_ALIGNMENT.sh
```

4. Generate coverage plots:

```python
scripts/04_COVERAGE_DEPTH.py
```
