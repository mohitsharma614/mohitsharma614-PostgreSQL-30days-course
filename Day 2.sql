--- DDl Command
DROP TABLE IF EXISTS employee;
CREATE TABLE employee(
Employee_id serial Primary Key,
name_of_employee VARCHAR (100) not null,
Position VARCHAR(100) not null,
Department VARCHAR(50),
Hire_date Date,
Salary Numeric(10,2)
);

--Explanation 
/*---💡 CREATE TABLE employee (...)
CREATE TABLE ➤ This tells the database "Hey! I'm creating a new table."

employee ➤ This is the name of the table. You're naming it employee to store information about employees.

🧱 Inside the brackets (...) you're defining the columns (think of them like fields in a form or Excel sheet).
🔢 Employee_id serial Primary Key
Employee_id ➤ This is the column name, used to uniquely identify each employee.

serial ➤ This is a special data type that automatically increases numbers like 1, 2, 3... when you add new records. You don’t need to type it yourself.

Primary Key ➤ This means this column is the main unique identifier. No two employees can have the same ID. It must be unique and not null.

👤 Name VARCHAR(100) notnull
Name ➤ The column that stores the name of the employee.

VARCHAR(100) ➤ It means you can store text up to 100 characters. It’s flexible, like writing a name.

notnull (should be written as NOT NULL) ➤ This means you must provide a name. It cannot be left blank.

💼 Position VARCHAR(100) notnull
Position ➤ This stores the employee’s job title or role, like "Manager", "Developer", etc.

VARCHAR(100) ➤ Again, text up to 100 characters.

notnull ➤ You must enter a position. It cannot be empty.

🏢 Department VARCHAR(50)
Department ➤ This column stores the department name, like "HR", "IT", "Sales", etc.

VARCHAR(50) ➤ Text up to 50 characters.

No NOT NULL here ➤ So it's optional — you can leave it empty if needed.

📅 Hire_date Date
Hire_date ➤ The column that stores the date when the employee was hired.

Date ➤ This data type only allows date values, like 2025-04-17.

💰 Salary Numeric(10,2)
Salary ➤ Stores the salary amount for the employee.

Numeric(10,2) ➤ This means you can store numbers with:

Up to 10 digits in total

2 digits after the decimal point
For example: 12345678.90*/

--We create heading of the table now we insert date in employee table
Insert into employee(name_of_employee,Position,Department,Hire_date,salary)  --This tells PostgreSQL: 👉 “I want to insert new data into the table named employee.”
VALUES  ---The VALUES keyword is followed by rows of data, one for each employee.
('Mohit Sharma','Data Analyst','IT','2020-12-01',30000),
('Amit Sharma','System Engineer','IT','2019-11-01',35000),
('Abhinandan Mankotia','Data Analyst','IT','2018-07-01',45000);

SELECT*FROM employee;   ---This is a SQL query used to view all data from the employee table.

--Now ALTER, Alter is used to edit or change 

ALTER table employee
 RENAME column Name TO Name_of_employee;

--Drop is used to delete whole column
ALTER TABLE employee DROP COLUMN Salary;

--TRUNCATE used to erase data from employee table
TRUNCATE TABLE employee;

--Update 
UPDATE employee
SET Salary = 40000
WHERE Employee_id = 1;

--when we update command run the sequence is disturbe, first entry goes to last, to arrange seguence we use

select * from employee ORDER BY Employee_id ASC;

--Delete
DELETE FROM employee
WHERE Employee_id = 3;

--BEGIN
BEGIN;  -- Start the transaction

UPDATE employee
SET Salary = 50000
WHERE Employee_id = 2;

-- If everything is fine, commit the changes
COMMIT;


RollBack; --undoes changes made in the current transaction, restoring consistency.





