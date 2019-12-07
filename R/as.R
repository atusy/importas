#' Abbreviate a package
#'
#' @param pkg A name of package
#' @param nm An abbreviated name of the package
#'
#' @examples
#'   graphics %as% gr
#'   gr$plot
#'
#' @aliases as
#' @export
`%as%` <- function(pkg, nm) {
  assign(
    deparse(substitute(nm)),
    getNamespace(deparse(substitute(pkg))),
    parent.frame()
  )
}