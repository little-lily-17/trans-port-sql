-- Deploy trans-port-sql:transport-table-trx to pg

BEGIN;

CREATE TABLE transport.order (order_id BIGINT PRIMARY KEY, total_amount MONEY, order_status TEXT, user_id INT REFERENCES transport.user(user_id));
CREATE TABLE transport.trip (trip_id INT PRIMARY KEY, trip_from TEXT, trip_to TEXT, amount MONEY, product_id INT REFERENCES transport.product(product_id), order_id BIGINT REFERENCES transport.order(order_id));
CREATE TABLE transport.route (route_id INT PRIMARY KEY, route_from TEXT, route_to TEXT, start_time TIME, end_time TIME, trip_id INT REFERENCES transport.trip(trip_id));
CREATE TABLE transport.segment (segment_id INT PRIMARY KEY, segment_from TEXT, segment_to TEXT, start_time TIME, end_time TIME);
CREATE TABLE transport.passenger (passenger_id INT PRIMARY KEY, order_id BIGINT REFERENCES transport.order(order_id), passenger_name TEXT, age SMALLINT);

COMMIT;

