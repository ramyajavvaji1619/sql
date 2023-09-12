
CREATE TABLE match_details (
         
         name VARCHAR(250),
         match VARCHAR(10),
         score INT,
         fours INT,
         sixes INT,
         year INT 

    );
     
      PRAGMA TABLE_INFO(match_details);

 INSERT INTO
       match_details(name,match,score,fours,sixes,year)
 VALUES
    ('Sehwag','SRH vs CSK',54,2,4,2012),
    ('Rahul','DC vs DD',89,2,10,2013),
    ('Dhoni','SRH vs CSK',96,1,13,2014),
    ('Sehwag','SRH vs CSK',60,1,0,2012),
    ('Jadeja','MI vs RCB',75,2,9,2011),
    ('Pandya','MI vs DC',75,2,9,2012),
    ('Kohli','RR vs MI',84,1,11,2013),
    ('Gill','CSK vs RR',9,0,0,2010),
    ('Kohli','RR vs DC',75,2,9,2011),
    ('Sehwag','SRH vs MI',30,5,0,2012),
    ('Rahul','DC vs RR',47,2,11,2013),
    ('Kohli','RR vs SRH',78,4,3,2011),
    ('Dhoni','SRH vs MI',9,0,0,2014),
    ('Kohli','RCB vs SRH',99,4,13,2011);
   SELECT * FROM match_details

  SELECT  
     SUM (score) AS total
  FROM
           match_details
  WHERE
      name = 'Kohli'
  
SELECT 
    SUM (score) AS total
FROM 
    match_details
WHERE
    name = 'Sehwag';

SELECT 
    SUM(sixes) as total
FROM
   match_details
WHERE
   name = 'Kohli'

SELECT 
   MAX(score),
   MIN(score)
FROM
   match_details
WHERE
   year = 2012;

SELECT 
    MAX(sixes),
    MIN(sixes)
FROM
   match_details
WHERE
   year = 2013;

SELECT 
    COUNT()
FROM
   match_details

SELECT
   name AS player_name
FROM
   match_details

SELECT 
    AVG(score) AS avg_score
FROM
   match_details

SELECT
    AVG(score) AS avg_score
FROM
   match_details
WHERE
    name = 'Kohli';

SELECT 
   MIN(score) AS least_score
FROM
   match_details;

SELECT 
   MAX(score) AS highest_score
FROM
   match_details;

SELECT 
   MAX(score) AS highest_score
FROM
   match_details
WHERE
   year = 2014;

SELECT 
    SUM(sixes) AS sixes_hit
FROM
   match_details;

SELECT 
    SUM(fours) as fours_hit
FROM
   match_details;

SELECT
    name, SUM(score) as total_score
FROM
   match_details
GROUP BY
     name;

SELECT
    name, SUM(sixes) as total_sixes
FROM
match_details
GROUP BY
     name;

SELECT
    name, SUM(fours) as total_fours
FROM
match_details
GROUP BY
     name;

SELECT
   name, MAX(score)
FROM
   match_details
GROUP BY
    name;

SELECT
   name, MIN(score)
FROM
   match_details
GROUP BY
    name;

SELECT 
    name, COUNT(*) as half_centuries
FROM
   match_details
WHERE
   score >= 50
GROUP BY
      name;

-- SELECT 
--     name, year,COUNT(*) as half_centuries
-- FROM
--    match_details
-- WHERE
--    score >= 50
-- GROUP BY
--       year;

--     SELECT * FROM match_details
-- SELECT 
--     name,year,COUNT(score) as half_centuries
-- FROM
--    match_details
-- WHERE 
--     score >= 50
-- GROUP BY
--     score;

SELECT 
    name, year, COUNT(*) as half_centuries
FROM
   match_details
WHERE
   score >= 50
GROUP BY
      name, year;

SELECT
    name, COUNT() as half_centuries
FROM 
   match_details
WHERE
   score >= 50
GROUP BY
     name
HAVING
   half_centuries > 1;


SELECT
    name, COUNT() as half_centuries
FROM 
   match_details
WHERE
   score >= 50
GROUP BY
     name
HAVING
   half_centuries > 2;

SELECT
    name, COUNT() 
FROM
   match_details
WHERE 
   half_centuries >= 50
   

GROUP BY
      name
HAVING
     
COUNT(half_centuries) > 2;


SELECT 
   name, count() as no_of_matches
FROM
   match_details


WHERE
    score>= 50
GROUP BY
  name
HAVING
   no_of_matches>1;








  