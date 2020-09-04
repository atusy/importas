#' @rdname importas
#' @param pkg A name of package
#' @param nm An abbreviated name of the package
#'
#' @examples
#' graphics %as% gr
#' gr$plot
#' @export
`%as%` <- function(pkg, nm) {
  assign_alias(deparse(substitute(nm)), deparse(substitute(pkg)))
  invisible(NULL)
}
