use "data/derived/countries_small_with_gdp.dta", clear

* drop non-country observations
drop if missing(incomegroup)

* keep only last year
keep if year == 2017
drop year

label variable gdp_per_capita "GDP per capita, 2017"

/*
* use egen to generate summary statistics

egen mean_gdp_pc = mean(gdp_per_capita), by(incomegroup)
egen n_countries = count(countrycode), by(incomegroup)
egen median_censusyear = median(censusyear), by(incomegroup)

keep incomegroup mean_gdp_pc n_countries median_censusyear
duplicates drop
*/

* generate auxilliary variable for count:
generate n = 1

* use collapse to do the same
collapse (mean) mean_gdp_pc = gdp_per_capita (count) n_countries = n (median) median_censusyear = censusyear, by(incomegroup)

save "data/derived/income_group_summary_table.dta", replace

