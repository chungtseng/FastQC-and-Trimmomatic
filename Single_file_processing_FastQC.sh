#!/bin/bash

#Checking the quality of the sequencing library
#Dependencies:FastQC

#making output directory
mkdir /Shared_RNASeq/Raw_data/FastQC_files

#define the location of input and output directory for simplicity

output1=/Shared_RNASeq/Raw_data/FastQC_files
input1=/Shared_RNASeq/Raw_data/CGMMV_GCCAAT_rep1.fastq

fastqc -o ${output1} -f fastq ${input1}

echo "Done"
date
