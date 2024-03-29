#' *Bombus vosnesenskii* colony growth and estimated floral resources
#'
#' This is a subset of the data from Crone and Williams, 2016.  *Bombus
#' vosnesenskii* colonies were placed in sites in a mixed agricultural--natural
#' area in California, USA and weighed weekly.
#'
#' @format A data frame with 178 rows and 10 columns
#' \describe{
#'   \item{site}{The site ID}
#'   \item{colony}{The colony ID}
#'   \item{wild}{The proportion of the habitat for that site classified as wild using GIS}
#'   \item{habitat}{The habitat type. Either wild (W), organic agriculture (O),
#'   or conventional agriculture (C)}
#'   \item{date}{The calendar date the measurements were taken on}
#'   \item{week}{Number of weeks since the initial mass was taken}
#'   \item{mass}{Colony mass, in grams}
#'   \item{d.mass}{Difference in mass from the smallest mass for each colony, in grams}
#'   \item{floral_resources}{Floral density in millions of flowers within a 2km
#'   radius around the colony, weighted as a function of distance from colony}
#'   \item{cum_floral}{Cumulative floral resources from the start of the study}
#' }
#' @details Floral resources (*e*) are weighted using the equation *w* =
#'   *e*^(*-D/a*) where *D* is the distance in meters between the resources and
#'   the colony and *a* is the typical flight distance for the species. This is
#'   described in further detail in Williams et al. 2012.
#' @references
#' Crone, E. E., and Williams, N. M. (2016). Bumble bee colony dynamics:
#' quantifying the importance of land use and floral resources for colony growth
#' and queen production. Ecol. Lett. 19, 460–468. doi:10.1111/ele.12581.
#'
#' Williams, N. M., Regetz, J., and Kremen, C. (2012). Landscape-scale resources
#' promote colony growth but not reproductive performance of bumble bees.
#' Ecology 93, 1049–1058. doi:10.1890/11-1006.1.
#'
"bombus"

#' Simulated colony growth data for internal tests
#'
#' Simulated data including two colonies (6 and 7) that should always cause errors for `bumbl()`
#'
#' @details
#' Colonies 1-5 are generated with `sim_colony()` using the following parameters:
#'
#'  | colony|  tau| n0| lambda| delta|
#'  |------:|----:|--:|------:|-----:|
#'  |      1| 11.0| 30|   1.42|  0.30|
#'  |      2| 11.5| 24|   1.35|  0.31|
#'  |      3|  9.0| 49|   1.40|  0.29|
#'  |      4| 12.0| 37|   1.34|  0.48|
#'  |      5| 10.6| 29|   1.37|  0.32|
#'
#'
#'
#' Colonies 6 and 7 are generated manually.  Colony 6 contains negative numbers
#' and should result in the warning "Warning, cannot find valid starting values:
#' please specify some for colonyID '6' Omitting from results."  Colony 7 has
#' all the data pushed up to week 25 and therefore should result in a
#' convergence error when searching for the optimal switchpoint and the warning,
#' "Warning: search for optimal switchpoint did not converge for colonyID '6'.
#' Omitting from results."
#'
"test_df"
