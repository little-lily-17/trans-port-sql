-- Deploy trans-port-sql:product-TABLE-master to pg

BEGIN;

CREATE TABLE transport.product_type (product_type_id INT PRIMARY KEY, product_type_name TEXT);
CREATE TABLE transport.supplier (supplier_id INT PRIMARY KEY, supplier_name TEXT, supplier_type TEXT);
CREATE TABLE transport.product (product_id INT PRIMARY KEY, product_name TEXT, product_type_id INT REFERENCES transport.product_type(product_type_id), supplier_id INT REFERENCES transport.supplier(supplier_id));
CREATE TABLE transport.user (user_id INT PRIMARY KEY, user_name TEXT);
CREATE TABLE transport.auth_type (auth_type_id INT PRIMARY KEY, auth_type TEXT, auth_provider TEXT);

COMMIT;
