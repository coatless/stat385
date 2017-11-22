#' Valid folder contents
#' @inheritParams check_hw
#' @export
#' @examples
#' # Valid
#' valid_hw_folder("hw00")
#'
#' # Not valid
#' valid_hw_folder("toad")
valid_hw_folder = function(name) {
  res = verify_hw_folder(name) && dir.exists(name)
  create_valid_obj(res, class = "valid_hw_folder")
}

#' @export
format.valid_hw_folder = function(x, ...) {
  paste0(crayon::bold("Valid HW Folder: "), good_or_bad(x[[1]]), "\n")
}

#' @export
print.valid_hw_folder = function(x, ...) {
  cat(format(x, ...))
  invisible(x)
}
