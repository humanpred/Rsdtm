# Rsdtm

<!-- badges: start -->
[![R-CMD-check](https://github.com/humanpred/Rsdtm/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/humanpred/Rsdtm/actions/workflows/R-CMD-check.yaml)
[![Codecov test coverage](https://codecov.io/gh/humanpred/Rsdtm/graph/badge.svg)](https://app.codecov.io/gh/humanpred/Rsdtm)
[![CRAN status](https://www.r-pkg.org/badges/version/Rsdtm)](https://CRAN.R-project.org/package=Rsdtm)
<!-- badges: end -->

The goal of Rsdtm is to simplify SDTM data management and file creation for R.

## Installation

### GitHub

To install the development version, run the following:

``` r
devtools::install_github("humanpred/Rsdtm")
```

### CRAN (someday)

When it is on CRAN (someday), you can install the released version of Rsdtm from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("Rsdtm")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(Rsdtm)
d <- import_sdtm("/directory/to/data")
```
