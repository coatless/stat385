regex_hw_name = "hw[[:digit:]]{2}"
regex_netid   = "[[:alnum:]]{1,9}"

regex_bounds = function(x) {
  paste0("^", x , "$")
}

verify_hw_name = function(name) {
  grepl(regex_bounds(paste0(regex_hw_name, "-" , regex_netid , "\\.Rmd")), name)
}

verify_hw_output = function(name, output_types = c("html", "pdf")) {

  check_ext = function(output_ext, name) {
    grepl(regex_bounds(paste0(
      regex_hw_name, "-" , regex_netid , "\\.", output_ext
    )), name)
  }

  # Returns either 1 or 2 values
  # "html" "pdf"
  # TRUE    FALSE etc.
  sapply(
    output_types,
    FUN = check_ext,
    name
  )
}

verify_hw_folder = function(name) {
  grepl( regex_bounds(regex_hw_name) , name)
}
