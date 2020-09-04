
<!-- README.md is generated from README.Rmd. Please edit that file -->

# importas

<!-- badges: start -->

[![R build
status](https://github.com/atusy/importas/workflows/R-CMD-check/badge.svg)](https://github.com/atusy/importas)
[![Codecov test
coverage](https://codecov.io/gh/atusy/importas/branch/master/graph/badge.svg)](https://codecov.io/gh/atusy/importas?branch=master)
[![Netlify
Status](https://api.netlify.com/api/v1/badges/8604d4c3-52cf-4be2-b434-ef08bc394150/deploy-status)](https://app.netlify.com/sites/importas/deploys)
<!-- badges: end -->

Get objects from packages via aliases of packages and the $ operator.
The `%as%` infix operator works in the way similar to Python’s `Import
spam as ham`

## Installation

``` r
remotes::install_github("atusy/importas")
```

## Example

``` r
library(importas)

# Define an alias of a package, 
# and access the object from the package via the alias
graphics %as% gr
gr$plot
#> function (x, y, ...) 
#> UseMethod("plot")
#> <bytecode: 0x55ab7a951bc8>
#> <environment: namespace:base>

# A more R-like syntax is
gr <- package(graphics)

# Define aliases at once
importas(ut = utils, st = stats)
ut$str
#> function (object, ...) 
#> UseMethod("str")
#> <bytecode: 0x55ab7b075ae0>
#> <environment: namespace:utils>
st$median
#> function (x, na.rm = FALSE, ...) 
#> UseMethod("median")
#> <bytecode: 0x55ab7bb5b920>
#> <environment: namespace:stats>
```
