#!/bin/bash

PATH=$PATH:/shared_resource/NGS_analysis/trim_galore_zip
adapter_seq= CAAGCAGAAGACGGCATACGAGATCGTGATGTGACTGGAGTTC
home_dr=/shares/shamim_share

RNASeq_dir=${home_dir}/RNAseq/raw_data
output_dir=${home_dr}/RNAseq/data_trimmed
cd $RNASeq_dir
trim_galore -q 20 -a ${adapter_seq} --path_to_cutadapt /usr/bin/cutadapt  --stringency 5 --length 50 --clip_R1 13 -o ${output_dir} *.fastq

echo "Trimming Finished"
date

