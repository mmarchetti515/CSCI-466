SELECT CONCAT('DROP TABLE IF EXISTS `', TABLE_SCHEMA, '`.`', TABLE_NAME, '`;')
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'mydb';

CREATE TABLE 'dog' (
    'dog_id' CHAR(8) UNIQUE PRIMARY KEY,
    'breed' CHAR DEFAULT 'unknown',
    'name' VARCHAR(30) NOT NULL, #store up to 30 characters
    'weight' FLOAT NULL, #imperial pounds
    # still need the second part of the 2nd req
);

INSERT INTO 'dog' 
    VALUES  (12345678, German Shepherd, Gunner, 70);
INSERT INTO 'dog' 
    VALUES  (23546789, Siberian Husky, Smokey, 60);
INSERT INTO 'dog'
    ('dog_id', 'name', 'weight')
    VALUES  (09872455, Claire, 45);
INSERT INTO 'dog' 
    VALUES (92873434, Australian Shepherd, Cody, 35);
INSERT INTO 'dog' 
    VALUES (09825375, Sewer Rat, Remmy, 8);
INSERT INTO 'dog'
    VALUES (09823485, Big Red, Clifford, 10000);

DESCRIBE 'dog';

SELECT * FROM 'dog';

CREATE TABLE 'Visit' (
    'visit_id' CHAR(10) UNIQUE PRIMARY KEY,
    'dog_id' CHAR(8) UNIQUE NOT NULL,
    'visit_date' DATETIME NOT NULL,
    'visit_end_time' DATETIME NOT NULL,

    FOREIGN KEY (dog_id) REFERENCES dog(dog_id);
);

INSERT INTO 'Visit'
    VALUES (0000000000, 12345678, 2022-02-15 13:00:00, 2022-02-15 15:00:00);
INSERT INTO 'Visit'
    VALUES (0000000001, 23546789, 2022-02-14 15:30:00, 2022-02-14 16:00:00);
INSERT INTO 'Visit'
    VALUES (0000000002, 92873434, 2022-02-27 12:00:00, 2022-02-15 13:30:00);
INSERT INTO 'Visit'
    VALUES (0000000003, 09872455, 2022-02-05 09:00:00, 2022-02-15 12:00:00);
INSERT INTO 'Visit'
    VALUES (0000000004, 09823485, 2022-01-13 15:00:00, 2022-02-15 16:00:00);
INSERT INTO 'Visit'
    VALUES (0000000005, 92873434, 2022-02-05 10:45:00, 2022-02-15 12:00:00);
INSERT INTO 'Visit'
    VALUES (0000000006, 09825375, 2022-02-05 14:30:00, 2022-02-15 15:15:00);
INSERT INTO 'Visit'
    VALUES (0000000007, 12345678, 2022-02-05 16:00:00, 2022-02-15 17:00:00);
INSERT INTO 'Visit'
    VALUES (0000000008, 09872455, 2022-02-05 10:15:00, 2022-02-15 11:15:00);

DESCRIBE 'Visit';

SELECT * FROM 'Visit';

ALTER TABLE 'Visit' ADD 'visit_bill' FLOAT NOT NULL;
