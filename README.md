### TransitIncomeMap

Currently exploring mapping data for Seattle, Philadelphia, DC, and Baltimore.

**Completed:**

1. R script written to get data from census.gov API and save as CSV. Includes median income by zip code tabulation area.
2. King County Transit routes converted to points for Tableau using *_shapetotab --simplify routes.tab_* where Esri shp was converted to .tab in MapInfo. Currently has ~55k points. 
3. Zip codes added to route_Points using "update column" in MapInfo to join with zipcode polygon table. 

**TODO:**
1. Line Segment and Point Order are not in the order of the actual route. Need to figure out another way to extract route direction (or manually select points and add to new database / set). Cannot move forward until this piece is completed. 
2. Decide which routes to include (major? express? all?)

**Notes:**

1. ZCTA are different from ZIP codes. Custom geocoding could be used in Tableau but doesn't seem necessary for this project. Comparing ZCTA to ZIP for Seattle, Philadelphia, and DC only yield a few minor areas without corresponding income data. These can just be avoided on the final map. 
2. Final project will have map with selectable points and a line graph showing income along the path. Line graph should have income on y, ORDER on x, and be filtered by RTE_NUM as selected on the map. 
3. tabgeohack and shapetotab available here: https://community.tableau.com/message/286092
