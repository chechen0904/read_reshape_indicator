* generate gdp pc data
do code/read_reshape_gdp.do

* generate small country data
do code/make_small_country_table.do

* merge gdp pc on small country
do code/merge_gdp_on_small_country_table.do

* create summary stats
do code/make_income_group_summary_table.do
