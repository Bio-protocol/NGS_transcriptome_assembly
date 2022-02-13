# concatenate de novo assembly Trinity.fasta and genome-guided assembly Trinity.GG.fasta
cat trinity_out_dir/Trinity.fasta trinity_out_dir/Trinity-GG.fasta > Trinity_transcripts.fasta

# build a list of transcript accessions
~/soft/PASApipeline-pasa-v2.4.1/misc_utilities/accession_extractor.pl < trinity_out_dir/Trinity.fasta > tdn.accs

# run PASA 
~/soft/PASApipeline-pasa-v2.4.1/Launch_PASA_pipeline.pl \
       -c alignAssembly.config \
       -C -R \
       -g Vunguiculata_540_v1.0.fa  \
       -t Trinity_transcripts.fasta \
       --TDN tdn.accs \
       --trans_gtf res_SRR5645583_stringtie.gtf \
       --ALIGNERS blat

# generate the comprehensive transcriptome
~/soft/PASApipeline-pasa-v2.4.1/scripts/build_comprehensive_transcriptome.dbi \
            -c alignAssembly.config \
            -t Trinity_transcripts.fasta \
            --min_per_ID 95 \
            --min_per_aligned 30
