
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pkgas

<!-- badges: start -->

<!-- badges: end -->

Get objects from packages via abbreviations of packages and the $
operator. The `%as%` operatoraAbbreviates a package.

## Installation

``` r
remotes::install_github("atusy/pkgas")
```

## Example

``` r
library(pkgas)

# Abbreviate a package
graphics %as% gr

# Get plot function from graphics package
# The result is same as `graphics::plot`
gr$plot
#> function (x, y, ...) 
#> UseMethod("plot")
#> <bytecode: 0x557e8fae0fb0>
#> <environment: namespace:graphics>
```

``` r
dplyr %as% dp
dp$mutate.tbl_df
#> function (.data, ...) 
#> {
#>     dots <- enquos(..., .named = TRUE)
#>     mutate_impl(.data, dots, caller_env())
#> }
#> <bytecode: 0x557e90da5190>
#> <environment: namespace:dplyr>
```
