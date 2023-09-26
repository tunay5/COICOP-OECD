#' OECD Consumer Price Indice(s), CPI
#'
#' @param country The code of the country
#' @param class The COICOP classification code
#' @param start Beginning year
#' @param end End year
#' @param period Select the period of data (Annualy, Quarterly, Monthly)
#'
#' @return The code will return a CPI dataset according to the components (country, class, start, end, period)
#' @export
#'
#' @examples cpi(country = "DEU", class = "CPALTT01", start = 2000, end = 2010, period = "Q")
cpi <- function(country, class, start, end, period){
  vec_country <- NULL

  vec_class <- NULL

  vec_period <- NULL

  for(i in 1:length(country)){
    vec_country <- gsub(" ", "+",trimws(paste(vec_country,country[i])))
  }

  for(i in 1:length(class)){
    vec_class <- gsub(" ","+", trimws(paste(vec_class, class[i])))
  }

  for(i in 1:length(period)){
    vec_period <- gsub(" ","+",trimws(paste(vec_period,period[i])))
  }

  readsdmx_1 <- rsdmx::readSDMX(providerId = "OECD", resource = "data", flowRef = "PRICES_CPI",
                                key = paste0("/",vec_country,".",vec_class,".GY.",vec_period,"/all"),
                                key.mode = "SDMX", start = start, end = end, dsd = TRUE)

  df_1 <- data.frame(readsdmx_1)

  View(df_1)

}
