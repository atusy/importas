#' @export
`$.importas` <- function(x, name) {
  do.call(
    `::`,
    list(
      pkg = attr(x, "package", exact = TRUE),
      name = substitute(name)
    )
  )
}