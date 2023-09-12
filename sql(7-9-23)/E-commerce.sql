CREATE TABLE website(
     
     name VARCHAR(200),
     category VARCHAR(200),
     price INT,
     brand VARCHAR(200),
     rating FLOAT

);

  PRAGMA TABLE_INFO(website);

  INSERT INTO 
        website(name,category,price,brand,rating)
   VALUES
    ('Smart tv', 'Gadjets', 9000, 'samsung', 4.6),
    ('Smart watch', 'Gadjets', 2000, 'boat', 4.2),
    ('peanut butter', 'food', 200, 'hersheys', 4.0),
    ('black shirt', 'clothing', 900, 'puma', 4.6),
    ('Smart tv', 'Gadjets', 11000, 'LG', 4.8),
    ('Smart watch', 'Gadjets', 3000, 'samsung', 4.4),
    ('white jeans', 'clothing', 1500, 'puma', 3.9),
    ('choclates', 'food', 650, 'hersheys', 4.0),
    ('mobile', 'Gadjets', 59000, 'apple', 4.9),
    ('Smart watch', 'Gadjets', 29000, 'apple', 4.8),
    ('dairy milk', 'food', 300, 'cadbury', 3.7),
    ('gray jeans', 'clothing', 2000, 'levis', 4.7),
    ('tshirt', 'clothing', 900, 'levis', 4.5),
    ('Smart tv', 'Gadjets', 20000, 'apple', 4.6),
    ('refrigerator', 'Gadjets', 9000, 'samsung', 4.6),
    ('washing machine', 'Gadjets', 23000, 'LG', 4.5),
    ('Strawberry cake', 'food', 150, 'cadbury', 3.8),
    ('black jeans', 'clothing', 1000, 'puma', 4.2),
    ('black choclate', 'food', 200, 'hersheys', 3.7),
    ('earbuds', 'Gadjets', 3000, 'boat', 4.1),
    ('white shirt', 'clothing', 500, 'levis', 4.0);

   SELECT * FROM website

   SELECT * FROM
           website
    WHERE
     category = 'food';

   SELECT * FROM 
           website
    WHERE
     brand = 'apple';

    SELECT * FROM 
            website
    WHERE
       category = 'clothing';

    SELECT * FROM
              website
    WHERE
       category <> 'Gadjets';

    SELECT * FROM
             website
    WHERE
        category <> 'food';

    SELECT name,price,rating 
    FROM  website
       
    SELECT * FROM
             website
    WHERE
        rating > 4.5;    

    SELECT * FROM
              website
    WHERE 
        rating < 4.2;

    SELECT * FROM 
               website
    WHERE
        price <= 1000

    SELECT * FROM
             website
    WHERE
       price >= 10000;

    SELECT * FROM
               website
    WHERE
        brand = 'puma';

    SELECT * FROM
           website
    WHERE 
    brand = 'hersheys';

    SELECT * FROM
               website
    WHERE
       brand = 'LG';

    SELECT * FROM
             website
    WHERE
       name LIKE 'white%';

    SELECT * FROM
               website
    WHERE
        brand LIKE 'levis';
    
   SELECT * FROM
             website
    WHERE
     name LIKE 'smart%';   

    SELECT * FROM
              website
    WHERE 
     brand LIKE '____';    
        
    SELECT * FROM
            website
    WHERE
        category LIKE '________';

    SELECT * FROM
             website
    WHERE
       category LIKE 'food';

    SELECT * FROM
              website
    WHERE
       name LIKE '%cake%';

    SELECT * FROM
             website
    WHERE 
     name LIKE '%tshirt';

    SELECT * FROM
               website
    WHERE
      name LIKE '%chips%';

    SELECT * FROM
             website
    WHERE
       category LIKE '____';

    SELECT * FROM
             website
    WHERE
     category = 'clothing' AND 
     price <= 1000;
        
     SELECT * FROM
             website
    WHERE
     category = 'clothing' AND 
     price <= 1000 AND
     rating > 4.5;

    SELECT * FROM
             website
    WHERE 
      NOT name LIKE 'smart%';

    SELECT * FROM
               website
    WHERE
       NOT category LIKE 'clothing%';

    SELECT * FROM
              website
    WHERE
       price < 30000 AND
       brand ='apple';
       
    SELECT * FROM
             website
    WHERE 
       rating > 3.5 AND
       brand = 'hersheys';

    SELECT * FROM
             website
    WHERE
        NOT category LIKE '%food';

     SELECT * FROM
             website
    WHERE
        NOT category LIKE 'food';

    SELECT * FROM
              website
    WHERE
       NOT brand LIKE 'samsung';

    SELECT * FROM
             website
    WHERE
       (brand = 'apple'
       AND rating > 4.2)
       OR brand = 'samsung';

    SELECT * FROM
             website
    WHERE
      NOT name LIKE '%jeans';

    SELECT * FROM
         website
    WHERE
      category = 'clothing' AND 
      NOT name LIKE '%jeans';

    SELECT brand 
    FROM
              website
    WHERE 
        brand = 'puma'AND
          brand = 'levis' AND
        
        name NOT LIKE'%shirt';

    SELECT * FROM
              website
    WHERE
      (category = 'food' and
      price < 1000) OR
         name = '%choclate%';
      
    SELECT brand
    FROM
             website
    WHERE
       brand IN ('puma', 'samsung','hersheys','boat','apple','LG','cadbury');

    SELECT * FROM
              website
    WHERE
      category = 'food' AND
      brand IN ('hersheys', 'cadbury');
       
    SELECT name, price,brand
    FROM
             website
    WHERE
     price BETWEEN 1000 AND 5000;
       
    SELECT * FROM 
             website
    WHERE
      rating BETWEEN 4.3 and 4.9;

    SELECT * FROM
              website
    WHERE
     rating BETWEEN 3.5 and 4.8;

    SELECT brand,name,rating
     FROM 
        website
    WHERE 
      brand = 'apple'
      ORDER BY 
      
      rating DESC;

    SELECT  brand, name, price
    FROM
        website
    WHERE
    brand = 'samsung'
    ORDER BY
      price DESC;
      
    SELECT name,rating,price
    FROM
       website
    WHERE 
      name LIKE '%jeans'
      ORDER BY
      rating DESC,
      price ASC;

    SELECT
    DISTINCT brand
    
    FROM
              website
    ORDER BY
      brand;

    SELECT  DISTINCT category
    FROM 
        website
    ORDER BY
        category;

    SELECT 
    price, name, rating
    FROM
       website
    WHERE 
        brand = 'apple'
       ORDER BY
         rating DESC
         LIMIT 2;
     
     SELECT 
    price, name, rating
    FROM
       website
    WHERE 
        brand = 'puma'
       ORDER BY
         rating DESC
         LIMIT 3;

      SELECT 
    price, name, rating
    FROM
       website
    WHERE 
        brand = 'apple'
       ORDER BY
        price ASC
         LIMIT 3;

    
      SELECT 
    price, name, rating
    FROM
       website
    WHERE 
        brand = 'puma'
       ORDER BY
        price ASC
         LIMIT 3;

    
     SELECT
    price, name, rating
    FROM
       website

       ORDER BY
        price ASC
         LIMIT 5
         OFFSET 6;

    
     SELECT
    price, name, rating
    FROM
       website

       ORDER BY
        price ASC
         LIMIT 5
         OFFSET 10;

    
     SELECT
    price, name, rating
    FROM
       website

       ORDER BY
        price ASC
         LIMIT 5
         OFFSET 15;

    
     


      
      