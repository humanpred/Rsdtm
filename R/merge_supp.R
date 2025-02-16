#' Merge a supplementary dataset into a primary dataset
#'
#' This function is defunct. Use `metatools::combine_supp()` instead.
#'
#' @param ... Ignored
#' @export
merge_supp <- function(...) {
  lifecycle::deprecate_stop(when = "0.0.9000", what = "merge_supp()", with = "metatools::combine_supp()")
}
