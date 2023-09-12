-- TO CREATE TABLE
CREATE TABLE player(
name VARCHAR(200),
age INT,
score INT 
);
PRAGMA TABLE_INFO(player);
-- TO INSERTING ROWS TO THE TABLE
INSERT INTO 
    player(name,age,score,jersey_number)
VALUES
('kohli', 32 ,99,18),
('sehwag', 35 ,98,2),
('dhoni', 34 ,95,7),
('rahul', 30 ,85,44),
('pandya', 31 ,90,21);

-- TO VIEW THE ADDED DATA
SELECT * FROM player;
SELECT name,score
FROM
 player;
 

SELECT * 
FROM player 
WHERE name='pandya';
--  to update all rows or specific row
UPDATE
 player
SET
 score = 150
WHERE
 name = 'sehwag';

    SELECT * FROM player
    
    DELETE FROM
              player
     WHERE
          name = 'pandya';
          SELECT * FROM player

    ALTER TABLE
               player
    ADD 
        jersey_num;

        SELECT * FROM player

        ALTER TABLE
                  player
        RENAME COLUMN jersey_num TO jersey_number;     

        SELECT * FROM player     

        ALTER TABLE
                    player
        ADD
           id;    
           SELECT * FROM player  

          ALTER TABLE
                    player
           RENAME COLUMN id TO playerid;  
           SELECT * FROM player      










             (1,'bahubali','action',150.0,600.0,4.9,2016-6-21),
   (1,'bahubali2','action',400.0,1500.0,4.9,2020-9-27),
   (1,'maharshi','action',50.0,500.0,4.7,2018-7-11),
   (1,'pathan','action',150.0,700.0,4.5,2023-6-21),
   (1,'virupaksha','horror',90.0,150.0,4.5,2023-5-6),
   (1,'karthikeya2','adventure',30.0,200.0,4.6,2022-9-5),
   (1,'rrr','action',450.0,1300.0,4.9,2022-6-21),
   (1,'bro','drama',90.0,120.0,4.0,2021-2-21),
   (1,'ok ok','funny',60.0,100.0,2.5,2016-6-21),
   (1,'liger','action',50.0,10.0,2.9,2016-6-21),
   (1,'meg','sci/fi',200.0,500.0,3.1,2019-4-28),
   


   INSERT INTO
    movie (id,name,genre,budget_in_cr,collection_in_cr,rating,release_date)
VALUES
 (1,'dhoni','sports',50.0,500.0,4.9,'2019-3-15'),
   (1,'dhangal','sports',500.0,1800.0,4.9,'2016-7-21'),
   (1,'bahubali','action',150.0,600.0,4.9,'2016-6-21'),
   (1,'bahubali2','action',450.0,1500.0,4.9,'2020-9-27');