

    CREATE TABLE instructor(

             id INTEGER NOT NULL PRIMARY KEY,
             full_name VARCHAR(200),
             gender VARCHAR(100)
 );          

        PRAGMA TABLE_INFO(instructor);

    CREATE TABLE course(

             id INTEGER NOT NULL PRIMARY KEY,
             name VARCHAR(200),
             duration INT,
             instructor_id INT,
          FOREIGN KEY (instructor_id) REFERENCES instructor(id) ON DELETE CASCADE;
);

        PRAGMA TABLE_INFO(course);