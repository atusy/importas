#' Construct an importas class object
#'
#' @param pkg A package's name
#' @noRd
construct_importas <- function(pkg) {
  exports <- getNamespaceExports(pkg)
  structure(
    setNames(as.list(exports), exports),
    class = c("importas", "list"),
    package = pkg
  )
}