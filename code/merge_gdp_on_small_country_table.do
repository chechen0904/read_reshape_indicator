* merge small country table with gdp per capita

use "data/derived/countries_small.dta",clear

merge 1:m countrycode using "data/derived/gdp_per_capita.dta", keep(match) nogenerate

label variable countryname "Country Name"
label variable gdp_per_capita "GDP per capita"
label variable year "Year"

save "data/derived/countries_small_with_gdp.dta", replace
