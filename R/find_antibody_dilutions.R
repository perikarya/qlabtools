#' Retrieve the recommended dilutions per application type for a given antibody.
#'
#' @description Retrieves recommended dilutions for a given antibody from the vendor for all tested application types.
#'
#' @param catalogue_number Catalogue number of the antibody, entered as a number.
#' @examples
#' 31594
#'
#' @param type Type of antibody (primary or secondary).
#'
#'
#' @return Dataframe with listed applications tested by the vendor, and concentrations for each.
#'
#' @import rvest
#' @import qdap
#'
#' @export

find_dilutions_thermo <- function(catalogue_number, type) {

  url <- paste("https://www.thermofisher.com/antibody/", type, "/query/", as.character(catalogue_number), sep = "")

product_page <- read_html(url)

product_title <- product_page %>%
  html_nodes(".product-name") %>%
  html_text()

spec_table <- product_page %>%
  html_nodes(".product-detail-section.tested-app-section.new-tbl-design.table-spec") %>%
  html_table()

dilutions <- as.data.frame(spec_table[[1]][, 1:2])

dilutions$Applications <- strip(dilutions$Applications, c("(", ")"))

print(product_title)
print(dilutions, row.names = FALSE)

}

