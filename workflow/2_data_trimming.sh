java -jar ~/soft/Trimmomatic-0.39/trimmomatic-0.39.jar \
  PE -threads 30 \
  input/SRR5645583_1.fastq input/SRR5645583_2.fastq \
  SRR5645583_1_trimmed.fastq SRR5645583_1_unparied.fastq \
  SRR5645583_2_trimmed.fastq SRR5645583_2_unparied.fastq \
  ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36
