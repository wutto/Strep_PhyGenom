#[Step1] create ufcg profile
cd ./example #go to example directory

##Creating ubcg profile
java -jar UBCG2.jar -ucg_dir ucg -i Streptomyces_scabiei_WSLK1-1.fasta -label "WSLK1-1" -acc "WSLK1-1" -taxon_name "Streptomyces_scabiei" -strain_name "WSLK1-1" -hmm hmm/ubcg_v2.hmm
java -jar UBCG2.jar -ucg_dir ucg -i Streptomyces_scabiei_WSLK1-9.fasta -label "WSLK1-9" -acc "WSLK1-9" -taxon_name "Streptomyces_scabiei" -strain_name "WSLK1-9" -hmm hmm/ubcg_v2.hmm
java -jar UBCG2.jar -ucg_dir ucg -i Streptomyces_scabiei_WSLK1-11.fasta -label "WSLK1-11" -acc "WSLK1-11" -taxon_name "Streptomyces_scabiei" -strain_name "WSLK1-11" -hmm hmm/ubcg_v2.hmm
java -jar UBCG2.jar -ucg_dir ucg -i Streptomyces_scabiei_WSLK1-12.fasta -label "WSLK1-12" -acc "WSLK1-12" -taxon_name "Streptomyces_scabiei" -strain_name "WSLK1-12" -hmm hmm/ubcg_v2.hmm

##Then copy all output *.ucg in to the same folder
##[Step2] create phylogenetic tree from core genes

java -jar UBCGtree.jar align -ucg_dir ucg -run_id Streptomyces_scabiei -leaf label


