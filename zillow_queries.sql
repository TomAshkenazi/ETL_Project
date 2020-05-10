CREATE TABLE SC_Listings (
Index INT Primary Key,
Listing_Name TEXT,
Price INT,
Beds TEXT,
Baths TEXT,
Sqft FLOAT,
Price_per_Sqft FLOAT,
Street_Address TEXT,
City TEXT,
Zip_Code TEXT
);

SELECT * from SC_Listings

SELECT city, AVG(Price_per_Sqft) as average_price_per_sqft
	FROM SC_Listings
	GROUP BY city
HAVING COUNT(city) > 10
ORDER BY average_price_per_sqft DESC