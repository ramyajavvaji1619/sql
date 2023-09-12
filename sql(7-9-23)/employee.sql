CREATE TABLE employee(
      id INT,
      name VARCHAR(200),
      salary INT 
      );

      PRAGMA TABLE_INFO(employee);
      
      INSERT INTO
               employee('id', 'name', 'salary')

       VALUES
             ('2315', 'Ramya', '25,000'),
             ('2318', 'uma', '25,000'),
             ('2325', 'siva', '30,000'),
             ('2323', 'suneel', '30,000'),
             ('2119', 'raju', '30,000');
             

             SELECT * FROM employee 
           SELECT id, salary
           FROM employee
           
       SELECT raju
            FROM employee
              
     SELECT * FROM employee

     WHERE name='raju';
      SELECT * FROM employee
      ALTER TABLE
                 employee
     ADD
     email
     SELECT * FROM employee
     ALTER TABLE
               employee
     RENAME COLUMN email TO emailid;

     SELECT * FROM employee
       
       DELETE FROM
                 employee
       WHERE name='suneel';
       SELECT * FROM employee