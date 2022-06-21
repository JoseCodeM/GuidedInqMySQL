SELECT * FROM guidedInquiry.hard;

CREATE TABLE hard LIKE Medium

INSERT INTO hard SELECT * FROM Medium

ALTER TABLE hard 
	ADD FirstName varchar(40) NOT NULL
		AFTER Rating;

ALTER TABLE hard 
	ADD LastName varchar(40) NOT NULL
		AFTER FirstName;

UPDATE `guidedInquiry`.`hard` SET `FirstName` = 'Michael', `LastName` = 'Bay' WHERE (`Title` = 'Armageddon ');
UPDATE `guidedInquiry`.`hard` SET `FirstName` = 'Michael', `LastName` = 'Bay' WHERE (`Title` = 'Bad Boys');
UPDATE `guidedInquiry`.`hard` SET `FirstName` = 'Christopher', `LastName` = 'Nolan' WHERE (`Title` = 'Interstellar');
UPDATE `guidedInquiry`.`hard` SET `FirstName` = 'Oran', `LastName` = 'Peli' WHERE (`Title` = 'Paranormal Activity');
UPDATE `guidedInquiry`.`hard` SET `FirstName` = 'Keenan', `LastName` = 'Wayans' WHERE (`Title` = 'Scary Movie 1');
UPDATE `guidedInquiry`.`hard` SET `FirstName` = 'Keenan', `LastName` = 'Wayans' WHERE (`Title` = 'Scary Movie 2');
UPDATE `guidedInquiry`.`hard` SET `FirstName` = 'Vicky', `LastName` = 'Jenson' WHERE (`Title` = 'Shrek');
UPDATE `guidedInquiry`.`hard` SET `FirstName` = 'Sam', `LastName` = 'Raimi' WHERE (`Title` = 'Spider-Man 3');
UPDATE `guidedInquiry`.`hard` SET `FirstName` = 'Tobe', `LastName` = 'Hooper' WHERE (`Title` = 'Texas Chainsaw Massacre');
UPDATE `guidedInquiry`.`hard` SET `FirstName` = 'Justin', `LastName` = 'Lin' WHERE (`Title` = 'Tokyo Drift');

ALTER TABLE Hard 
	ADD FullName varchar(40) NOT NULL
		AFTER LastName;

UPDATE Hard SET FullName = CONCAT(FirstName, ' ', LastName)

SELECT * FROM guidedInquiry.hard
ORDER BY `FullName` ASC;

