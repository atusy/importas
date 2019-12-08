
<!-- README.md is generated from README.Rmd. Please edit that file -->

# importas

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/atusy/importas.svg?branch=master)](https://travis-ci.org/atusy/importas)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/atusy/importas?branch=master&svg=true)](https://ci.appveyor.com/project/atusy/importas)
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
#> <bytecode: 0x562979375fb0>
#> <environment: namespace:graphics>

# Define aliases at once
importas(ut = utils, st = stats)
ut$str
#> function (object, ...) 
#> UseMethod("str")
#> <bytecode: 0x562978844a88>
#> <environment: namespace:utils>
st$median
#> function (x, na.rm = FALSE, ...) 
#> UseMethod("median")
#> <bytecode: 0x5629792f4e28>
#> <environment: namespace:stats>
```
