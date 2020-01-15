-- Revert trans-port-sql:product-table from pg

BEGIN;

DROP TABLE transport.product;
DROP TABLE transport.product_type;
DROP TABLE transport.user;
DROP TABLE transport.auth_type;
DROP TABLE transport.supplier;

COMMIT;
