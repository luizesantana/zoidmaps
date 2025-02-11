#' Cria mapa temático
#'
#' @param dados Dados espaciais (sf)
#' @param variavel String com o nome da variável a mapear
#' @param titulo Título do mapa
#' @param paleta Opção de paleta do viridis
#' @importFrom sf st_as_sf st_geometry
#' @importFrom ggplot2 ggplot geom_sf aes
#' @importFrom rlang sym
#' @export
criar_mapa <- function(dados, variavel, titulo, paleta = "D") {
  variavel_sym <- rlang::sym(variavel)  # Converte string para símbolo

  ggplot2::ggplot(data = dados) +
    # Camada de fundo com todos os municípios
    ggplot2::geom_sf(
      data = municipios_IBGE,
      fill = "#a4a4a4",
      color = "#8e8e8e",
      size = 0.15
    ) +
    ggplot2::geom_sf(aes(fill = !!variavel_sym), color = "transparent", size = 0.1) +
    ggplot2::scale_fill_viridis_c(
      option = paleta,
      na.value = "gray90",
      labels = scales::comma
    ) +
    ggplot2::facet_wrap(~ano) +
    ggplot2::labs(title = titulo) +
    ggplot2::theme_minimal()
}
