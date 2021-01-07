*import data
import delimited "..\Data\Derived\python_cleaned_data.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear

*get rid of variables we don't need
drop id deviceid time zipcode photo otherskuitem comments code sale_online

*Fix data quality errors:

*Change pricetype to bool
gen discounted = 0
replace discounted = 1 if pricetype =="Sale/Discounted Price"
recast byte discounted
drop pricetype

*Change imputed to bool (0 if not imputed, 1 if imputed)
replace imputed=0 if imputed==.

*label variables
label variable retailer_s "Retailer id in string format"
label variable date "Date for offline data collection, in stata format"
label variable price "Offline Price"
label variable price_online "Online Price"
label variable imputed "=0 if the online price was collected on the exact same day (1 otherwise)"
label variable discounted "=0 if regular price, 1 if discounted"
label variable season "Season (Winter, Spring, Summer, or Autumn"
