#' Check homework structure
#'
#' Tests to see if the homework is structured properly.
#'
#' @param hw_id The name of the homework assignment, e.g. hw00
#' @param netid An alpha numeric character string not exceeding 9 letters.
#' @return A `check_hw` object that contains a list of `TRUE` and `FALSE`
#' for each condition being observed.
#' @examples
#' # Good
#' check_hw("hw00", "toad1")
#'
#' # Bad
#' check_hw("hw00", "toad!!1")
#' @export
check_hw = function(hw_id, netid, directory = ".") {

  sub_file_name = bind_hw_netid(hw_id, netid)

  create_valid_obj(
    list(valid_hw_folder(hw_id),
      valid_hw_rmd_file(sub_file_name, hw_id)
    ),
    "check_hw"
  )
}

#' @importFrom cli rule
#' @export
print.check_hw = function(x, ...) {
  cat(cli::rule("HW Check"), "\n", sep = "")
  for (i in x) {
    print(i)
  }
  invisible(x)
}
