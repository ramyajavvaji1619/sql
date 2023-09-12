

  CREATE TABLE student(
                 name VARCHAR(200),
                 date_of_bitrh DATE,
                 address TEXT,
                 scholarship1 INT ;
                 );

         PRAGMA TABLE_INFO(student);
  SELECT * FROM student
INSERT INTO
          student(name,date_of_bitrh,address, percentage,scholarship1);
VALUES
      ('ramya', 1998, 'vijayawada', 80),
      ('charan', 1998, 'rajahmandry', 76),
      ('sandhya',1998, 'kadapa', 90),
      ('anis', 1996, 'nandigama', 80);

      SELECT * FROM student
ALTER TABLE
         student
ADD
   percentage;

   SELECT * FROM student


   ALTER TABLE
             student

    ADD
       scholarship amount;        
 SELECT * FROM student


          

  ALTER TABLE
       student
       RENAME COLUMN date_of_bitrh TO date_of_birth;
       SELECT * FROM student
       ALTER TABLE
       student
       RENAME COLUMN scholarship TO scholarship1;
       SELECT * FROM student

UPDATE 
    student
     SET
     percentage=80
     WHERE 
     name = 'anis'
SELECT * FROM student

UPDATE 
    student
     SET
     scholarship1=1500
     WHERE 
     name = 'sandhya'
SELECT * FROM student

UPDATE
      student
SET
   scholarship1 = 15000

SELECT * FROM student


UPDATE
      student
SET
   scholarship1 = 25000

SELECT * FROM student