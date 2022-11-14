#' Calculate the mass of a chemical substance required to make a solution of a given molarity and volume
#'
#' @description Calculates the mass of a substance required for a solution of the given molarity and volume.
#'
#' @param substance The common name of the chemical compound or substance
#' @examples
#' "ammonium"
#'
#' @param mass The intended concentration
#'
#' @param conc_u Units for concentration, select from "M", "mM", "uM", "nM", "pM", "fM", with default set to M
#'
#' @param vol The solution volume
#'
#' @param vol_u Units for volume, select from "L", "mL", and "uL", with default set to L
#'
#' @return The required mass in grams.
#'
#' @import webchem
#'
#' @export

calc_mass_req <- function(substance, conc, conc_u = "M", vol, vol_u = "L"){

  if (conc_u=="mM"){
    conc <- conc / 1000
  }
  else if (conc_u=="uM"){
    conc <- conc / 1000000
  }
  else if (conc_u=="nM"){
    conc <- conc / 1000000000
  }
  else if (conc_u=="pM"){
    conc <- conc / 1000000000000
  }
  else if (conc_u=="fM"){
    conc <- conc / 1000000000000000
  }
  else if (conc_u != "" && conc_u != "M" && conc_u != "mM" && conc_u != "uM" && conc_u != "nM"){
    stop("Acceptable units are M, mM, uM and nM")
  }

  if (vol_u=="ml"){
    vol <- vol / 1000
  }
  else if (vol_u=="ul"){
    vol <- vol / 1000000
  }
  else if (vol_u != "" && vol_u != "mL" && vol_u != "uL"){
    stop("Acceptable units are L, mL and uL")
  }

  ccid <- get_cid(substance)[2]
  mw <- pc_prop(as.numeric(ccid), properties="MolecularWeight")[2]
  mass_req <- (conc * vol * as.numeric(mw))
  print(paste(mass_req, "grams", sep=" "))

}
