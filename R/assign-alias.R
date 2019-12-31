assign_alias <- function(nm, pkg) {
  value <- construct_importas(pkg)
  assign(x = nm, value = value, envir = as.environment("importas:alias"))
  value
}