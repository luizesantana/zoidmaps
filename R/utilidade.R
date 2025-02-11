#' Carrega dados de municípios do IBGE
#'
#' @param ano Ano dos dados (padrão: 2010)
#' @return Objeto sf com shapes municipais
#' @export
carregar_municipios <- function(ano = 2010) {
  geobr::read_municipality(year = ano)
}
