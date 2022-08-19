## TO-DO
Create SQLite3 database

Create, Insert, update, select, alter and delete data from database tables

Write SQL code in both your command line and your text editor and execute the code against a database

#

### Beginning with SQLite
SQl - standard language for accessing and manipulating databases. 

Types of database Engines
- SQLite3 - 
- Postgresql
- Mysql

#### Common Keywords
- SELECT
- UPDATE
- CREATE
- DROP
- INSERT INTO
- DELETE
- ALTER


### Naming conventions for table_name
- naming of table -> should start with a `tbl` prefix eg :- tblUsers, tblStudents
- naming muitple words eg car design stuctures -> tblCarDesignStructures
- last letter should have (s) plural

### General Datatypes
Are used In order to maximize compatibility between SQLite and other database engines.
```
- TEXT -> The value is a text string
- INTEGER -> The value is a signed integer, stored in 0, 1, 2, 3, 4, 6, or 8 bytes depending on the magnitude of the value.
- REAL -> The value is a floating point value, stored as an 8-byte IEEE floating point number (Decimal Numbers)
- BLOB -> The value is a blob of data, stored exactly as it was input. (Binary Data) 
```
#
# SQLite3 Database

## Sample Database

Database name: - School

table: - Students

Column(Attributes)
- name
- email
- gender
- reg no
- residence
- age

#

### CREATE DATABASE
Open Terminal
```bash
  sqlite3 school.db
```
### CREATE TABLE
Syntax for creating tables

```bash
CREATE TABLE table_name (
  id INTEGER PRIMARY KEY NOT NULL,
  col_name data_type;
  col_name data_type;
  col_name data_type;
);
```
Example:
```bash
CREATE TABLE tblStudents (
  id INTEGER PRIMARY KEY NOT NULL,
  name TEXT;
  email TEXT;
  gender TEXT;
  reg no INTEGER;
  residence TEXT;
  age INTEGER;
);
```

### INSERT
Syntax for inserting data into the tables
```bash
INSERT INTO table_name (col_name1, col_name2, ...) VALUES (value1, value2, ...);
```
Example

Insert single data
```bash
INSERT INTO tblStudents (name, email, regno, age, residence, gender)
VAlUES ("Jane", "jane@gmail.com", 143, 23, "Naivasha", "Female");
```
Insert Multiple data
```bash
INSERT INTO tblStudents (name, email, regno, age, residence, gender)
VAlUES ("Jane", "jane@gmail.com", 143, 23, "Naivasha", "Female"), 
       ("Reddick", "reddick@gmail.com", 144, 40, "Machakos", "Male"), 
       ("Elvis", "elvis@gmail.com", 145, 19, "Naivasha", "Male");
```

### SELECT
Select syntax get all attributes
```bash 
SELECT * FROM table_name;
```
Get name and regno attributes
```bash 
SELECT name, regno FROM tblStudents;
```
Example:-
```bash 
SELECT name, residence FROM tblStudents ORDER BY name DESC|ASC;
```


### UPDATE
Syntax for updating a row/entity
```bash 
UPDATE table_name SET col_name = value WHERE <Condition>;
```
Example:
```bash 
UPDATE tblStudents SET residence = "Ngong" WHERE regno = "141";
```
With 2 condition use `and`
```bash 
UPDATE tblStudents SET residence = "Pipeline", age = 25  WHERE name = "Maingi" and regno = "141";
```
`NB` :- Be careful with updating records. IF you omit the `WHERE` clause ALL the records with be updated.


### ALTER 
Syntax for Altering a table

Example:
```bash 
ALTER TABLE table_name ADD COLUMN col_name data_type;
```
Adding a new column `Course`

Add or Drop a column
```bash
ALTER TABLE tblStudents ADD/Drop COLUMN course TEXT;
```
With default value
```bash
ALTER TABLE tblStudents ADD COLUMN status TEXT DEFAULT "single";
```

### DELETE
Syntax for deleting data
```bash
DELETE FROM table_name WHERE col_name=value;
```
Example:
```bash 
DELETE FROM tblStudents WHERE regno=144;
```


