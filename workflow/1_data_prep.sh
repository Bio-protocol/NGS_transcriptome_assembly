# Download SRA data 
~/soft/sratoolkit.2.11.1-mac64/bin/prefetch SRR5645583 
# convert to fastq 
~/soft/sratoolkit.2.11.1-mac64/bin/fastq-dump --split-3 SRR5645583/SRR5645583.sra 
# move fastq to input folder
mv SRR5645583/SRR5645583*fastq input


# build index for reference genome
bwa index input/Vunguiculata_540_v1.0.fa 
