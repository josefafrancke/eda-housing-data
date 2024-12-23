

-- set schema eda as default
SET SCHEMA 'eda'; 

-- exploring king county house tables
SELECT * FROM king_county_house_details d ;
SELECT * FROM king_county_house_sales s ; 

-- there are 21420 rows in house_details
SELECT count(*) FROM king_county_house_details d ;

--- and 21597 rows in house_sales
SELECT count(*) FROM king_county_house_sales s ; 

-- for not losing any information, I will outer join both tables:
SELECT d.*, s.date, s.price
FROM eda.king_county_house_details d 
FULL OUTER JOIN king_county_house_sales s ON s.house_id = d.id ;

-- checking whether I didnt lose any rows: still outputs 21597 rows
SELECT count(*) FROM (
	SELECT d.*, s.date, s.price
	FROM king_county_house_details d 
	FULL OUTER JOIN king_county_house_sales s ON s.house_id = d.id
) AS joined ;

-- checking whether I didnt lose any rows: still outputs 21597 rows
SELECT count(*) FROM (
	SELECT d.*, s.date, s.price
	FROM king_county_house_details d 
	LEFT JOIN king_county_house_sales s ON s.house_id = d.id
) AS joined ;

-- checking whether I didnt lose any rows: still outputs 21597 rows
SELECT count(*) FROM (
	SELECT d.*, s.date, s.price
	FROM king_county_house_details d 
	inner JOIN king_county_house_sales s ON s.house_id = d.id
) AS joined ;


-- outputting the ids that are shown twice
SELECT house_id, COUNT(*)
FROM king_county_house_sales
GROUP BY house_id
HAVING COUNT(*) > 1
;

-- checking whether ids are the same amount to explain the variation in entries
SELECT 
    COUNT(DISTINCT d.id) as unique_houses_in_details,
    COUNT(DISTINCT house_id) as unique_houses_in_sales
FROM king_county_house_details d
FULL outer JOIN king_county_house_sales s ON s.house_id = d.id;
