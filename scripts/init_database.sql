/*
=============================================================
Create Layer Databases
=============================================================
Purpose:
    Creates one database per warehouse layer: bronze, silver, gold.
    In MySQL a schema and a database are the same thing, so each
    layer is its own database instead of a schema inside one.

WARNING:
    Running this drops bronze, silver and gold if they exist.
    All data in them is permanently deleted.
*/

-- Remove the single database from the earlier step, no longer needed
DROP DATABASE IF EXISTS data_warehouse;

DROP DATABASE IF EXISTS bronze;
DROP DATABASE IF EXISTS silver;
DROP DATABASE IF EXISTS gold;

CREATE DATABASE bronze;
CREATE DATABASE silver;
CREATE DATABASE gold;
