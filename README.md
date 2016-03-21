### TransitIncomeMap

This is a sample project to map median income by zip code along major public transit routes in Seattle. Routes and bus stops were selected based on total coverage and ease of mapping. This project is a proof of concept rather than a detailed analysis of income. Future refinements to this visualization would include ranking and selecting routes/bus stops based on total distance covered, zipcodes covered, etc.

The Tableau visualization relies on MapBox to plot the polylines for bus routes and uses Tableau to map points and income. Sheet swapping is used to switch between sheets based upon filter selections. 

**Completed:**

1. R script written to get data from census.gov API and save as CSV. Includes median income by zip code tabulation area.
2. King County Transit routes converted to points for Tableau using *_shapetotab --simplify routes.tab_* where Esri shp was converted to .tab in MapInfo. Currently has ~55k points. 
3. Zip codes added to route_Points using "update column" in MapInfo to join with zipcode polygon table. 

**Notes:**

1. ZCTA are different from ZIP codes. Custom geocoding could be used in Tableau but doesn't seem necessary for this project. Comparing ZCTA to ZIP for Seattle, Philadelphia, and DC only yield a few minor areas without corresponding income data. These can just be avoided on the final map. 
2. Final project will have map with selectable points and a line graph showing income along the path. Line graph should have income on y, ORDER on x, and be filtered by RTE_NUM as selected on the map. 
3. tabgeohack and shapetotab available here: https://community.tableau.com/message/286092
