/*
18/07/18
adding extra columns for prodreporter
*/


ALTER TABLE dw."T06_Machines"
ADD COLUMN "CapacityPerWeek" integer,
ADD COLUMN  "ProductGroup" character varying,
ADD COLUMN  controler_manufacturer character varying,
ADD COLUMN  controler_name character varying,
ADD COLUMN  controler_type character varying,
ADD COLUMN  controler_voltage character varying,
ADD COLUMN  controler_output_cyclecount character varying,
ADD COLUMN  controler_output_defectivepart character varying,
ADD COLUMN  controler_output_failure character varying,
ADD COLUMN  controler_output_other character varying