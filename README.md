### TransitIncomeMap

Currently exploring mapping data for Seattle, Philadelphia, DC, and Baltimore.

**Completed:**

1. R script written to get data from census.gov API and save as CSV. Includes median income by zip code tabulation area.

**TODO:**

1. Convert polyline map of routes to points for Tableau. Need to determine point resolution - may need to be done manually. 
2. Points will need RTE_NUM, LAT, LON, ORDER, and ZCTA. ZCTA is needed to blend income data with transit map data.

**Notes:**

1. ZCTA are different from ZIP codes. Custom geocoding could be used in Tableau but doesn't seem necessary for this project. Comparing ZCTA to ZIP for Seattle, Philadelphia, and DC only yield a few minor areas without corresponding income data. These can just be avoided on the final map. 
2. Final project will have map with selectable points and a line graph showing income along the path. Line graph should have income on y, ORDER on x, and be filtered by RTE_NUM as selected on the map. 
