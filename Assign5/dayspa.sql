-- tables for all entities in ER Diagram for spa
CREATE TABLE `clients` (
	`account_id` INT DEFAULT NULL,
	`email` TEXT DEFAULT NULL,
	`address` TEXT DEFAULT NULL,
	`name` TEXT DEFAULT NULL,
	`phone_number` INT DEFAULT NULL COMMENT 'stored with no dashes'
);

CREATE TABLE `services_offered` (
	`service_sku` INT unsigned DEFAULT NULL,
	`manicures` TEXT DEFAULT NULL,
	`massages` TEXT DEFAULT NULL,
	`waxes` TEXT DEFAULT NULL,
	`makeup` TEXT DEFAULT NULL COMMENT 'stored with no dashes',
	`hair` TEXT DEFAULT NULL,
	`price` DOUBLE unsigned DEFAULT NULL
);

CREATE TABLE `employee` (
	`name` TEXT DEFAULT NULL,
	`job_title` TEXT DEFAULT NULL,
	`speciality` TEXT DEFAULT NULL,
	`pay_rate` DOUBLE unsigned DEFAULT NULL COMMENT 'stored with no dashes',
	`emp_id` INT unsigned DEFAULT NULL
);

CREATE TABLE `schedule` (
	`emp_link` TEXT DEFAULT NULL COMMENT 'used to link the employee to their schedule',
	`date` DATETIME DEFAULT NULL COMMENT 'used to store both date and time of event'
);