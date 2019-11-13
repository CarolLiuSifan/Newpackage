#' The function prints emoji before dataframe
#' @param x a dataframe
#' @param ... aurgument passes to \code{\link{print}}
#' @export
print_emoji <- function(x, ...){
  UseMethod("print_emoji")
}

#' @export
#' @rdname print_emoji
#' @examples
#' print_emoji(mtcars)
#' @importFrom emo ji
print_emoji.data.frame <- function(x, ...){
  cat(ji("partying_face"),
      crayon::blue("Good Job!"),
      ji("partying_face"), "\n",
      crayon::bgCyan("Here is your data frame:"), "\n")
  print.data.frame(x, ...)
}
