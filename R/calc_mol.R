#' Calculate the number of moles in a specified amount of a chemical substance.
#'
#' @description Calculates the number of moles in a specified amount of a chemical substance.
#'
#' @param substance Enter the common name of the chemical compound or substance.
#' @examples
#' "ammonium"
#'
#' @param mass The mass.
#'
#' @param u The unit, select from "g", "ug", "pg", "fg" with default set to grams
#'
#' @return The number of moles of substance in the specified mass.
#'
#' @import webchem
#'
#' @export

calc_mol <- function(substance, mass, u="g"){
  requireNamespace(webchem)
  if (u=="mg"){
    mass <- mass / 1000
  }
  else if (u=="ug"){
    mass <- mass / 1000000
  }
  else if (u=="pg"){
    mass <- mass / 1000000000
  }
  else if (u=="fg"){
    mass <- mass / 1000000000000
  }
  else if (u != "" && u != "g" && u != "mg" && u != "ug" && u != "pg" && u != "fg"){
    stop("Acceptable units are g, mg, ug, pg and fg.")
  }
  ccid <- get_cid(substance)[2]
  mw <- pc_prop(as.numeric(ccid), properties="MolecularWeight")[2]
  print(paste("Number of moles:", as.numeric(mass / mw)), sep=" ")
}
