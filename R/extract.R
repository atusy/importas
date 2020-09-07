#' @export
`$.importas` <- function(x, name) {
  getExportedValue(attr(x, "package", exact = TRUE), substitute(name))
}
