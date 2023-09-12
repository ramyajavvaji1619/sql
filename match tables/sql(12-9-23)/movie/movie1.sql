


   CREATE TABLE movie(
         
         id INT,
         name VARCHAR(200),
         genre VARCHAR(200),
         budget_in_cr FLOAT,
         collection_in_cr FLOAT,
         rating FLOAT,
         release_date DATE
    );
     
    
       CREATE TABLE cast1(
        
        actor_id INT,
        movie_id INT,
        role VARCHAR(200)

      
      );
      PRAGMA TABLE_INFO(cast1);

      INSERT INTO 
           cast1 (actor_id, movie_id, role)
      VALUES
          (1, 1,'hero'),
          (1, 2,'hero'),
          (2, 3,'hero'),
          (3, 4,'hero'),
          (4, 5,'hero'),
          (5, 6,'hero'),
          (6, 7,'hero'),
          (7, 8,'hero'),
          (8, 9,'hero'),
          (9, 10,'hero'),
          (10, 11,'hero'),
          (11, 12,'hero'),
          (12, 13,'hero');
       
       SELECT * FROM cast1

      CREATE TABLE actor(
            actor_id INT,
            name VARCHAR(200),
            age  INT

      );

      PRAGMA TABLE_INFO(actor);
       
       INSERT INTO 
           actor (actor_id, name, age)
      VALUES
          (1, 'prabhas', 40),
          (2, 'maheshbabu', 45),
          (3, 'sharukhkhan', 57),
          (4, 'saidharamtej', 30),
          (5, 'nikhil', 32),
          (6, 'ntr', 37),
          (7, 'pawankalyan', 50),
          (8, 'stalin', 35),
          (9, 'vijay', 30),
          (10, 'jonas', 40),
          (11, 'sushanth', 35),
          (12, 'ameerkhan', 50);
        
        SELECT * FROM actor

     INSERT INTO
    movie (id,name,genre,budget_in_cr,collection_in_cr,rating,release_date)
VALUES
    
  (1,'bahubali','action',150.0,600.0,4.9,'2016-6-21'),
   (2,'bahubali2','action',400.0,1500.0,4.9,'2020-9-27'),
   (3,'maharshi','action',50.0,500.0,4.7,'2018-7-11'),
   (4,'pathan','action',150.0,700.0,4.5,'2023-6-21'),
   (5,'virupaksha','horror',90.0,150.0,4.5,'2023-5-6'),
   (6,'karthikeya2','adventure',30.0,200.0,4.6,'2022-9-5'),
   (7,'rrr','action',450.0,1300.0,4.9,'2022-6-21'),
   (8,'bro','drama',90.0,120.0,4.0,'2021-2-21'),
   (9,'ok ok','funny',60.0,100.0,2.5,'2016-6-21'),
   (10,'liger','action',50.0,10.0,2.9,'2016-6-21'),
   (11,'meg','sci/fi',200.0,500.0,3.1,'2019-4-28'),
   (12,'dhoni','sports',50.0,500.0,4.9,'2019-3-15'),
   (13,'dhangal','sports',500.0,1800.0,4.9,'2016-7-21'),
   (14,'bahubali','action',150.0,600.0,4.9,'2016-6-21'),
   (15,'bahubali2','action',450.0,1500.0,4.9,'2020-9-27');

   SELECT * FROM movie

   SELECT 
      id, name, (collection_in_cr - budget_in_cr) as profit
    FROM
      movie

    SELECT 
       id, name, (budget_in_cr - collection_in_cr) as loss

    FROM 
      movie
    WHERE
     name = 'ok ok';

    SELECT 
       name || '_' || genre as movie_genre
    FROM
      movie;

    SELECT
      name || '_' || budget_in_cr as movie_budget

    FROM 
      movie;

    SELECT * FROM
             movie
    WHERE
      (collection_in_cr - budget_in_cr) >= 50;

    SELECT * FROM
              movie
    WHERE
      (collection_in_cr - budget_in_cr) >= 200;

    UPDATE 
    movie
     SET 
     rating = rating/2;
      SELECT * 
      FROM 
      movie
     UPDATE 
     movie 
     SET
      rating = rating*2;
     
     SELECT * FROM movie

  UPDATE 
  movie 
     SET 
     rating = rating*2;
     SELECT * FROM movie

    UPDATE 
    movie
    SET 
    collection_in_cr = collection_in_cr*2;
    SELECT * FROM movie
 
    SELECT 
       genre
    FROM
      movie
    GROUP BY 
       genre
    HAVING 
    AVG (collection_in_cr - budget_in_cr) >= 100;

    
    SELECT 
       genre
    FROM
      movie
    GROUP BY 
       genre
    HAVING 
    AVG (collection_in_cr - budget_in_cr) >= 500;
  SELECT * FROM movie

   SELECT
    name, (collection_in_cr - budget_in_cr) as profit, rating
    FROM
       movie
    GROUP BY
    name
    HAVING
      rating > 4.0;
      SELECT * FROM movie

      SELECT
    name, (collection_in_cr - budget_in_cr) as profit, rating
    FROM
       movie
    GROUP BY
    name
    HAVING
      rating > 2.5;
      SELECT * FROM movie

    
    -- SELECT * FROM
    --          movie
    -- WHERE
    --   genre = drama, funny, sci/fi
    --   GROUP BY
    --   genre
    --   HAVING
    --    (collection_in_cr - budget_in_cr) >= 30;
 

 SELECT 
    name, 
 strftime('%Y', release_date) AS date
FROM
   movie;

 SELECT 
 name, 
 strftime('%Y', release_date)
FROM
    movie;


SELECT name, strftime('d', release_date) FROM movie;

SELECT 
 strftime('%m', release_date) as month,
 COUNT(*) as total_movies
FROM
 movie
WHERE
 strftime('%Y', release_date) = '2016'
GROUP BY
 strftime('%m', release_date);

 SELECT * FROM movie


 SELECT
 name,
     ROUND(collection_in_cr, 1) AS RoundedValue,
     CEIL(collection_in_cr) AS CeilValue,
     FLOOR(collection_in_cr) AS FloorValue
FROM
 movie;
   SELECT
 name,
     ROUND(collection_in_cr) AS RoundedValue,
     CEIL(collection_in_cr) AS CeilValue,
     FLOOR(collection_in_cr) AS FloorValue
FROM
 movie;


SELECT
 name
FROM
 movie
WHERE
 UPPER(name) LIKE UPPER('bahubali');

SELECT 
    id, name,
CASE
 WHEN (collection_in_cr - budget_in_cr) <= 100 THEN (collection_in_cr - budget_in_cr)*0.1
 WHEN (collection_in_cr - budget_in_cr) > 100
 AND (collection_in_cr - budget_in_cr) < 500 THEN (collection_in_cr - budget_in_cr)*0.15
 ELSE (collection_in_cr - budget_in_cr) *  0.18
 END AS tax_amount
 FROM
     movie;

    
    SELECT 
    id, name,
CASE
 WHEN rating < 2.5 THEN poor
 WHEN rating <= 2.5
 AND rating < 4 THEN average
 ELSE rating >= 4 THEN good
 END AS category
 FROM
     movie;
 
 SELECT
  name,
 count(
 CASE
 WHEN rating >= 4 THEN 1
 END
 ) AS rating_above_four,
 count(
 CASE
 WHEN rating < 4 THEN 1
 END
 ) AS rating_below_four
FROM
 movie
WHERE
 CAST(strftime('%Y', release_date) AS INTEGER) BETWEEN 2016
 AND 2020;

 SELECT
  name,
 count(
 CASE
 WHEN collection_in_cr >= 100 THEN 1
 END
 ) AS collecting_above_100cr,
 count(
 CASE
 WHEN collection_in_cr < 100 THEN 1
 END
 ) AS collecting_below_100cr
FROM
 movie

SELECT 
    actor_id
FROM 
   cast1
WHERE 
   movie_id= 7
INTERSECT
SELECT 
     actor_id
FROM  
    cast1
WHERE 
    movie_id=7;


SELECT 
     movie_id
FROM 
    cast1
WHERE 
    actor_id= 6
INTERSECT
SELECT 
    movie_id
FROM 
    cast1
WHERE 
    actor_id=6;

SELECT 
    actor_id
FROM 
   cast1
WHERE 
   movie_id= 7
EXCEPT
SELECT 
     actor_id
FROM  
    cast1
WHERE 
    movie_id=13;

SELECT 
    actor_id
FROM 
   cast1
WHERE 
   movie_id= 7
UNION
SELECT 
     actor_id
FROM  
    cast1
WHERE 
    movie_id=13;


  SELECT 
     actor_id
FROM 
  cast1
WHERE 
   movie_id=6
UNION
SELECT 
    actor_id
FROM 
   cast1
WHERE 
   movie_id=15
ORDER BY 1 DESC;


SELECT 
    actor_id
FROM 
    cast1
WHERE 
    movie_id=6
UNION
SELECT 
     actor_id
FROM 
    cast1
WHERE 
   movie_id=15
ORDER BY 1 DESC
LIMIT 5;

SELECT 
   actor_id
FROM 
  cast1
WHERE 
   movie_id=2
UNION
SELECT 
    actor_id
FROM 
   cast1
WHERE 
   movie_id=15
ORDER BY  DESC
LIMIT 10;


SELECT 
  name, release_date,
  strftime('%Y', release_date) as 'release_year'
 FROM
   movie;


 UPDATE 
    movie
     SET 
   (1,'bahubali','action',150.0,600.0,4.9,'2016-06-21'),
   (2,'bahubali2','action',400.0,1500.0,4.9,'2020-09-27'),
   (3,'maharshi','action',50.0,500.0,4.7,'2018-07-11'),
   (4,'pathan','action',150.0,700.0,4.5,'2023-06-21'),
   (5,'virupaksha','horror',90.0,150.0,4.5,'2023-05-06'),
   (6,'karthikeya2','adventure',30.0,200.0,4.6,'2022-09-05'),
   (7,'rrr','action',450.0,1300.0,4.9,'2022-06-21'),
   (8,'bro','drama',90.0,120.0,4.0,'2021-02-21'),
   (9,'ok ok','funny',60.0,100.0,2.5,'2016-06-21'),
   (10,'liger','action',50.0,10.0,2.9,'2016-06-21'),
   (11,'meg','sci/fi',200.0,500.0,3.1,'2019-04-28'),
   (12,'dhoni','sports',50.0,500.0,4.9,'2019-03-15'),
   (13,'dhangal','sports',500.0,1800.0,4.9,'2016-07-21'),
   (14,'bahubali','action',150.0,600.0,4.9,'2016-06-21'),
   (15,'bahubali2','action',450.0,1500.0,4.9,'2020-09-27');
      
      SELECT * 
      FROM 
      movie

 UPDATE 
    movie
     SET 
     release_date=('2020-09-27')
WHERE
   id = 15;
  SELECT * FROM movie


  SELECT 
    name, 
 strftime('%Y', release_date) AS date
FROM
   movie;

SELECT 
    name, 
 strftime('%m', release_date) AS date
FROM
   movie;


SELECT 
    name, 
 strftime('%d', release_date) AS date
FROM
   movie;


SELECT 
   count() as noOFActionMovies
FROM
 movie
WHERE
    (genre = 'action' AND strftime('%Y', release_date)='2016');


SELECT
   count() as noOFMoviesReleasedInSummer
   FROM
      movie
WHERE

   strftime('%m', release_date) BETWEEN '04' AND '06';


SELECT 
    count() as total_movies
FROM
  WHERE
     strftime('%m', release_date)


SELECT * FROM movie