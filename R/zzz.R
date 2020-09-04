.onLoad <- function(libname, pkgname) attach(NULL, name = "importas:alias")
.onUnload <- function(libname, pkgname) detach("importas:alias")
