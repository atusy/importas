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
  invisible(assign_alias(deparse(substitute(nm)), deparse(substitute(pkg))))
}