# COICOP Package

## Install Package

With this package you will be able to get dataset of Consumer Price
Index (CPI) that is found in OECD Statistics based on COICOP
classification. The dataset can also be customized by determining the
start and end values (Years).

The package can be installed through devtools:

``` r
#Install devtool package and add to usage
install.packages("devtools",repos = "http://cran.us.r-project.org")
```

    ## package 'devtools' successfully unpacked and MD5 sums checked
    ## 
    ## The downloaded binary packages are in
    ##  C:\Users\tunay\AppData\Local\Temp\Rtmp6H7ocz\downloaded_packages

``` r
library(devtools)

#Install COICOP Package and library
install_github("tunay5/COICOP")
library(coicoppackage)
```

## Usage of cpi() and classification()

To find out the codes of each cpi object according to COICOP method, use
classification()

``` r
classification()
```

    ##                                                                names     code
    ## 1  National Consumer Price Index (CPI) by COICOP 1999 classification     CP00
    ## 2                                             CPI: 01-12 - All items CPALTT01
    ## 3                       CPI: 01-12 - All items special COICOP series CPALTT02
    ## 4                         CPI: 01 - Food and non-Alcoholic beverages CP010000
    ## 5               CPI: 02 - Alcoholic beverages, tobacco and narcotics CP020000
    ## 6                                    CPI: 03 - Clothing and footwear CP030000
    ## 7         CPI: 04 - Housing, water, electricity, gas and other fuels CP040000
    ## 8                         CPI: 04.1 - CPI Actual rentals for housing CP040100
    ## 9                        CPI: 04.2 - CPI Imputed rentals for housing CP040200
    ## 10            CPI: 04.3 - CPI Maintenance & repairs of the dwellings CP040300

To receive the dataset with demanded features, use cpi():

``` r
cpi(country = "DEU", class= "CPALTT01", start = 2000, end = 2001, period = "Q")
```

    ## [rsdmx][INFO] Fetching 'https://stats.oecd.org/restsdmx/sdmx.ashx/GetData/PRICES_CPI//DEU.CPALTT01.GY.Q/all/all?startPeriod=2000&endPeriod=2001' 
    ## [rsdmx][INFO] DSD ref identified in dataset = 'PRICES_CPI' 
    ## [rsdmx][INFO] Attempt to fetch & bind DSD to dataset 
    ## [rsdmx][INFO] Fetching 'https://stats.oecd.org/restsdmx/sdmx.ashx/GetDataStructure/PRICES_CPI' 
    ## [rsdmx][INFO] DSD fetched and associated to dataset! 
    ##   LOCATION  SUBJECT MEASURE FREQUENCY TIME_FORMAT UNIT POWERCODE obsTime
    ## 1      DEU CPALTT01      GY         Q         P3M   PC         0 2000-Q1
    ## 2      DEU CPALTT01      GY         Q         P3M   PC         0 2000-Q2
    ## 3      DEU CPALTT01      GY         Q         P3M   PC         0 2000-Q3
    ## 4      DEU CPALTT01      GY         Q         P3M   PC         0 2000-Q4
    ## 5      DEU CPALTT01      GY         Q         P3M   PC         0 2001-Q1
    ## 6      DEU CPALTT01      GY         Q         P3M   PC         0 2001-Q2
    ## 7      DEU CPALTT01      GY         Q         P3M   PC         0 2001-Q3
    ## 8      DEU CPALTT01      GY         Q         P3M   PC         0 2001-Q4
    ##   obsValue
    ## 1 1.548233
    ## 2 1.105409
    ## 3 1.376327
    ## 4 1.730921
    ## 5 1.720094
    ## 6 2.538071
    ## 7 2.017067
    ## 8 1.662800
