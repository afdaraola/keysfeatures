
/*
Miscellaneous Features
If the TRUNCATE statement is issued against a temporary table, only the session specific data is truncated. There is no affect on the data of other sessions.
Data in temporary tables is stored in temp segments in the temp tablespace.
Data in temporary tables is automatically deleted at the end of the database session, even if it ends abnormally.
Indexes can be created on temporary tables. The content of the index and the scope of the index is the same as the database session.
Views can be created against temporary tables and combinations of temporary and permanent tables.
Temporary tables can have triggers associated with them.
Export and Import utilities can be used to transfer the table definitions, but no data rows are processed.
Statistics on temporary tables are common to all sessions. Oracle 12c allows session specific statistics.
There are a number of restrictions related to temporary tables but these are version specific.

*/

 --The ON COMMIT DELETE ROWS clause indicates the data should be deleted at the end of the transaction, or the end of the session.

CREATE GLOBAL TEMPORARY TABLE my_temp_table (
  id           NUMBER,
  description  VARCHAR2(20)
)
ON COMMIT DELETE ROWS;

-- Insert, but don't commit, then check contents of GTT.
INSERT INTO my_temp_table VALUES (1, 'ONE');

SELECT COUNT(*) FROM my_temp_table; 


-- In contrast, the ON COMMIT PRESERVE ROWS clause indicates that rows should persist beyond the end of the transaction. They will only be removed at the end of the session.

CREATE GLOBAL TEMPORARY TABLE my_temp_table (
  id           NUMBER,
  description  VARCHAR2(20)
)
ON COMMIT PRESERVE ROWS;

-- Insert and commit, then check contents of GTT.
INSERT INTO my_temp_table VALUES (1, 'ONE');
COMMIT;
