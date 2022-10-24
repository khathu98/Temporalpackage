devtools::install_github("khathu98/Temporalpackage")

lapply(c("magrittr","stringr","dplyr","tibble","lubridate", "Temporalpackage"), library, character.only =T)

Temporal_examples_path <- system.file("extdata", package = "Temporalpackage")

stmfiles <- list.files(path = Temporal_examples_path, pattern = ".stm", full.names = T, ignore.case = TRUE)
stmfiles[1]

