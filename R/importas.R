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
#' @importFrom purrr imap
#' @export
importas <- function(..., .envir = parent.frame()) {
  pkgs <- lapply(rlang::enexprs(...), function(x) getNamespace(as.character(x)))
  if (!rlang::is_named(pkgs)) stop("All arguments must be named")
  purrr::imap(pkgs, ~ assign(.y, .x, .envir))
  invisible(NULL)
}