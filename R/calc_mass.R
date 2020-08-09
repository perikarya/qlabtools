#' Calculate the mass of a substance containing a specified number of moles.
#'
#' @description Calculates the mass of a specified substance in grams that will contain the specified number of moles.
#'
#' @param substance Enter the common name of the chemical compound or substance.
#' @examples
#' "ammonium"
#'
#' @param val The number of moles.
#'
#' @param u The unit, select from "mol", "umol", "pmol", "fmol" with default set to moles.
#'
#' @return The mass of the substance containing the specified number of moles, in grams.
#'
#' @import webchem
#'
#' @export

calc_mass <- function(substance, val, u="mol"){
  requireNamespace(webchem)
  if (u=="mmol"){
    val <- val / 1000
  }
  else if (u=="umol"){
    val <- val / 1000000
  }
  else if (u=="pmol"){
    val <- val / 1000000000
  }
  else if (u=="fmol"){
    val <- val / 1000000000000
  }
  else if (u != "" && u != "mol" && u != "mmol" && u != "umol" && u != "pmol" && u != "fmol"){
    stop("Acceptable units are mol, mmol, umol, pmol and fmol.")
  }
  ccid <- get_cid(substance)[2]
  mw <- pc_prop(as.numeric(ccid), properties="MolecularWeight")[2]
  print(paste(as.numeric(val * mw), "grams", sep=" "))
}
