DROP TABLE products;
DROP TABLE brands;
DROP TABLE types;



CREATE TABLE brands (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255)
);

CREATE TABLE types (
  id SERIAL4 PRIMARY KEY,
  description VARCHAR(255)
);

CREATE TABLE products (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255),
  brand_id REFERENCES brands(id),
  type_id REFERENCES types(id),
  quantity INT4,
  buying_price DECIMAL,
  selling_price DECIMAL
);
