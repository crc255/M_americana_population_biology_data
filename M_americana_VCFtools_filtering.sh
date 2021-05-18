#VCF filtering parameters for m_americana
#remove indiv >40% missing data (preformed in tassel before filtering)
#set gentypes with <5X coverage to missing
#MAF >0.05
#10 < mean site depth < 50
#missing data <20%
#remove indels

/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_americana_paper_snp/2_2_21_work/m_americana_remove_indiv_only.vcf \
--minDP 5 \
--maf 0.05 \
--min-meanDP 10 \
--max-meanDP 50 \
--max-missing 0.8 \
--remove-indels \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_americana_paper_snp/2_2_21_work/m_americana_vcftools_full_filt \
--recode

#Inbetween these steps, Tassel was used to inspect new data set and remove individuals that have >40% missing data

#VCF recoding for -012 format for m_americana

/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_americana_paper_snp/2_2_21_work/m_americana_all_no_tech_no_years.vcf \
--012 \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_americana_paper_snp/2_2_21_work/m_americana_2017_no_year


#Creat missing data per individual file to slect genotypes with least amount of missing data
/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_americana_paper_snp/2_2_21_work/m_americana_2015_alone/m_americana_2015_no_technical.vcf \
--missing-indv \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_americana_paper_snp/2_2_21_work/m_americana_2015_alone/m_americana_2015

#VCF filtering parameters for m_paradoxa
#remove indiv >40% missing data (preformed in tassel before filtering)
#set gentypes with <5X coverage to missing
#MAF >0.05
#10 < mean site depth < 50
#missing data <20%
#remove indels

/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/2_3_21/m_paradoxa_no_filt.vcf \
--minDP 5 \
--maf 0.05 \
--min-meanDP 10 \
--max-meanDP 50 \
--max-missing 0.8 \
--remove-indels \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/2_3_21/m_paradoxa_vcftools_full_filt \
--recode

/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/2_3_21/m_paradoxa_no_filt.vcf \
--max-missing 0.8 \
--maf 0.05 \
--remove-indels \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/2_3_21/m_paradoxa_vcftools_full_test \
--recode



/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/2_3_21/test_vcf.vcf \
--minDP 5 \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/2_3_21/test_vcf_one_filt.vcf \
--recode

/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/snp_crop_data/early_filt_paradoxa.vcf \
--minDP 5 \
--maf 0.05 \
--min-meanDP 10 \
--max-meanDP 50 \
--max-missing 0.8 \
--remove-indels \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/snp_crop_data/full_filt_paradoxa.vcf \
--recode

/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/snp_crop_data/full_filt_and_removeparadoxa.vcf \
--minDP 5 \
--maf 0.05 \
--min-meanDP 10 \
--max-meanDP 50 \
--max-missing 0.8 \
--remove-indels \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/snp_crop_data/full_filt_and_removeparadoxa.vcf \
--recode

/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/snp_crop_data/m_paradoxa_final_snpcrop.vcf \
--012 \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/snp_crop_data/m_paradoxa

#Inbetween these steps, Tassel was used to inspect new data set and remove individuals that have >40% missing data

#VCF recoding for -012 format for m_paradoxa

/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/2_3_21/m_paradoxa_final_tassel.vcf \
--012 \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/2_3_21/m_paradoxa


#Creat missing data per individual file to slect genotypes with least amount of missing data
/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/2_3_21/m_paradoxa_vcftools_full_filt_and_remove.vcf \
--missing-indv \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_paradoxa_paper_snp/2_3_21/m_paradoxa


#VCF recoding for -012 format for m_americana for only 2015

/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_americana_paper_snp/2_2_21_work/m_americana_2017_alone/M_americana_2017_full_filt.vcf \
--012 \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_americana_paper_snp/2_2_21_work/m_americana_2017_alone/m_americana_2017

#Creat missing data per individual file to slect genotypes with least amount of missing data
/mnt/c/Users/super/Documents/software/vcftools/src/cpp/vcftools \
--vcf /mnt/c/Users/super/Documents/gbs_pop_work/m_americana_paper_snp/2_2_21_work/m_americana_2017_alone/M_americana_2017_full_filt.vcf \
--missing-indv \
--out /mnt/c/Users/super/Documents/gbs_pop_work/m_americana_paper_snp/2_2_21_work/m_americana_2017_alone/m_americana_2017_missing