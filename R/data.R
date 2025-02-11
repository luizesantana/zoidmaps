#' Dados Socioeconômicos e Climáticos Municipais
#'
#' Dataset longitudinal com indicadores municipais brasileiros (1990-2010)
#'
#' @format Um tibble com 25 variáveis e observações para 304 municípios:
#' \describe{
#'   \item{codIBGE}{Código IBGE do município (numérico)}
#'   \item{municipio}{Nome do município (character)}
#'   \item{ano}{Ano da observação (fator: 1990, 2000, 2010)}
#'   \item{UF}{Sigla da Unidade Federativa (character)}
#'   \item{expecvida}{Expectativa de vida ao nascer (em anos)}
#'   \item{AmpT}{Amplitude térmica média anual (°C)}
#'   \item{Tmax}{Temperatura máxima média (°C)}
#'   \item{Tmin}{Temperatura mínima média (°C)}
#'   \item{homicidios}{Taxa de homicídios por 100 mil habitantes}
#'   \item{mortinf}{Taxa de mortalidade infantil por mil nascidos vivos}
#'   \item{acidtrans}{Taxa de mortalidade por acidentes de trânsito}
#'   \item{renda_pc}{Renda per capita média (R$)}
#'   \item{indgini}{Índice de Gini (0-1, desigualdade de renda)}
#'   \item{razao_renda}{Razão entre renda dos 20% mais ricos e 20% mais pobres}
#'   \item{IDHM}{Índice de Desenvolvimento Humano Municipal (0-1)}
#'   \item{lnexpecvida}{Logaritmo natural da expectativa de vida}
#'   \item{...}{Demais variáveis não listadas (ver nomes completos com `names()`)}
#' }
#' @note Dados compilados de fontes públicas (Atlas Brasil, INMET, etc.)
#' @details
#' Contém dados climáticos (temperaturas) e socioeconômicos para três décadas,
#' permitindo análises temporais e espaciais. Valores NA indicam dados não disponíveis
#' para determinado ano/município.
"Base_grupo5"

#' Dados municipais unificados
#'
#' Combinação de dados socioeconômicos e geometrias municipais
#' @format Um objeto sf (simple features) com:
#' \describe{
#'   \item{colunas}{Todas as variáveis de Base_grupo5}
#'   \item{geom}{Geometria dos municípios (polígonos)}
#' }
"uniao_map"
