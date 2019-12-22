#' Construct an importas class object
#'
#' @param pkg A package's name
#' @noRd
construct_importas <- function(pkg) {
  exports <- getNamespaceExports(pkg)
  structure(
    as.list(exports),
    names = exports,
    class = c("importas", "list"),
    package = pkg
  )
}