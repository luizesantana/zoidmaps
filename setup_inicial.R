library(usethis)

usethis::use_gpl3_license()
usethis::use_r("gerar_mapa.R")
usethis::use_r("utilidade")

usethis::use_data_raw()

# Editar DESCRIPTION manualmente ou via:
usethis::edit_file("DESCRIPTION")

usethis::use_package("ggplot2")
usethis::use_package("geobr")
usethis::use_package("dplyr")
usethis::use_package("scales")
usethis::use_package("sf")
usethis::use_package("stringr")

################
usethis::use_git()
