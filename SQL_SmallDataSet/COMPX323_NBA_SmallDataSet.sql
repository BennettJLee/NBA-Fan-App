-- Teams Data
Insert into Team values ('Celtics', 'Boston', 'TD Garden');	
Insert into Team values ('Mavericks', 'Dallas', 'American Airlines Center');
Insert into Team values ('Lakers', 'Los Angeles', 'Crypto.com Arena');
Insert into Team values ('Bucks', 'Milwaukee', 'Fiserv Forum');
Insert into Team values ('Suns', 'Phoenix', 'Footprint Centre');

-- Person Data
Insert into Person values (1, 'Marcus', 'Smart', TO_DATE('06-03-1994', 'DD-MM-YYYY'));
Insert into Person values (2, 'Luca', 'Doncic', TO_DATE('28-02-1999', 'DD-MM-YYYY'));
Insert into Person values (3, 'D''angelo', 'Russell', TO_DATE('23-02-1996', 'DD-MM-YYYY'));
Insert into Person values (4, 'Jrue', 'Holiday', TO_DATE('12-06-1990', 'DD-MM-YYYY'));
Insert into Person values (5, 'Chris', 'Paul', TO_DATE('06-05-1985', 'DD-MM-YYYY'));
Insert into Person values (6, 'Jalen', 'Brown', TO_DATE('24-10-1996', 'DD-MM-YYYY'));
Insert into Person values (7, 'Kyrie', 'Irving', TO_DATE('23-03-1992', 'DD-MM-YYYY'));
Insert into Person values (8, 'Malik', 'Beasley', TO_DATE('26-11-1996', 'DD-MM-YYYY'));
Insert into Person values (9, 'Grayson', 'Allen', TO_DATE('08-10-1995', 'DD-MM-YYYY'));
Insert into Person values (10, 'Devin', 'Booker', TO_DATE('30-10-1996', 'DD-MM-YYYY'));
Insert into Person values (11, 'Jayson', 'Tatum', TO_DATE('03-03-1998', 'DD-MM-YYYY'));
Insert into Person values (12, 'Josh', 'Green', TO_DATE('06-11-2000', 'DD-MM-YYYY'));
Insert into Person values (13, 'Lebron', 'James', TO_DATE('20-12-1984', 'DD-MM-YYYY'));
Insert into Person values (14, 'Kris', 'Middleton', TO_DATE('12-08-1991', 'DD-MM-YYYY'));
Insert into Person values (15, 'Josh', 'Okogie', TO_DATE('01-09-1998', 'DD-MM-YYYY'));
Insert into Person values (16, 'Al', 'Horford', TO_DATE('03-06-1986', 'DD-MM-YYYY'));
Insert into Person values (17, 'Reggie', 'Bullock', TO_DATE('16-03-1991', 'DD-MM-YYYY'));
Insert into Person values (18, 'Jarred', 'Vanderbilt', TO_DATE('03-04-1999', 'DD-MM-YYYY'));
Insert into Person values (19, 'Giannis', 'Antetokounmpo', TO_DATE('06-12-1994', 'DD-MM-YYYY'));
Insert into Person values (20, 'Kevin', 'Durant', TO_DATE('29-09-1988', 'DD-MM-YYYY'));
Insert into Person values (21, 'Robin', 'Williams III', TO_DATE('17-10-1997', 'DD-MM-YYYY'));
Insert into Person values (22, 'Dwight', 'Powell', TO_DATE('20-07-1991', 'DD-MM-YYYY'));
Insert into Person values (23, 'Anthony', 'Davis', TO_DATE('11-03-1993', 'DD-MM-YYYY'));
Insert into Person values (24, 'Brook', 'Lopez', TO_DATE('01-04-1988', 'DD-MM-YYYY'));
Insert into Person values (25, 'Deandre', 'Ayton', TO_DATE('23-07-1998', 'DD-MM-YYYY'));
Insert into Person values (26, 'Damian', 'Lillard', TO_DATE('15-07-1990', 'DD-MM-YYYY'));
Insert into Person values (27, 'Joel', 'Embiid', TO_DATE('16-03-1994', 'DD-MM-YYYY'));
Insert into Person values (28, 'Kawhi', 'Leonard', TO_DATE('29-06-1991', 'DD-MM-YYYY'));
Insert into Person values (29, 'Tyrese', 'Haliburton', TO_DATE('29-02-2000', 'DD-MM-YYYY'));
Insert into Person values (30, 'Joe', 'Mazzulla', TO_DATE('20-06-1988', 'DD-MM-YYYY'));
Insert into Person values (31, 'Jason', 'Kidd', TO_DATE('13-03-1973', 'DD-MM-YYYY'));
Insert into Person values (32, 'Darvin', 'Ham', TO_DATE('23-07-1973', 'DD-MM-YYYY'));
Insert into Person values (33, 'Mike', 'Budenholzer', TO_DATE('06-08-1969', 'DD-MM-YYYY'));
Insert into Person values (34, 'Monty', 'Williams', TO_DATE('08-10-1971', 'DD-MM-YYYY'));
Insert into Person values (35, 'Damon', 'Stoudamire', TO_DATE('03-09-1973', 'DD-MM-YYYY'));
Insert into Person values (36, 'Quinton', 'Crawford', TO_DATE('18-09-1990', 'DD-MM-YYYY'));
Insert into Person values (37, 'Phil', 'Handy', TO_DATE('24-08-1971', 'DD-MM-YYYY'));

-- Coach data
Insert into Coach values (30, 'Head Coach', 'Celtics');
Insert into Coach values (31, 'Head Coach', 'Mavericks');
Insert into Coach values (32, 'Head Coach', 'Lakers');
Insert into Coach values (33, 'Head Coach', 'Bucks');
Insert into Coach values (34, 'Head Coach', 'Suns');
Insert into Coach values (35, 'Assistant', 'Celtics');
Insert into Coach values (36, 'Assistant', 'Mavericks');
Insert into Coach values (37, 'Assistant', 'Lakers');


-- Player data
Insert into Player values (1, 'PG', '6''4"', 17207142, 1, 'Celtics');
Insert into Player values (2, 'PG', '6''7"', 37096500, 1, 'Mavericks');
Insert into Player values (3, 'PG', '6''4"', 31377750, 1, 'Lakers');
Insert into Player values (4, 'PG', '6''5"', 32544000, 1, 'Bucks');
Insert into Player values (5, 'PG', '6''0"', 28400000, 1, 'Suns');
Insert into Player values (6, 'SG', '6''6"', 26669643, 1, 'Celtics');
Insert into Player values (7, 'SG', '6''2"', 36503300, 1, 'Mavericks');
Insert into Player values (8, 'SG', '6''4"', 15458035, 1, 'Lakers');
Insert into Player values (9, 'SG', '6''4"', 8500000, 1, 'Bucks');
Insert into Player values (10, 'SG', '6''5"', 33833400, 1, 'Suns');
Insert into Player values (11, 'SF', '6''8"', 30351780, 1, 'Celtics');
Insert into Player values (12, 'SF', '6''7"', 3098400, 1, 'Mavericks');
Insert into Player values (13, 'SF', '6''9"', 44474988, 1, 'Lakers');
Insert into Player values (14, 'SF', '6''7"', 37948276, 1, 'Bucks');
Insert into Player values (15, 'SF', '6''4"', 1968175, 1, 'Suns');
Insert into Player values (16, 'PF', '6''9"', 26500000, 1, 'Celtics');
Insert into Player values (17, 'PF', '6''6"', 10012800, 1, 'Mavericks');
Insert into Player values (18, 'PF', '6''8"', 4320000, 1, 'Lakers');
Insert into Player values (19, 'PF', '7''0"', 42492492, 1, 'Bucks');
Insert into Player values (20, 'PF', '6''10"', 42969845, 1, 'Suns');
Insert into Player values (21, 'C', '6''9"', 10714287, 1, 'Celtics');
Insert into Player values (22, 'C', '6''10"', 11080125, 1, 'Mavericks');
Insert into Player values (23, 'C', '6''10"', 37980720, 1, 'Lakers');
Insert into Player values (24, 'C', '6''11"', 13906976, 1, 'Bucks');
Insert into Player values (25, 'C', '7''0"', 30913750, 1, 'Suns');
Insert into Player values (26, 'PG', '6''2"', 0, 0, NULL);
Insert into Player values (27, 'C', '7''0"', 0, 0, NULL);
Insert into Player values (28, 'SF', '6''7"', 0, 0, NULL);
Insert into Player values (29, 'SG', '6''5"', 0, 0, NULL);

-- Statistics Data
Insert into Statistics values (1, 1, 11.4, 3.4, 6.7, 41.3);
Insert into Statistics values (2, 2, 33.3, 8.7, 8.0, 50.3);
Insert into Statistics values (3, 3, 17.6, 3.1, 6.1, 46.4);
Insert into Statistics values (4, 4, 19.9, 5.1, 7.3, 47.7);
Insert into Statistics values (5, 5, 13.4, 4.2, 9.0, 42.5);
Insert into Statistics values (6, 6, 26.6, 7.0, 3.3, 48.6);
Insert into Statistics values (7, 7, 27.2, 5.1, 5.6, 49.3);
Insert into Statistics values (8, 8, 13.2, 3.6, 1.7, 39.4);
Insert into Statistics values (9, 9, 10.6, 3.3, 2.4, 44.8);
Insert into Statistics values (10, 10, 27.2, 4.6, 5.8, 48.1);
Insert into Statistics values (11, 11, 30.3, 8.9, 4.8, 46.0);
Insert into Statistics values (12, 12, 8.9, 2.8, 1.6, 53.6);
Insert into Statistics values (13, 13, 29.5, 8.4, 6.9, 50.1);
Insert into Statistics values (14, 14, 13.7, 4.1, 4.4, 42.3);
Insert into Statistics values (15, 15, 6.9, 3.3, 1.2, 41.2);
Insert into Statistics values (16, 16, 9.8, 6.3, 2.7, 48.1);
Insert into Statistics values (17, 17, 7.1, 3.5, 1.4, 40.1);
Insert into Statistics values (18, 18, 8.2, 7.9, 2.6, 55.3);
Insert into Statistics values (19, 19, 31.2, 11.9, 5.5, 53.9);
Insert into Statistics values (20, 20, 29.5, 6.8, 5.2, 56.6);
Insert into Statistics values (21, 21, 8.4, 8.6, 1.5, 75.0);
Insert into Statistics values (22, 22, 6.7, 4.3, 0.8, 72.2);
Insert into Statistics values (23, 23, 26.5, 12.5, 2.5, 56.3);
Insert into Statistics values (24, 24, 15.1, 6.6, 1.3, 51.4);
Insert into Statistics values (25, 25, 18.3, 10.2, 1.9, 59.2);
Insert into Statistics values (26, 26, 0, 0, 0, 0);
Insert into Statistics values (27, 27, 0, 0, 0, 0);
Insert into Statistics values (28, 28, 0, 0, 0, 0);
Insert into Statistics values (29, 29, 0, 0, 0, 0);

-- Game Data
Insert into Game values (TO_DATE('06-01-2023', 'DD-MM-YYYY'), 'Celtics', 124, 'Mavericks', 120);
Insert into Game values (TO_DATE('08-01-2023', 'DD-MM-YYYY'), 'Mavericks', 110, 'Lakers', 116);
Insert into Game values (TO_DATE('10-01-2023', 'DD-MM-YYYY'), 'Lakers', 102, 'Bucks', 96);
Insert into Game values (TO_DATE('12-01-2023', 'DD-MM-YYYY'), 'Bucks', 108, 'Suns', 101);
Insert into Game values (TO_DATE('14-01-2023', 'DD-MM-YYYY'), 'Suns', 114, 'Celtics', 111);
Insert into Game values (TO_DATE('16-01-2023', 'DD-MM-YYYY'), 'Celtics', 99, 'Lakers', 97);
Insert into Game values (TO_DATE('18-01-2023', 'DD-MM-YYYY'), 'Mavericks', 123, 'Bucks', 127);
Insert into Game values (TO_DATE('20-01-2023', 'DD-MM-YYYY'), 'Lakers', 108, 'Suns', 97);
Insert into Game values (TO_DATE('22-01-2023', 'DD-MM-YYYY'), 'Bucks', 114, 'Celtics', 111);
Insert into Game values (TO_DATE('24-01-2023', 'DD-MM-YYYY'), 'Suns', 119, 'Mavericks', 121);