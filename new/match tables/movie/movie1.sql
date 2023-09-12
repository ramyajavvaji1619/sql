


   CREATE TABLE movie(
         
         id INT,
         name VARCHAR(200),
         genre VARCHAR(200),
         budget_in_cr FLOAT,
         collection_in_cr FLOAT,
         rating FLOAT,
         release_date DATE
    );
     
     PRAGMA TABLE_INFO(movie);
     CREATE TABLE cast(
        name  VARCHAR(200),
        actor_id INT,
        movie_id INT,
        role VARCHAR(200)

      
      );
      PRAGMA TABLE_INFO(cast);

      CREATE TABLE actor(
            actor_id INT,
            name VARCHAR(200),
            age  INT

      );

      PRAGMA TABLE_INFO(actor);

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

    -- UPDATE movie
    --  SET rating = rating/2;
    --   SELECT * FROM movie

    UPDATE movie
    SET collection_in_cr = collection_in_cr/2;
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
        

