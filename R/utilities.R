bind_hw_netid = function(hw_name, netid) {
  paste0(hw_name, "-", netid)
}

#' @importFrom crayon red green
#' @importFrom clisymbols symbol
good_or_bad = function(x) {
  if (isTRUE(x)) {
    # display green checkmark
    crayon::green(clisymbols::symbol$tick)
  } else {
    # display red x
    crayon::red(clisymbols::symbol$cross)
  }
}
