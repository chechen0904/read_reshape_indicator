* import WDICountry csv
import delimited "data/raw/worldbank/WDICountry.csv", clear bindquote("strict") varnames(1) encoding("utf-8")

* generated census year
generate censusyear = real(substr(latestpopulationcensus, 1, 4))

* keep only a few variables
keep countrycode shortname region incomegroup censusyear

* label censusyear variable
label variable censusyear "Census Year"

* save dta file
save "data/derived/countries_small.dta", replace
