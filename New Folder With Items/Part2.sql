/* Creating transactions table */

CREATE TABLE transactions(Id INT,
                          User_id INT,
                          Created_at DATETIME,
                          Product_id INT,
                          Quantity INT);
INSERT INTO transactions
VALUES(1, 10, '2010-12-01 14:30:15', 11, 5),
	  (2, 20, '2010-12-01 10:30:15', 13, 2),
      (3, 30, '2010-12-01 11:30:15', 13, 1),
      (4, 40, '2010-12-01 12:30:15', 15, 1),
      (5, 50, '2010-12-01 14:30:15', 13, 2),
      (6, 10, '2010-12-01 14:30:15', 13, 5),
	  (7, 20, '2010-12-01 14:30:15', 13, 3),
      (8, 30, '2010-12-01 10:30:15', 13, 5),
	  (9, 40, '2010-12-01 11:30:15', 15, 6),
      (10, 50,'2010-12-01 14:30:15', 17, 8);
Select * FROM transactions;

CREATE TABLE products(Id INT,
                      name VARCHAR(50),
                      price FLOAT);
                      
INSERT INTO products
VALUES(11, 'Peanut Butter', 6),
      (13, 'Bread', 4),
      (15, 'Butter', 5),
      (17, 'Lettuce', 6);
      
      
SELECT * FROM products;

/* Creating users table */

CREATE TABLE users(Id INT,
                   name VARCHAR(50),
                   created_at DATETIME);
INSERT INTO users
VALUES(10, 'Michael', '2010-12-01 14:30:15'),
      (20, 'Jim', '2010-12-01 10:00:00'),
      (30, 'Dwight', '2008-10-01 12:30:15'),
      (40, 'Pam', '2008-12-01 09:30:15'),
      (50, 'Angela','2010-12-01 14:30:15');
SELECT * FROM users;


SELECT
    u.name AS name,
    t.User_id AS User_id,
    SUM(t.Quantity * p.price) AS total_cost
FROM
    transactions t
JOIN
    users u ON t.User_id = u.id
JOIN
    products p ON t.Product_id = p.Id
GROUP BY
    t.User_id, u.name
ORDER BY
    total_cost DESC;





                      