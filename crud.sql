INSERT INTO products('name',price, can_be_returned)
VALUE ('chair', 44.00,'f');

INSERT INTO products('name',price, can_be_returned)
VALUE ('stool', 25.99,'t');

INSERT INTO products('name',price, can_be_returned)
VALUE ('table', 124.00,'f');

SELECT *
FROM products;

SELECT name
FROM products;

SELECT name, price
FROM products;

INSERT INTO products('name',price,can_be_returned)
VALUE('volleyball',29.00,'f')

SELECT name
FROM products
WHERE can_be_returned;

SELECT name
FROM products
WHERE price < 44.00;

SELECT name
FROM products
WHERE price BETWEEN 22.50 AND 99.99;

UPDATE products SET price = price - 20;

DELETE from products WHERE price < 25;

UPDATE products SET price = price + 20;

UPDATE products SET can_be_returned = 't';
