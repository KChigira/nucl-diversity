#! /bin/sh

###For developmant. Please ignore.
#pip install -e .
#cd test


nucleodiver --fai test_ref.fasta.fai \
            --vcf Merged_filtered_variants.vcf \
            -n test01 --window 100000 --step 10000

#Light version
nucleodiver --fai test_ref.fasta.fai \
            --vcf Merged_filtered_variants.vcf \
            -n test02 --window 100000 --step 10000

calcpie --pie_values test01_pie_values.tsv \
        --list test01_list.tsv
