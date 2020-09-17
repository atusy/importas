#' Construct an importas class object
#'
#' @param pkg A package's name as a string
#' @noRd
construct_importas <- function(pkg) {
  exports <- sort(getNamespaceExports(pkg))
  structure(
    vector("list", length(exports)),
    names = exports,
    class = c("importas", "list"),
    package = pkg
  )
}

#' Import a package
#'
#' @param pkg A package's name
#'
#' @return An `importas`-class object. It is a list of `NULL`s whose names
#'   correspond to those of exported objects from a specified package.
#' @export
package <- function(pkg) {
  pkg <- substitute(pkg)
  construct_importas(pkg)
}
