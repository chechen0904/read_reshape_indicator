/*
local thisyear 2020
display `thisyear'

local thismonth november
display "`thismonth'"
*/
/*
use "data/derived/gdp_per_capita.dta", clear

/*
* summarize gdp per capita variable for 21th century
local begin_year 2000
local variable gdp_per_capita

summarize `outcome' if year >= `begin_year'

summarize gdp_per_capita if year >= 2000

local c country

describe `c'code
describe `c'name

summarize gdp_per_capita if year == 2010
summarize gdp if year == 2011
sum gdp if y == 2012
*/
/*
forvalues i=1/5 {
    display `i'
	display `i'+10
    }
*/
forvalues t = 2010/2017 {
    display `t'
    summarize gdp_per_capita if year == `t'
}
*/
forvalues i = 1(2)11 {
    di `i'
}

foreach fruit in apple banana orange "dragon fruit"{
    display "`fruit'"
}
