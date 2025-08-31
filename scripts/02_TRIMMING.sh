
#!/bin/bash
# Input and output directories
INPUT_DIR="/mnt/c/Users/divya/Downloads/ont/data"
OUTPUT_DIR="/mnt/c/Users/divya/Downloads/ont/results/trimmed"

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Loop over all fastq files in the input directory
for file in "$INPUT_DIR"/*.fastq; do
    # Extract the filename without the extension
    filename=$(basename "$file" .fastq)

    # Trim reads using Chopper: headcrop 20 bases, quality filter 10
    chopper --headcrop 30 --quality 10 -i "$file" >  "$OUTPUT_DIR/${filename}_trimmed.fastq"
done
