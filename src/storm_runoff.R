#' Predict Stormwater Runoff based on impervious fraction of watershed
#' and Watershed area
#' @param I_a <- The fraction of the watershed that is impervious(unitless)
#' @param area <- Area of watershed(acres)
#'
#' @return Runoff Volume as a numeric (ft^3)
#' @export
#'
#' @examples
predict_runoff<- function(I_a, area) {
  runoff_coeff <- 0.05 + (0.9 * I_a)
  # Assuming constant of 1 for Runoff Depth
  runoff_depth <- 1
  runoff_vol <- 3630 * runoff_coeff * runoff_depth * area
  return(runoff_vol)
}

