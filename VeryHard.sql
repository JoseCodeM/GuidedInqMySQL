SELECT * FROM guidedInquiry.VeryHard;

CREATE TABLE VeryHard LIKE VeryEasy

INSERT INTO VeryHard SELECT * FROM VeryEasy

INSERT INTO `guidedInquiry`.`VeryHard` (`Make`, `Model`, `Year`) VALUES ('Jaguar', 'Type-F', '2019');
INSERT INTO `guidedInquiry`.`VeryHard` (`Make`, `Model`, `Year`) VALUES ('Subaru', 'Wrx', '2013');
INSERT INTO `guidedInquiry`.`VeryHard` (`Make`, `Model`, `Year`) VALUES ('Ford', 'F-150', '2022');

ALTER TABLE VeryHard
	ADD COLUMN Prices INT AFTER Year;

ALTER TABLE VeryHard
ADD COLUMN Colors INT AFTER Prices;

 ALTER TABLE VeryHard
 ADD COLUMN FullName INT AFTER Colors;

 UPDATE VeryHard SET FullName = CONCAT(Make, ' ', Model);

ALTER TABLE VeryHard 
ADD COLUMN Results VARCHAR(50) AFTER FullName;


