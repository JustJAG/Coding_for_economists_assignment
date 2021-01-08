*Create a new variable pricediff
gen pricediff = price - price_online

*Create a new variable pricediff_sq
gen pricediff_sq = (pricediff)^2

*Create a new variable pricediff_p
gen pricediff_p = (price - price_online)/price_online

*Split retailer_s by Countries and retailer_ID
generate splitat =  ustrpos(retailer_s,"_")
generate str1 country = ""
replace country = usubstr(retailer_s,1,splitat - 1)
generate str1 retailer_ID = "" 
replace retailer_ID = usubstr(retailer_s,splitat + 1,.)
drop splitat

*label them
label variable pricediff "=Offline price - Online price"
label variable pricediff_sq "=pricediff squared"
label variable pricediff_p "Percentage change: =(Offline price - Online price)/Online price"
label variable country "Country"
label variable retailer_ID "ID of retailer"

*save data
save "..\Data\Derived\prices_all_clean.dta"
