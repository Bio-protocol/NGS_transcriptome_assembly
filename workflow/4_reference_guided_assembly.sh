# align reads to reference genome
bwa mem -t 24 Vunguiculata_540_v1.0.fa \
 SRR5645583_1_trimmed.fastq SRR5645583_2_trimmed.fastq  | /usr/bin/samtools view -bS - > res_SRR5645583_BWA_aligned.bam

# stringtie assembly
~/soft/stringtie-2.1.6.Linux_x86_64/stringtie \ 	res_SRR5645583_BWA_aligned.bam \ 	-o ./res_SRR5645583_stringtie.gtf

# trinity assembly
~/soft/trinityrnaseq-Trinity-v2.3.2/Trinity \  --genome_guided_bam res_SRR5645583_BWA_aligned.bam 
