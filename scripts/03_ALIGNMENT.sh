#!/bin/bash
INPUT_DIR="/mnt/c/Users/divya/Downloads/ont/results/trimmed"
REF="/mnt/c/Users/divya/Downloads/ont/data/lambda_reference.fasta"
ALIGN_DIR="/mnt/c/Users/divya/Downloads/ont/results/alignment"

mkdir -p "$ALIGN_DIR"

for file in "$INPUT_DIR"/*_trimmed.fastq; do
    filename=$(basename "$file" _trimmed.fastq)
    echo "Processing $filename"

    # Aligning reads to ref genome
    minimap2 -t 4 -ax map-ont "$REF" "$file" > "$ALIGN_DIR/${filename>
    # Convert SAM to BAM, sort, index
    samtools view -bS "$ALIGN_DIR/${filename}.sam" | samtools sort -o>    samtools index "$ALIGN_DIR/${filename}_sorted.bam"

    # Alignment statistics
    samtools flagstat "$ALIGN_DIR/${filename}_sorted.bam" > "$ALIGN_D>
    # Coverage depth
    samtools depth "$ALIGN_DIR/${filename}_sorted.bam" > "$ALIGN_DIR/>

    echo "$filename alignment done"
done

