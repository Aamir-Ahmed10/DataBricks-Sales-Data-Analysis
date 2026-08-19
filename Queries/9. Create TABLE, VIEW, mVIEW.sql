--You can use either of these commands as per the usage and insert the desired query after 'AS'

CREATE OR REPLACE TABLE  Customer_Analysis_Table
TRIGGER ON UPDATE
AS

--OR

CREATE OR REPLACE VIEW  Customer_Analysis_View
TRIGGER ON UPDATE
AS

--OR

CREATE OR REPLACE MATERIALIZED VIEW  Customer_Analysis_mView
TRIGGER ON UPDATE
AS
