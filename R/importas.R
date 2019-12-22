#' Define alias(es) to package(s)
#'
#' `%as%` infix operator defines an alias to a package.
#' In order to define aliases for multiple packages at once, use `importas()`.
#'
#' @param ... Named arguments whose name is an alias to the value, i.e. package.
#' @param .envir An environment where to assign aliases.
#'
#' @examples
#'   importas(gr = graphics, st = stats)
#'   gr$plot
#'   st$median
#'
#' @importFrom rlang enexprs is_named
#' @export
importas <- function(..., .envir = parent.frame()) {
  dots <- rlang::enexprs(...)
  if (!rlang::is_named(dots)) stop("All arguments must be named.")
  Map(
    function(nm, pkg) assign(nm, construct_importas(pkg), .envir),
    nm = names(dots),
    pkg = as.character(dots)
  )
  invisible(NULL)
}