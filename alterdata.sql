-- To run the file use command below
-- $ sqlite school.db < alterdata.sql

ALTER TABLE tblStudents ADD COLUMN status TEXT DEFAULT "single";