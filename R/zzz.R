.onLoad <- function(libname, pkgname) {
  do.call("attach", list(what = NULL, name = "importas:alias"))
}
.onUnload <- function(libname, pkgname) detach("importas:alias")
