

 CREATE TABLE customer(

          id INTEGER NOT NULL PRIMARY KEY,
          name VARCHAR(200),
          age INT

    );
     
       PRAGMA TABLE_INFO(customer);

 CREATE TABLE product(

          id INTEGER NOT NULL PRIMARY KEY,
          name VARCHAR(200),
          price INT,
          brand VARCHAR(200),
          category VARCHAR(200)

    );
  
        PRAGMA TABLE_INFO(product);

 CREATE TABLE address(

          id INTEGER NOT NULL PRIMARY KEY,
          pin_code INTEGER,
          door_no VARCHAR(200),
          city VARCHAR(200),
          customer_id INTEGER,
          FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE CASCADE

    );

         PRAGMA TABLE_INFO(address);

CREATE TABLE cart(

          id INTEGER NOT NULL PRIMARY KEY,
          customer_id INTEGER NOT NULL UNIQUE,
          total_price INT,
         FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE CASCADE

    );

        PRAGMA TABLE_INFO(cart);
       
CREATE TABLE cart_product(

          id INTEGER NOT NULL PRIMARY KEY,
          cart_id INTEGER,
          product_id INT,
          quantity INT,
         FOREIGN KEY (cart_id) REFERENCES cart(id) ON DELETE CASCADE
         FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE    
    );

           PRAGMA TABLE_INFO(cart_product);





