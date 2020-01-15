-- Revert trans-port-sql:appschema from pg

BEGIN;

DROP SCHEMA transport;

COMMIT;
