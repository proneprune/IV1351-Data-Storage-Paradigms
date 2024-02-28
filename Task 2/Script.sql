INSERT INTO student_sibling (student_id,sibling_id)
OVERRIDING SYSTEM VALUE
VALUES
  ('1','10'),
  ('2','9'),
  ('3','8'),
  ('4','7');

INSERT INTO student_contact_person (student_id,contact_person_id)
OVERRIDING SYSTEM VALUE
VALUES
  ('5','1'),
  ('3','3'),
  ('7','6'),
  ('4','4');

INSERT INTO student_individual (student_id,individual_id)
OVERRIDING SYSTEM VALUE
VALUES
  ('10','1'),
  ('8','2'),
  ('3','3'),
  ('7','4');

INSERT INTO instructor_individual (instructor_id,individual_id)
OVERRIDING SYSTEM VALUE
VALUES
  ('1','1'),
  ('3','2'),
  ('3','3'),
  ('4','4');

INSERT INTO student_groupl (student_id,group_id)
OVERRIDING SYSTEM VALUE
VALUES
  ('1','5'),
  ('9','10'),
  ('1','9'),
  ('4','7');

INSERT INTO instructor_groupl (instructor_id,group_id)
OVERRIDING SYSTEM VALUE
VALUES
  ('1','4'),
  ('7','3'),
  ('5','2'),
  ('4','1');

INSERT INTO student_ensemble (student_id,ensemble_id)
OVERRIDING SYSTEM VALUE
VALUES
  ('8','4'),
  ('7','3'),
  ('3','10'),
  ('4','1');

INSERT INTO instructor_ensemble (instructor_id,ensemble_id)
OVERRIDING SYSTEM VALUE
VALUES
  ('6','1'),
  ('5','9'),
  ('1','7'),
  ('9','2');
  
  
  INSERT INTO ensamble (genre,location,minimum_amount_students,maximum_amount_students,time_slot)
VALUES
  ('kpop','KA-304',7,24,'16:41'),
  ('rock','KA-303',1,15,'11:18'),
  ('classical','KA-303',1,21,'7:18'),
  ('pop','KA-301',9,20,'18:07'),
  ('kpop','KA-301',3,22,'15:50'),
  ('classical','KA-301',8,25,'23:50'),
  ('kpop','KA-304',6,11,'6:46'),
  ('rock','KA-301',4,17,'8:39'),
  ('kpop','KA-303',2,22,'20:00'),
  ('rock','KA-303',4,16,'0:09');
  
  INSERT INTO individual (appointed_time,skill,instrument_type,price,location)
VALUES
  ('16:53','beginner','guitarr',39,'KA-305'),
  ('6:49','intermediate','violin',137,'KA-305'),
  ('15:34','beginner','violin',22,'KA-301'),
  ('20:37','beginner','piano',123,'KA-303'),
  ('19:40','advanced','bass',153,'KA-304'),
  ('8:31','beginner','violin',160,'KA-302'),
  ('14:45','beginner','drums',41,'KA-302'),
  ('17:31','advanced','bass',120,'KA-301'),
  ('7:05','beginner','drums',63,'KA-302'),
  ('10:35','beginner','guitarr',34,'KA-301');
  
  INSERT INTO groupl (minimum_amount_of_students,time_slot,skill,instrument_type,price,location)
VALUES
  (10,'1:17','advanced','guitarr',104,'KA-302'),
  (6,'3:43','advanced','drums',114,'KA-302'),
  (2,'11:56','beginner','violin',64,'KA-302'),
  (8,'1:57','beginner','drums',154,'KA-303'),
  (5,'20:00','intermediate','piano',5,'KA-303'),
  (3,'5:31','advanced','piano',98,'KA-305'),
  (7,'7:15','beginner','drums',52,'KA-304'),
  (2,'15:41','intermediate','guitarr',106,'KA-301'),
  (4,'15:06','advanced','guitarr',43,'KA-303'),
  (5,'15:19','advanced','bass',180,'KA-302');
  
  INSERT INTO rental (rental_start,rental_end,rental_fee,delivery,student_id,instrument_id)
OVERRIDING SYSTEM VALUE
VALUES
  ('27/11/2022','04/03/2023',44,'358-2413 Sed Street',1,1),
  ('21/12/2023','19/02/2023',56,'704-3147 Congue Ave',2,2),
  ('26/07/2023','29/10/2023',75,'828-8059 Pharetra St.',3,3),
  ('14/03/2023','15/10/2023',50,'Ap #329-7766 Auctor Rd.',4,4),
  ('05/02/2023','30/07/2024',36,'581-5474 Vestibulum Avenue',5,5),
  ('11/12/2022','26/08/2024',69,'P.O. Box 613, 4632 Felis Road',6,6),
  ('05/11/2023','12/04/2024',42,'P.O. Box 888, 5438 Tellus Av.',7,7),
  ('20/12/2023','29/10/2024',1,'Ap #200-6184 Vitae Road',8,8),
  ('04/04/2023','13/11/2024',68,'359-6197 Neque. St.',9,9),
  ('23/08/2023','01/04/2023',81,'126-9366 Fusce Avenue',10,10); 

INSERT INTO payment (total_amount,payment_date,sibling_discount,student_id,instructor_id)
OVERRIDING SYSTEM VALUE
VALUES
  (86,'04/20/24','0',1,1),
  (198,'02/26/23','25',1,4),
  (19,'04/22/23','25',4,2),
  (183,'04/01/23','25',2,6),
  (152,'02/08/23','0',7,8),
  (42,'09/24/23','0',2,5),
  (40,'10/29/22','25',5,9),
  (166,'08/08/23','25',3,10),
  (4,'08/27/22','25',6,2),
  (151,'03/08/23','0',10,8);


INSERT INTO contact_person (contact_details)
VALUES
  ('1-840-876-6862'),
  ('(428) 812-7892'),
  ('1-648-965-1631'),
  ('1-487-593-4521'),
  ('(369) 485-6045'),
  ('(697) 304-1656'),
  ('(166) 712-1498'),
  ('(901) 847-1617'),
  ('1-825-237-1330'),
  ('1-164-562-4402');
  
  
  
  
  INSERT INTO instructor (person_number,name,contact_details,address,number_of_lessons,teachable_ensembles,teachable_instrument)
VALUES
  (199006357730,'Naida Branch','1-785-134-4526','371-6197 Enim, Rd.',2,1,1),
  (199009795152,'Ava Norton','(179) 916-8552','385-5574 Dolor Ave',6,8,6),
  (199004603133,'Craig Delgado','1-567-896-4877','Ap #559-2823 Eget Street',4,2,3),
  (199001491038,'Sigourney King','1-539-682-5969','P.O. Box 587, 6423 Cursus. Rd.',10,7,7),
  (199008616585,'Jescie Roy','(216) 649-5588','Ap #890-1171 Tempus Ave',3,4,3),
  (199004088165,'Kevin Stark','(128) 663-1870','Ap #401-8788 Sem, Av.',3,2,6),
  (199003355150,'Marah Hoover','(414) 955-8768','Ap #543-2463 Eu, Avenue',4,3,8),
  (199007502895,'Carlos Owens','(465) 829-9113','P.O. Box 290, 2035 Eget Road',4,2,2),
  (199002980851,'Chelsea Baxter','1-576-990-8222','368-4869 Pellentesque St.',6,1,5),
  (199002766291,'Candace Pickett','(622) 878-8665','841-7168 Libero. Street',8,6,6); 
  
  
  
  INSERT INTO sibling (person_number)
VALUES
  (190551065296),
  (192933121687),
  (194492614019),
  (198997675542),
  (198721344324),
  (197989576018),
  (190955563273),
  (197742402362),
  (195651231113),
  (191023439674);
  
  
  INSERT INTO instrument (stock,brand,instrument_type)
VALUES
  (9,'Sennheiser','Piano'),
  (5,'Yamaha','Bass'),
  (9,'Yamaha','Guitar'),
  (10,'Gibson','Flute'),
  (4,'Gibson','Drums'),
  (2,'Sennheiser','Flute'),
  (4,'Fender','Guitar'),
  (2,'Fender','Bass'),
  (3,'Fender','Piano'),
  (9,'Yamaha','Piano');
  
  INSERT INTO student (name,address,contact_details,person_number)
VALUES
  ('Savannah Michael','Ap #529-8170 Dolor Ave','1-284-287-6901',199008345505),
  ('Len Boyer','2332 Orci, Street','1-326-736-5851',199007618845),
  ('Kasper Romero','P.O. Box 375, 7839 Auctor. Ave','1-918-644-0107',199011807958),
  ('Halla Allen','Ap #312-8098 In Avenue','1-856-488-2287',199011453150),
  ('Claudia Robles','P.O. Box 292, 8871 Rutrum St.','1-457-443-5408',199007913957),
  ('Aidan Talley','Ap #137-5566 Pede, Rd.','1-222-841-3337',199006822999),
  ('Noelani Mckinney','P.O. Box 565, 4217 Ac, St.','1-263-319-5046',199010832043),
  ('Fatima Little','4062 Risus Rd.','(644) 103-2631',199001757965),
  ('Hayden Carter','791-2194 Magna. Street','(643) 459-4486',199002297491),
  ('Alexis Dejesus','606-6104 Ligula Rd.','1-507-674-8692',199010698866);
  