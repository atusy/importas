#' Construct an importas class object
#'
#' @param pkg A package's name as a string
#' @noRd
construct_importas <- function(pkg) {
  exports <- getNamespaceExports(pkg)
  structure(
    vector("list", length(exports)),
    names = exports,
    class = c("importas", "list"),
    package = pkg
  )
}
