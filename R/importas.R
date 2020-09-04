#' Define alias(es) to package(s)
#'
#' `%as%` infix operator defines an alias to a package.
#' In order to define aliases for multiple packages at once, use `importas()`.
#'
#' @param ... Named arguments whose name is an alias to the value, i.e. package.
#'
#' @examples
#'   importas(gr = graphics, st = stats)
#'   gr$plot
#'   st$median
#'
#' @importFrom rlang enexprs is_named
#' @export
importas <- function(...) {
  dots <- rlang::enexprs(...)
  if (!rlang::is_named(dots)) stop("All arguments must be named.")
  Map(assign_alias, nm = names(dots), pkg = as.character(dots))
  invisible(NULL)
}