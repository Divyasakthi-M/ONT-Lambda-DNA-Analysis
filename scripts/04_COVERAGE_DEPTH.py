import matplotlib.pyplot as plt

positions = []
depths = []

with open ('/mnt/c/Users/divya/Downloads/ont/results/alignment/Lambda>    for line in f:
        chrom, pos, depth = line.strip().split('\t')
        positions.append(int(pos))
        depths.append(int(depth))

plt.figure(figsize=(15,5))
plt.plot(positions, depths, color='blue', linewidth=0.5)
plt.title('Coverage Depth across Lambda genome')
plt.xlabel('Position (bp)')
plt.ylabel('Read Depth')
plt.grid(True)
plt.tight_layout()
plt.savefig('coverage_plot.png')
plt.show()
