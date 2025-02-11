library(usethis)

usethis::use_gpl3_license()
usethis::use_r("gerar_mapa.R")
usethis::use_r("utilidade")
usethis::use_r("data")  # Na pasta data-raw/
usethis::use_data_raw()

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
usethis::use_github()
devtools::load_all()




usethis::use_git()
devtools::load_all()
devtools::check()
devtools::install()
devtools::document()
usethis::use_github()
usethis::use_readme_rmd()
devtools::build_readme()



