SELECT * FROM property;

SET FOREIGN_KEY_CHECKS=0;
INSERT INTO property(Property_ID, Poperty_Owner_ID, Property_Address_ID, Property_type, Property_Status, Property_Payment, Basement, Property_Floor, Bedrooms, Bathroom, Year_of_built, Square_feet, LandScape, Special_requirement, Posted_date, Available_Date)

VALUES ('1', '1', '1', 'Apartment', 'Not Available', '2000', 'Y', '2', '2', '1', '2008-10-28', '1100', '', 'Pets allowed', '2011-02-02 09:46:00', '2011-02-11'),
	   ('2', '2', '2', 'Townhouse', 'Available', '3000', 'Y', '2', '3', '2', '2008-10-27', '1300', '', 'No Pets allowed', '2010-01-11 10:45:00', '2010-02-15'),
	   ('3', '3', '3', 'House', 'Not Available', '2700', 'N', '3', '3', '2', '2002-10-27', '950', 'waterfront', 'Smoking Prohibited', '2008-11-15 12:30:00', '2008-12-25'),
       ('4', '4', '4', 'House', 'Available', '3300', 'N', '20', '3', '3', '2006-10-27', '1000', '', 'No Loud Music and Pets allowed', '2010-09-23 05:37:00', '2010-10-25'),
       ('5', '5', '5', 'Townhouse', 'Not Available', '3200', 'Y', '2', '4', '2', '2000-10-27', '1600', 'park', '', '2016-10-05 07:00:00', '2016-11-15'),
       ('6', '6', '6', 'Apartment', 'Available', '2200', 'N', '30', '2', '2', '2007-10-27', '800', 'waterfront', 'No Pets allowed', '2012-12-05 12:30:00', '2022-01-10'),
       ('7', '7', '7', 'Apartment', 'Not Available', '1800', 'N', '15', '3', '2', '2005-10-27', '1150', 'skyline', '', '2017-12-05 11:30:00', '2018-01-04'),
       ('8', '8', '8', 'Townhouse', 'Available', '3600', 'N', '3', '4', '3', '2009-10-27', '1450', '', 'Smoking Prohibited', '2017-12-05 07:30:00', '2018-01-05'),
       ('9', '9', '9', 'Apartment', 'Available', '2400', 'N', '27', '3', '1', '2011-10-27', '900', 'Brooklyn Bridge', '', '2015-01-05 09:20:00', '2016-01-14'),
       ('10', '10', '10', 'House', 'Available', '3300', 'Y', '2', '3', '2', '2004-10-27', '1200', 'park', 'No Loud Music', '2016-12-05 10:30:00', '2017-01-05'),
       ('11', '11', '11', 'Apartment', ' Not Available', '1200', 'N', '20', '2', '1', '2010-10-27', '700', '', 'No Pets allowed', '2016-12-05 01:30:00', '2017-01-15'),
       ('12', '12', '12', 'Apartment', 'Not Available', '1800', 'N', '17', '3', '3', '2013-10-27', '1200', 'skyline', '', '2015-12-05 01:40:00', '2016-01-07'),
       ('13', '13', '13', 'House', 'Available', '1600', 'N', '3', '2', '2', '2006-10-27', '900', 'Garden', 'Smoking Prohibited', '2014-12-05 07:00:00', '2014-12-10'),
       ('14', '14', '14', 'Apartment', 'Available', '3600', 'N', '20', '4', '2', '2005-10-27', '1500', 'park', 'No Loud Music and No Smoking', '2019-12-05 06:37:30', '2019-01-21'),
       ('15', '15', '15', 'Townhouse', 'Available', '3600', 'Y', '2', '4', '3', '2004-10-27', '1300', 'waterfront', 'Pets allowed', '2018-12-05 01:15:30', '2022-01-01'),
       ('16', '16', '16', 'Apartment', 'Not Available', '1500', 'N', '35', '1', '1', '2014-10-27', '250', 'hudson river', 'No Pets allowed', '2019-12-05 01:15:00', '2020-01-31'),
       ('17', '17', '17', 'Apartment', 'Available', '1500', 'N', '23', '2', '1', '2012-10-27', '800', 'skyline', 'No Pets allowed', '2021-12-05 10:10:00', '2022-01-19'),
       ('18', '18', '18', 'House', 'Available', '2100', 'Y', '1', '3', '2', '2002-10-27', '1000', 'Mountain', 'No Smoking', '2011-12-05 09:50:00', '2011-12-25'),
       ('19', '19', '19', 'Apartment', 'Available', '1800', 'N', '20', '2', '2', '2011-10-27', '750', 'riverfront', 'Pets allowed', '2013-11-01 03:30:00', '2013-12-05'),
       ('20', '20', '20', 'House', 'Available', '2700', 'N', '2', '3', '3', '2007-10-27', '1100', 'Mountain', 'No Pets allowed', '2019-12-05 12:20:40', '2020-01-05'),
       ('21', '21', '21', 'House', 'Not Available', '1500', 'N', '3', '3', '1', '2013-10-27', '1150', 'Mountain', 'Pets allowed', '2021-12-29 12:20:00', '2022-01-09'),
       ('22', '22', '22', 'Apartment', 'Available', '1000', 'N', '29', '1', '1', '2008-10-27', '315', 'skyline', '', '2017-12-20 10:50:00', '2018-01-07'),
       ('23', '23', '23', 'Townhouse', 'Not Available', '3000', 'N', '2', '4', '2', '2010-10-27', '1300', 'Mountain', 'Smoking Prohibited', '2017-12-11 04:40:00', '2018-01-05'),
       ('24', '24', '24', 'Apartment', 'Available', '2500', 'N', '20', '3', '1', '2017-10-27', '900', 'riverfront', 'No Pets allowed and No Smoking', '2016-12-25 11:30:00', '2017-01-15'),
       ('25', '25', '25', 'House', 'Available', '4500', 'Y', '3', '5', '3', '2008-10-27', '2500', 'Mountain', 'Pets allowed', '2018-12-15 01:40:00', '2019-01-20')