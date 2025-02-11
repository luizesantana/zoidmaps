# R/utilidade.R

#' Carregar dados municipais atualizados
#'
#' @param ano Ano de referência para shapes
#' @export
carregar_dados_completos <- function(ano = 2010) {
  # Carrega dados internos
  data("Base_grupo5", "municipios_IBGE")

  # Atualiza geometria se necessário
  if(ano != 2010) {
    municipios <- geobr::read_municipality(year = ano) %>%
      mutate(code_muni = as.character(code_muni))
  } else {
    municipios <- municipios_IBGE
  }

  Base_grupo5 %>%
    left_join(municipios, by = "code_muni") %>%
    sf::st_as_sf()
}
