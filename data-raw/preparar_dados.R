# data-raw/preparar_dados.R

# Carregar pacotes necessários
library(readr)
library(dplyr)
library(geobr)
library(usethis)

# 1. Carregar e processar dados tabulares
Base_grupo5 <- read_csv("data-raw/Base_grupo5.csv") %>%
  mutate(
    code_muni = as.character(codIBGE),
    ano = as.factor(ano)
  )

# 2. Carregar e processar shapes municipais
municipios_IBGE <- read_municipality(year = 2010) %>%
  mutate(code_muni = as.character(code_muni)) %>%
  select(code_muni, name_muni, geom)

# 3. Unir dados e criar objeto espacial
uniao_map <- Base_grupo5 %>%
  left_join(municipios_IBGE, by = "code_muni") %>%
  sf::st_as_sf()

# 4. Salvar todos os objetos
usethis::use_data(
  Base_grupo5,
  uniao_map,
  municipios_IBGE,
  overwrite = TRUE
)
