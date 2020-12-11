#a
CREATE TABLE Store (
	`order_no` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `code` VARCHAR(20) NOT NULL,
    `item` VARCHAR(30) NOT NULL,
    `quantity` INTEGER UNSIGNED DEFAULT 1,
    `price` DECIMAL(10,2) NOT NULL,
    `discount` DECIMAL(2,2) DEFAULT 0,
    `mrp` DECIMAL(10,2) NOT NULL
);


#b
INSERT INTO Store ('ordeer_no', `code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES (10023, "KA21", "SOAP", 2, 20, 0, 20),(22134, "BO12", "NOTEBOOK", 10, 45, 0.1, 50);

#c
SELECT * FROM Store;


#d
CREATE VIEW CART AS
SELECT `item`, `quantity` FROM Store;

#e
INSERT INTO Store ('ordeer_no', `code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES (15963, "PS22", "PASTE", 10, 5000, 0, 5000);

SELECT * FROM CART;

#f
DROP VIEW CART;