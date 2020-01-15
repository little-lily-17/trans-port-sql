-- Deploy trans-port-sql:transport-table-trx to pg

BEGIN;

CREATE TABLE transport.order (id BIGINT PRIMARY KEY, total_amount MONEY, order_status TEXT, user_id INT REFERENCES transport.user(id));
CREATE TABLE transport.trip (id INT PRIMARY KEY, trip_from TEXT, trip_to TEXT, amount MONEY, product_id INT REFERENCES transport.product(id), order_id BIGINT REFERENCES transport.order(id));
CREATE TABLE transport.route (id INT PRIMARY KEY, route_from TEXT, route_to TEXT, start_time TIME, end_time TIME, trip_id INT REFERENCES transport.trip(id));
CREATE TABLE transport.segment (id INT PRIMARY KEY, segment_from TEXT, segment_to TEXT, start_time TIME, end_time TIME);
CREATE TABLE transport.passenger (id INT PRIMARY KEY, order_id BIGINT REFERENCES transport.order(id), passenger_name TEXT, age SMALLINT);

COMMIT;

