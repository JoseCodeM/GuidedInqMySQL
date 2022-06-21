SELECT * FROM guidedInquiry.Easy;

INSERT INTO `guidedInquiry`.`Easy` (`Title`, `Publish Date`, `Author`) VALUES ('Uzumaki','January 19, 1998','Junji Ito');
INSERT INTO `guidedInquiry`.`Easy` (`Title`, `Publish Date`, `Author`) VALUES ('Naruto Shippuden','September 21, 1999','Masashi Kishimoto');

DELETE FROM `guidedInquiry`.`Easy` WHERE `Publish Date` = 'July 22, 1997';

SELECT COUNT(TITLE)
FROM guidedInquiry.Easy;
