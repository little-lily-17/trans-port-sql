-- Revert trans-port-sql:transport-table-trx from pg

BEGIN;

DROP TABLE transport.passenger;
DROP TABLE transport.segment;
DROP TABLE transport.route;
DROP TABLE transport.trip;
DROP TABLE transport.order;

COMMIT;
