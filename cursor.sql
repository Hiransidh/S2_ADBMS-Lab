create database ham;
use ham;
CREATE TABLE customer (id INT PRIMARY KEY,c_name VARCHAR(100),email VARCHAR(100),phone VARCHAR(20),address VARCHAR(200));
INSERT INTO customer (id, c_name, email, phone, address) VALUES
(1, 'John Doe', 'johndoe@example.com', '555-1234', '123 Main St'),
(2, 'Jane Smith', 'janesmith@example.com', '555-5678', '456 Broadway');

DELIMITER //
CREATE PROCEDURE list_namess(INOUT name_list VARCHAR(4000))
BEGIN
    DECLARE is_done INTEGER DEFAULT 0;
    DECLARE c_name VARCHAR(100) DEFAULT "Sidharth";
    DECLARE cust_cursor CURSOR FOR SELECT c_name FROM customer;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET is_done = 1;
    OPEN cust_cursor;
    get_list: LOOP
        FETCH cust_cursor INTO c_name;
        IF is_done = 1 THEN 
            LEAVE get_list;
        END IF;
        SET name_list = CONCAT(c_name, ";", name_list);
    END LOOP get_list;
    CLOSE cust_cursor;
END//
DELIMITER ;


SET @name_list="Hiran";
set @c_name = "Sidharth";
CALL list_namess(@name_list);
SELECT @name_list;


select * from customer;