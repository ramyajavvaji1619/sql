

CREATE TABLE exam_schedule(
           name VARCHAR(200),
           exam_date_time DATE,
           duration_in_sec TIME,
           pass_percentage INT


        );

        PRAGMA TABLE_INFO(exam_schedule);

     INSERT INTO 
              exam_schedule(name,exam_date_time,duration_in_sec,pass_percentage, course)
    VALUES
          ('charan', '2023-9-22', '2-45-30',78,'bsc'),
          ('ramya', '2023-9-22', '2-45-30',80,'mba'),
          ('sandhya', '2023-9-22', '2-45-30',98,'btech'),
          ('siri', '2023-9-22', '2-45-30',56,'bcom');


SELECT * FROM exam_schedule



    
ALTER TABLE
          exam_schedule

ADD
   course;

   SELECT * FROM exam_schedule
    
    UPDATE 
        exam_schedule
        SET
        course = 'bcom'
        WHERE
         name = 'siri';
           
     SELECT * FROM exam_schedule





           