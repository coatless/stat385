#' Valid folder contents
#' @inheritParams check_hw
#' @export
#' @examples
#' # Valid
#' valid_hw_rmd_file("hw00-netid.Rmd")
#'
#' # Not valid
#' valid_hw_rmd_file("hw00-netid.Rmd")
valid_hw_rmd_file = function(name, folder) {
  res = verify_hw_name(name) && file.exists(file.path(folder, name))
  create_valid_obj(res, class = "valid_hw_rmd_file")
}

#' @export
format.valid_hw_rmd_file = function(x, ...) {
  paste0(crayon::bold("Valid HW Rmd File: "), good_or_bad(x[[1]]), "\n")
}

#' @export
print.valid_hw_rmd_file = function(x, ...) {
  cat(format(x, ...))
  invisible(x)
}

