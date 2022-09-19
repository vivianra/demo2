echo "#== SCRIPT STARTED"
awk 'NR % 2 == 0' sample.fastq | awk 'NR % 2 != 0' > sample_rseq.txt
awk 'NR % 2 == 0' sample_cutadapt.fastq | awk 'NR % 2 != 0' > sample_cutadapt_rseq.txt
echo "#== RETRIEVE READ SEQUENCE DONE"
sed 's/AGATCGGAAGAGC.*//' sample_rseq.txt > sample_rseq_CUT.txt
echo "#== CUT ADAPTER DONE"
diff sample_rseq_CUT.txt sample_cutadapt_rseq.txt
echo "#== SCRIPT DONE"
