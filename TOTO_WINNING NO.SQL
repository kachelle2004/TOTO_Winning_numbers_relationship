# Check data that imported from excel file

SELECT *
FROM toto_winning_number_2024;

# Look for the most frequenct number by creating a table called frequent_number
CREATE TABLE frequent_numbers (
    winning_number INT,
    column_name VARCHAR(20),
    frequency_count INT);
    
# Calculate the frequency for each winning number column and insert the results into the new table.
-- We use UNION ALL to combine the results from each SELECT query into a single, efficient insert statement.
INSERT INTO frequent_numbers (winning_number, column_name, frequency_count)
SELECT
    `First _Num`,
    'First _Num' AS column_name,
    COUNT(*) AS frequency_count
FROM
    toto_winning_number_2024
GROUP BY
    `First _Num`

UNION ALL

SELECT
    Second_Num,
    'Second_ Num' AS column_name,
    COUNT(*) AS frequency_count
FROM
    toto_winning_number_2024
GROUP BY
    Second_Num

UNION ALL

SELECT
    Thrid_Num,
    'Thrid _Num' AS column_name,
    COUNT(*) AS frequency_count
FROM
    toto_winning_number_2024
GROUP BY
    Thrid_Num

UNION ALL

SELECT
    Fourth_Num,
    'Fourth _Num' AS column_name,
    COUNT(*) AS frequency_count
FROM
    toto_winning_number_2024
GROUP BY
    Fourth_Num

UNION ALL

SELECT
	Fifth_Num,
    'Fifth _Num' AS column_name,
    COUNT(*) AS frequency_count
FROM
    toto_winning_number_2024
GROUP BY
    Fifth_Num

UNION ALL

SELECT
    Six_Num,
    'Six _Num' AS column_name,
    COUNT(*) AS frequency_count
FROM
    toto_winning_number_2024
GROUP BY
    Six_Num;
    
# Show the most frequent numbers
SELECT
    winning_number,
    SUM(frequency_count) AS total_frequency
FROM
    frequent_numbers
GROUP BY
    winning_number
ORDER BY
    total_frequency DESC;

SELECT * 
FROM frequent_numbers ;

-- Use the final query to get the aggregated frequency data.
SELECT
    winning_number,
    SUM(frequency_count) AS total_frequency
FROM
    frequent_numbers
GROUP BY
    winning_number
ORDER BY
    total_frequency DESC;
 
SELECT *
FROM toto_winning_number_2024
WHERE 28 in(`first _Num`, Second_Num,Thrid_Num,Fourth_Num,Fifth_Num,Six_Num,Additional_Num)
AND ((10 in (`first _Num`, Second_Num,Thrid_Num,Fourth_Num,Fifth_Num,Six_Num,Additional_Num))
OR(14 in (`first _Num`, Second_Num,Thrid_Num,Fourth_Num,Fifth_Num,Six_Num,Additional_Num))
OR (4 in (`first _Num`, Second_Num,Thrid_Num,Fourth_Num,Fifth_Num,Six_Num,Additional_Num ))
OR (8 in( `first _Num`, Second_Num,Thrid_Num,Fourth_Num,Fifth_Num,Six_Num,Additional_Num)));

# Finding the relation where each draw have the 2 or more frequent number in it

SELECT *
FROM toto_winning_number_2024
WHERE
((`first _Num`=28 OR Second_Num=28 OR Thrid_Num= 28 OR Fourth_Num=28 OR Fifth_Num=28 OR Six_Num=28 OR Additional_Num=28)
AND 
(`first _Num`=10 OR Second_Num=10 OR Thrid_Num= 10 OR Fourth_Num=10 OR Fifth_Num=10 OR Six_Num=10 OR Additional_Num=10))
OR
((`first _Num`=28 OR Second_Num=28 OR Thrid_Num= 28 OR Fourth_Num=28 OR Fifth_Num=28 OR Six_Num=28 OR Additional_Num=28)
AND 
(`first _Num`=14 OR Second_Num=14 OR Thrid_Num= 14 OR Fourth_Num=14 OR Fifth_Num=14 OR Six_Num=14 OR Additional_Num=14))
OR
((`first _Num`=28 OR Second_Num=28 OR Thrid_Num= 28 OR Fourth_Num=28 OR Fifth_Num=28 OR Six_Num=28 OR Additional_Num=28)
AND (`first _Num`=4 OR Second_Num=4 OR Thrid_Num= 4 OR Fourth_Num=4 OR Fifth_Num=4 OR Six_Num=4 OR Additional_Num=4))

OR
((`first _Num`=14 OR Second_Num=14 OR Thrid_Num= 14 OR Fourth_Num=14 OR Fifth_Num=14 OR Six_Num=14 OR Additional_Num=14)
AND
(`first _Num`=10 OR Second_Num=10 OR Thrid_Num= 10 OR Fourth_Num=10 OR Fifth_Num=10 OR Six_Num=10 OR Additional_Num=10))

OR
((`first _Num`=10 OR Second_Num=10 OR Thrid_Num= 10 OR Fourth_Num=10 OR Fifth_Num=10 OR Six_Num=10 OR Additional_Num=10)
AND
(`first _Num`=4 OR Second_Num=4 OR Thrid_Num= 4 OR Fourth_Num=4 OR Fifth_Num=4 OR Six_Num=4 OR Additional_Num=4))

OR
((`first _Num`=4 OR Second_Num=4 OR Thrid_Num= 4 OR Fourth_Num=4 OR Fifth_Num=4  OR Six_Num=4 OR Additional_Num=4)
AND
(`first _Num`=14 OR Second_Num=14 OR Thrid_Num= 14 OR Fourth_Num=14 OR Fifth_Num=14 OR Six_Num=14 OR Additional_Num=14));
