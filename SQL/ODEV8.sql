--1
CREATE TABLE employee(
	id INTEGER,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
);





SELECT * FROM employee;

--2
/*
insert into employee (id, name, birthday, email) values (1, 'Elinor', '13/02/2023', 'emaypes0@engadget.com');
insert into employee (id, name, birthday, email) values (2, 'Aliza', '08/10/2022', 'aeidelman1@virginia.edu');
insert into employee (id, name, birthday, email) values (3, 'Godfry', '08/05/2022', 'gbarkhouse2@woothemes.com');
insert into employee (id, name, birthday, email) values (4, 'Fletcher', '08/10/2022', 'fduly3@icq.com');
insert into employee (id, name, birthday, email) values (5, 'Waite', '23/12/2022', 'wliversley4@arstechnica.com');
insert into employee (id, name, birthday, email) values (6, 'Gabriele', '17/02/2023', 'gisson5@prlog.org');
insert into employee (id, name, birthday, email) values (7, 'Maryjane', '21/12/2022', 'msoutar6@bizjournals.com');
insert into employee (id, name, birthday, email) values (8, 'Janeva', '09/12/2022', 'jwasielewski7@1und1.de');
insert into employee (id, name, birthday, email) values (9, 'Shane', '09/08/2022', 'swethered8@cloudflare.com');
insert into employee (id, name, birthday, email) values (10, 'Bertha', '26/02/2022', 'bbonney9@google.com.br');
insert into employee (id, name, birthday, email) values (11, 'Ichabod', '03/09/2022', 'ihurleya@deliciousdays.com');
insert into employee (id, name, birthday, email) values (12, 'Felipa', '10/06/2022', 'fdorlingb@netvibes.com');
insert into employee (id, name, birthday, email) values (13, 'Catlaina', '19/10/2022', 'clangmeadc@blogs.com');
insert into employee (id, name, birthday, email) values (14, 'Basile', '08/01/2023', 'bbeaversd@squarespace.com');
insert into employee (id, name, birthday, email) values (15, 'Kaleena', '03/10/2022', 'kmcmilliane@java.com');
insert into employee (id, name, birthday, email) values (16, 'Martita', '20/10/2022', 'msiccombef@amazonaws.com');
insert into employee (id, name, birthday, email) values (17, 'Barth', '01/02/2023', 'bpeverellg@example.com');
insert into employee (id, name, birthday, email) values (18, 'Cindi', '27/03/2022', 'caristideh@miitbeian.gov.cn');
insert into employee (id, name, birthday, email) values (19, 'Henri', '10/02/2023', 'haldersleyi@yahoo.co.jp');
insert into employee (id, name, birthday, email) values (20, 'Ava', '26/11/2022', 'alissemorej@jugem.jp');
insert into employee (id, name, birthday, email) values (21, 'Claudette', '04/02/2023', 'cgouldsmithk@whitehouse.gov');
insert into employee (id, name, birthday, email) values (22, 'Gustav', '14/12/2022', 'gcraytonl@google.cn');
insert into employee (id, name, birthday, email) values (23, 'Hazel', '03/07/2022', 'holdcroftm@hhs.gov');
insert into employee (id, name, birthday, email) values (24, 'Alyosha', '03/10/2022', 'abaudessonn@constantcontact.com');
insert into employee (id, name, birthday, email) values (25, 'Kitty', '22/05/2022', 'kdowallo@bloglovin.com');
insert into employee (id, name, birthday, email) values (26, 'Mollee', '11/05/2022', 'mclethrop@timesonline.co.uk');
insert into employee (id, name, birthday, email) values (27, 'Celesta', '11/07/2022', 'cbernardonq@berkeley.edu');
insert into employee (id, name, birthday, email) values (28, 'Hatty', '14/11/2022', 'hgopsellr@ask.com');
insert into employee (id, name, birthday, email) values (29, 'Hallie', '11/01/2023', 'hedgellers@engadget.com');
insert into employee (id, name, birthday, email) values (30, 'Audie', '07/07/2022', 'ascogingst@flavors.me');
insert into employee (id, name, birthday, email) values (31, 'Thayne', '08/08/2022', 'tjeskeu@google.nl');
insert into employee (id, name, birthday, email) values (32, 'Kendall', '29/10/2022', 'krouxv@about.me');
insert into employee (id, name, birthday, email) values (33, 'Daisi', '03/08/2022', 'dchelleyw@cbc.ca');
insert into employee (id, name, birthday, email) values (34, 'Gaston', '24/01/2023', 'gbenediktovichx@springer.com');
insert into employee (id, name, birthday, email) values (35, 'Nanice', '15/03/2022', 'ngilleany@bravesites.com');
insert into employee (id, name, birthday, email) values (36, 'Reider', '28/09/2022', 'rvermerz@wunderground.com');
insert into employee (id, name, birthday, email) values (37, 'Kaspar', '24/02/2022', 'kcovell10@cnbc.com');
insert into employee (id, name, birthday, email) values (38, 'Terri', '22/02/2022', 'tgourley11@cdc.gov');
insert into employee (id, name, birthday, email) values (39, 'Shannah', '22/01/2023', 'scrosgrove12@nps.gov');
insert into employee (id, name, birthday, email) values (40, 'Lydia', '08/03/2022', 'lbudd13@wiley.com');
insert into employee (id, name, birthday, email) values (41, 'Kirsten', '24/12/2022', 'kbatterbee14@delicious.com');
insert into employee (id, name, birthday, email) values (42, 'Anallise', '07/04/2022', 'asprott15@xing.com');
insert into employee (id, name, birthday, email) values (43, 'Reade', '07/01/2023', 'rallmen16@sciencedaily.com');
insert into employee (id, name, birthday, email) values (44, 'Eleen', '05/11/2022', 'ebrechin17@sphinn.com');
insert into employee (id, name, birthday, email) values (45, 'Korney', '04/06/2022', 'kvaughn18@lulu.com');
insert into employee (id, name, birthday, email) values (46, 'Traci', '25/09/2022', 'ttunuy19@bbc.co.uk');
insert into employee (id, name, birthday, email) values (47, 'Karlee', '08/06/2022', 'kdauncey1a@friendfeed.com');
insert into employee (id, name, birthday, email) values (48, 'Amandie', '29/12/2022', 'aforster1b@infoseek.co.jp');
insert into employee (id, name, birthday, email) values (49, 'Samaria', '20/01/2023', 'sforbes1c@clickbank.net');
insert into employee (id, name, birthday, email) values (50, 'Klemens', '24/02/2022', 'kelsegood1d@jimdo.com');
*/

--3

UPDATE employee 
SET name = 'Candy',
	birthday = '21/03/2022',
	email = 'cburgum0@weebly.com'
WHERE id = 10;

UPDATE employee 
SET name = 'Sampson',
	birthday = '04/09/2022',
	email = 'seldered1@mac.com'
WHERE id = 6;

UPDATE employee 
SET name = 'Tammie',
	birthday = '24/01/2023',
	email = 'telwel4@ning.com'
WHERE id = 22;

UPDATE employee 
SET name = 'Shelly',
	birthday = '19/04/2022',
	email = 'shelliar2@ask.com'
WHERE id = 32;

UPDATE employee 
SET name = 'Tessi',
	birthday = '20/06/2022',
	email = 'tjoselovitch3@stanford.edu'
WHERE id = 18;

--4

DELETE FROM employee WHERE id = 44;
DELETE FROM employee WHERE id = 48;
DELETE FROM employee WHERE id = 14;
DELETE FROM employee WHERE id = 28;
DELETE FROM employee WHERE id = 2;
