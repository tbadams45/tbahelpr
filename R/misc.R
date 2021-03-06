# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


#' Get all combinations of tibbles.
#'
#' @param ... a bunch of tibbles
#' @return A tibble which represents all combinations of the tibbles given
#' @examples
#' expand_grid_df(tibble(a = 1:3, b = 2:4), tibble(c = 5:3))
#' @export
expand_grid_df <- function(...) tibble::as.tibble(Reduce(function(...) merge(..., by=NULL), list(...)))
