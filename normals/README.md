How do we know whether ocean temperatures are lower or higher than “normal”? 
What’s a “normal” temperature? Turns out that scientists have developed a 
metric called a “Climate Normal.” A Climate Normal characterizes aspects of 
earth’s climate—its long-term weather—over a span of 30 years. One important 
metric is ocean temperature.

In a database called normals.db, using a table called normals, explore some of 
the most recent Climate Normal data to understand what makes a normal ocean 
temperature around the world.

Notice that the earth is divided into a grid of coordinates—points that can 
identify most any location on earth. Each coordinate is a combination of latitude 
and longitude. And notice how each coordinate over an ocean has some normal 
ocean surface temperature associated with it!

In normals.db you’ll find a single table of coordinates, normals. In the normals table, you’ll find the following columns:

  - id, which uniquely identifies each row (coordinate) in the table
  - latitude, which is the degree of latitude (expressed in decimal format) for the coordinate
  - longitude, which is the degree of longitude (expressed in decimal format) for the coordinate
  - 0m, which is the normal ocean surface temperature (i.e., the normal temperature at 0 meters of depth), in degrees Celsius, at the coordinate
  - 5m, which is the normal ocean temperature at 5 meters of depth, in degrees Celsius, at the coordinate
  - 10m, which is the normal ocean temperature at 10 meters of depth, in degrees Celsius, at the coordinate
  - And observations continue until 5500m, or 5500 meters of depth, for some coordinates!

    Since normals is a wide table, if you want to preview the contents, 
    consider SELECTing only the latitude, longitude, and a few depth columns.

# Questions

In 1.sql, write a SQL query to find the normal ocean surface temperature in the Gulf of Maine, off the coast of Massachusetts. To find this temperature, look at the data associated with 42.5° of latitude and -69.5° of longitude.
Recall that you can find the normal ocean surface temperature in the 0m column, which stands for 0 meters of depth!

In 2.sql, write a SQL query to find the normal temperature of the deepest sensor near the Gulf of Maine, at the same coordinate above.
The deepest sensor records temperatures at 225 meters of depth, so you can find this data in the 225m column.

In 3.sql, write a SQL query to find the normal temperature at 0 meters, 100 meters, and 200 meters near the Gulf or Maine.

In 4.sql, write a SQL query to find the lowest normal ocean surface temperature.

In 5.sql, write a SQL query to find the highest normal ocean surface temperature.

In 6.sql, write a SQL query to return all normal ocean temperatures at 50m of depth, as well as their respective degrees of latitude and longitude, within the Arabian Sea. Include latitude, longitude, and temperature columns. For simplicity, assume the Arabian Sea is encased in the following four coordinates:

  - 20° of latitude, 55° of longitude
  - 20° of latitude, 75° of longitude
  - 0° of latitude, 55° degrees of longitude
  - 0° of latitude, 75° degrees of longitude

In 7.sql, write a SQL query to find the average ocean surface temperature, rounded to two decimal places, along the equator. Call the resulting column “Average Equator Ocean Surface Temperature”.
The equator’s ocean surface temperatures can be found at all longitudes between the latitudes -0.5° and 0.5°, inclusive.

In 8.sql, write a SQL query to find the 10 locations with the lowest normal ocean surface temperature, sorted coldest to warmest. If two locations have the same normal ocean surface temperature, sort by latitude, smallest to largest. Include latitude, longitude, and surface temperature columns.

In 9.sql, write a SQL query to find the 10 locations with the highest normal ocean surface temperature, sorted warmest to coldest. If two locations have the same normal ocean surface temperature, sort by latitude, smallest to largest. Include latitude, longitude, and surface temperature columns.

There are 180 whole degrees of latitude. In 10.sql, write a SQL query to determine how many points of latitude we have at least one data point for. (Why might we not have data points for all latitudes?)