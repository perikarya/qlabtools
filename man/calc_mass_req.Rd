% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/solution_molarity_calc.R
\name{calc_mass_req}
\alias{calc_mass_req}
\title{Calculate the mass of a chemical substance required to make a solution of a given molarity and volume}
\usage{
calc_mass_req(substance, conc, conc_u = "M", vol, vol_u = "L")
}
\arguments{
\item{substance}{The common name of the chemical compound or substance}

\item{conc_u}{Units for concentration, select from "M", "mM", "uM", "nM", "pM", "fM", with default set to M}

\item{vol}{The solution volume}

\item{vol_u}{Units for volume, select from "L", "mL", and "uL", with default set to L}

\item{mass}{The intended concentration}
}
\value{
The required mass in grams.
}
\description{
Calculates the mass of a substance required for a solution of the given molarity and volume.
}
\examples{
"ammonium"

}
