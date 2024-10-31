#[Step1] create ufcg profile
cd ./example #go to example directory

##Creating ufcg profile
ufcg profile -t 16 -i Streptomyces_scabiei_WSLK1-1.fasta -o ./Streptomyces_scabiei_WSLK1-1-ufcgOut
ufcg profile -t 16 -i Streptomyces_scabiei_WSLK1-9.fasta -o ./Streptomyces_scabiei_WSLK1-9-ufcgOut
ufcg profile -t 16 -i Streptomyces_scabiei_WSLK1-11.fasta -o ./Streptomyces_scabiei_WSLK1-11-ufcgOut
ufcg profile -t 16 -i Streptomyces_scabiei_WSLK1-12.fasta -o ./Streptomyces_scabiei_WSLK1-12-ufcgOut

##Then copy all output *.ucg in to the same folder
##[Step2] create phylogenetic tree from core genes

ufcg tree -i ./ufcgOut -l label -o ./tree_construction -n Streptomyces_scabiei -t 16 -p fasttree
