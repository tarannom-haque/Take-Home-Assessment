SELECT /* This statement specifies what information we want to get from the database*/
COUNT(*) AS employees_number,/*This query is used to count the number of employees in 
                              each department and rename the result as employee_number*/
d.Department_name/* This is to select the department name from the table called
                  department, d. in this case refers to the department table*/
FROM employee e/* This query is used to refer to the table called employee that 
				contains all the available information of an employye*/
JOIN Department D/* Referring to the department table*/
ON e.dep_id = d.id/* In here this query is telling the database to match rows 
                  in the employees table with the rows in the department table
                  to match the id of each department in the employee table and the
                  ids in the department table*/
WHERE e.birth_date IS NULL/* WHERE in here is used to be more specific by 
                           using clauses to filter and show only employees that are missing birthdates &
  AND e.hire_date IS NULL  /* employees that are missing hiring dates */
GROUP BY   d.Department_name /* This shows the results by each department name*/


