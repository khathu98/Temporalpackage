# Temporalpackage
This project is to read harvester .STM files


devtools::install_github("hbelbo/stanfordclassicr")
Then load stanfordclassicr and necessary pkgs

lapply(c("magrittr","stringr","dplyr","tibble","lubridate", "stanfordclassicr"), library, character.only =T) 
Demo: stanfordclassicr example files provided in the package

stanford_examples_path <- system.file("extdata", package = "stanfordclassicr")

drffiles <- list.files(path = stanford_examples_path, pattern = ".drf", full.names = T, ignore.case = TRUE)
drffiles[1:2]

ktrfiles <- list.files(path = stanford_examples_path, pattern = ".ktr", full.names = T, ignore.case = TRUE)
ktrfiles[1:2]

prifiles <- list.files(path = stanford_examples_path, pattern = ".pri", full.names = T, ignore.case = TRUE)
prifiles[1:2]

stmfiles <- list.files(path = stanford_examples_path, pattern = ".stm", full.names = T, ignore.case = TRUE)
stmfiles[1]

prdfiles <- list.files(path = stanford_examples_path, pattern = ".prd", full.names = T, ignore.case = TRUE)
prdfiles[1:2]
Demo: using the main functions to read the example files and organize the data in a list structure

drfdat <- read_drf_file(drffiles[1]) 

ktrdat <- read_ktr_file(ktrfiles[1])

pridat <- read_pri_file(prifiles[1])

prddat <- read_prd_file(prdfiles[1])

stemdat <- read_stm_file(stmfiles[1]) 
dplyr::glimpse(stemdat[[1]]) 
