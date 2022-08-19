-- To run the file use command below
-- $ sqlite school.db < updatedata.sql

UPDATE tblStudents SET residence = "Ngong" WHERE regno = "141";
UPDATE tblStudents SET residence = "Pipeline", age = 25  WHERE name = "Maingi" and regno = "141";