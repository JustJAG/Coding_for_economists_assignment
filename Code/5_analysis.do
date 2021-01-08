*Upload clean data (not filtered as in 4_histogram_frequency)
use "..\Data\Derived\prices_all_clean.dta"

*Check that dependent and independent variables are not strongly correlated
pwcorr

*Run a regression of imputed and discounted on pricediff
reg pricediff imputed discounted
estimates store m1, title(Model 1)

*Run a regression of discounted on pricediff
reg pricediff discounted
estimates store m2, title(Model 2)

*Run a regression of imputed on pricediff
reg pricediff imputed
estimates store m3, title(Model 3)

estout m1 m2 m3, cells(b(star fmt(3)) se(par fmt(2))) legend label varlabels(_cons constant)stats(r2 df_r bic)
esttab m1 m2 m3 using "..\Tables\table.csv", cells(b(star fmt(3)) se(par fmt(2))) legend label varlabels(_cons constant)stats(r2 df_r bic)
