# R/zoid_main.R

#' Gera mapas temáticos principais
#'
#' @export
gerar_mapas_principais <- function() {
  # Dados já estão disponíveis via usethis::use_data()
  data("uniao_map")

  # Mapa de expectativa de vida
  mapa_expectativa <- ggplot2::ggplot(uniao_map) +
    geom_sf(aes(fill = expecvida)) +
    # ... resto do código gráfico

    return(mapa_expectativa)
}
