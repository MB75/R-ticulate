#' Standard error
#'
#' @description
#' This function computes the standard error of the values in \code{x}. If \code{na.rm} is \code{TRUE} then missing values are removed before computation proceeds.
#'
#' @param x a numeric vector
#' @param na.rm logical. If \code{TRUE}, then missing values are removed.
#'
#' @return The standard error of the mean.
#' @export
#'
#' @examples ## Usage with and without NAs
#' se(c(1, 2, 5, 7))
#' se(c(1, 2, 5, NA, 7))
#' se(c(1, 2, 5, NA, 7), na.rm = TRUE)

se <- function(x, na.rm = FALSE)
{
  if(na.rm == TRUE)
  {
    sqrt(var(x, na.rm = T)/length(na.omit(x)))
  }
  else
  {
    sqrt(var(x)/length(x))
  }
}
