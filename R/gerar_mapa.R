#' Cria mapa temático
#'
#' @param dados Dados espaciais (sf)
#' @param variavel Variável a mapear
#' @param titulo Título do mapa
#' @param paleta Opção de paleta do viridis
#' s
#' @export
criar_mapa <- function(dados, variavel, titulo, paleta = "D") {
  ggplot2::ggplot(data = dados) +
    sf::geom_sf(
      data = municipios_IBGE,
      fill = "#a4a4a4",
      color = "#8e8e8e",
      size = 0.15
    ) +
    sf::geom_sf(aes(fill = {{variavel}}), color = "transparent", size = 0.1) +
    scale_fill_viridis_c(
      option = paleta,
      na.value = "gray90",
      labels = scales::comma
    ) +
    labs(title = titulo) +
    theme_minimal()
}
