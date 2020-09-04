#' @export
`$.importas` <- function(x, name) {
  get(as.character(substitute(name)), envir = attr(x, "envir", exact = TRUE))
}
