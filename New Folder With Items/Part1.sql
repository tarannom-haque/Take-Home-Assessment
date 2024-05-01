/* Part 1: Query building (single table):*/
/* Creating the table */
CREATE TABLE employee(ID INT,
					Department VARCHAR(20),
                    SALARY INT);
                    
/* Adding values to the table */

INSERT INTO employee
VALUES (1, "MerchantServices",  35000),
       (2, "Accounting", 45000),
       (3, "MerchantServices", 60000),
       (4, "MerchantServices", 90000),
       (5, "Accounting", 89000),
       (6, "IT department", 55000),
       (7, "IT department", 75000),
       (8, "IT department", 9500);
	SELECT * FROM employee;
    
/* Query to find the largest salaru within each department */
SELECT Department, MAX(SALARY) as Largest_Salary FROM employee GROUP by Department;
