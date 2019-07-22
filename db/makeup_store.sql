DROP TABLE products;
DROP TABLE brands;
DROP TABLE categories;



CREATE TABLE brands (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  info VARCHAR(500)
);

CREATE TABLE categories (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(500)
);

CREATE TABLE products (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(500),
  brand_id INT4 REFERENCES brands(id) ON DELETE CASCADE,
  category_id INT4 REFERENCES categories(id) ON DELETE CASCADE,
  quantity INT4,
  buying_cost DECIMAL,
  selling_price DECIMAL
);
