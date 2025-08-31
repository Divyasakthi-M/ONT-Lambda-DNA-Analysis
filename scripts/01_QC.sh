#!/bin/bash

# Input and output directories
INPUT_DIR="/mnt/c/Users/divya/Downloads/ont/data"
OUTPUT_DIR="/mnt/c/Users/divya/Downloads/ont/results/qc"

# Create output directory
mkdir  -p "$OUTPUT_DIR"

# Run FastQC
fastqc "$INPUT_DIR"/*.fastq -o "$OUTPUT_DIR"
