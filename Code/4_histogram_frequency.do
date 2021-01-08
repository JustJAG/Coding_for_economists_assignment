*Create a histogram of pricediff_p for each country

*First drop pricediff_p that are 0
drop if pricediff_p==0

*Create a histogram aggregating by country
histogram pricediff_p, frequency by(country)

*Save graph
graph export "..\Graphs\histogram.png", replace

*Create histograms of pricediff_p for each year with a loop
foreach x of num 2014/2016{
	histogram pricediff_p if year ==`x', frequency subtitle("Year `x'")
	graph export "..\Graphs\histogram_`x'.png", replace
}
