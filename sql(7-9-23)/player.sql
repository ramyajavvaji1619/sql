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