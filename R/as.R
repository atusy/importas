#' @rdname importas
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
  pkg <- deparse(substitute(pkg))
  assign(deparse(substitute(nm)), construct_importas(pkg), parent.frame())
}