-- Create Tables --
CREATE TABLE member (
	id serial primary key,
	membership_id varchar(255),
	member_name varchar(255),
	member_email varchar(255),
	member_dob date,
	member_contact varchar(8)
);

CREATE TABLE product (
	id serial primary key,
	product_name varchar(255),
	manufacturer_name varchar(255),
	product_cost numeric(18,2),
	product_weight numeric (18,2)
);

CREATE TABLE product_sold (
	id serial primary key,
	receipt_id integer,
	product_id integer
);

CREATE TABLE receipt (
	id serial primary key,
	membership_id varchar(255),
	total_price numeric(18,2),
	total_weight numeric(18,2)
);

-- Insert Member data
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Smith_c7677','Patty Smith','Patty_Smith@ross.com', DATE '1975-08-27','59428759');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Wang_04168','Sean Wang DDS','Sean_Wang@gibson-calderon.com', DATE '1960-03-11','25595367');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Estrada_0bf5b','Richard Estrada','Richard_Estrada@malone.com', DATE '1992-10-15','22821527');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Cline_825fb','Jackson Cline','Jackson_Cline@hudson.net', DATE '1971-01-21','48056519');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Williams_3e726','Allen Williams','Allen_Williams@sanchez.net', DATE '1997-11-09','77991519');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Flores_f6828','Eric Flores','Eric_Flores@dillon-patterson.com', DATE '1982-01-07','36641663');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Richardson_ef158','Anna Richardson','Anna_Richardson@perry.com', DATE '1967-02-23','64083047');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Smith_9625b','Benjamin Smith','Benjamin_Smith@christian-contreras.com', DATE '1987-12-23','95835639');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Gomez_876bf','Taylor Gomez','Taylor_Gomez@johnston.com', DATE '1982-10-22','24007567');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Rodriguez_93ac7','Jeremy Rodriguez','Jeremy_Rodriguez@roth.com', DATE '1978-08-28','32567967');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Garcia_26b55','April Garcia','April_Garcia@hall.com', DATE '1987-12-31','24650447');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Garza_40199','Sharon Garza','Sharon_Garza@duran.com', DATE '2002-08-30','59411567');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Sanchez_364a7','Lori Sanchez','Lori_Sanchez@hardin-warner.net', DATE '1998-04-20','76989167');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Reed_3bc34','Joseph Reed','Joseph_Reed@kelley.com', DATE '1951-12-20','18798163');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Armstrong_e2fb8','Jason Armstrong','Jason_Armstrong@curtis.com', DATE '1992-11-16','68514503');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Allison_0c21b','Jessica Allison','Jessica_Allison@harper.com', DATE '1972-10-30','66821135');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Hall_5eccd','Arthur Hall MD','Arthur_Hall@gonzalez.com', DATE '1994-03-11','65493407');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Meza_5bcfa','Sherry Meza','Sherry_Meza@west.com', DATE '1997-04-09','33491119');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Turner_0303a','Matthew Turner','Matthew_Turner@martinez.com', DATE '1994-07-07','73291455');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Bauer_18f68','Jeffrey Bauer','Jeffrey_Bauer@garza.com', DATE '1966-08-13','51154803');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Randolph_76c7a','Sophia Randolph','Sophia_Randolph@leonard-ramirez.com', DATE '1950-08-07','94510479');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Matthews_2a414','Marissa Matthews','Marissa_Matthews@graves.com', DATE '1972-02-21','20636447');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Thompson_8382b','Dr. Samuel Thompson','Samuel_Thompson@sanchez-carroll.com', DATE '1984-03-04','99063183');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Lee_76cce','Zachary Lee','Zachary_Lee@smith.com', DATE '1987-07-04','36447751');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Pittman_44c4d','Kara Pittman','Kara_Pittman@gomez-vaughn.com', DATE '1968-05-25','80502567');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Ruiz_1546f','Charles Ruiz','Charles_Ruiz@sullivan-jones.com', DATE '1968-01-13','85158255');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Shaw_45468','Rachel Shaw','Rachel_Shaw@stevenson-martinez.com', DATE '1958-12-23','66511687');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Miller_d11a8','James Miller','James_Miller@nguyen.com', DATE '1971-08-31','64917031');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Anthony_ebd30','Gabriella Anthony','Gabriella_Anthony@castro.com', DATE '1997-01-06','89108943');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Cantrell_b19eb','Misty Cantrell','Misty_Cantrell@flores-decker.com', DATE '1957-03-03','79619831');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Guerrero_d55cb','Kelly Guerrero','Kelly_Guerrero@riggs.com', DATE '1997-02-03','53052583');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Nichols_9226a','David Nichols','David_Nichols@rocha.com', DATE '1962-08-19','62269575');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Galloway_1a4d2','Shawn Galloway','Shawn_Galloway@johnston.com', DATE '1985-04-19','17471367');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Salazar_88b5f','Fernando Salazar','Fernando_Salazar@humphrey.com', DATE '1972-04-19','71192443');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Sanford_c7e24','Dennis Sanford','Dennis_Sanford@lopez-archer.com', DATE '1980-08-06','88084407');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Murphy_0851c','Amanda Murphy','Amanda_Murphy@bright-gibbs.net', DATE '2000-07-30','30501351');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Martin_35f44','Bobby Martin','Bobby_Martin@jackson.com', DATE '2000-03-31','43871143');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Jones_3cea3','Lauren Jones','Lauren_Jones@castaneda.com', DATE '1987-07-24','96512831');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Bishop_b0506','Vernon Bishop','Vernon_Bishop@clark-larson.com', DATE '1973-07-10','78396487');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Meyers_2871d','Phillip Meyers','Phillip_Meyers@mcneil-williams.com', DATE '1960-10-22','95409119');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Strickland_c13f0','Jeremy Strickland','Jeremy_Strickland@adkins.com', DATE '1950-12-23','20151487');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Martin_6f48d','Robert Martin','Robert_Martin@crawford.com', DATE '1950-07-18','78547615');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Davis_7d08d','Marc Davis','Marc_Davis@harris.com', DATE '1980-05-20','96597403');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Taylor_4fbc5','William Taylor','William_Taylor@warner-morgan.net', DATE '1986-01-31','42996791');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Pierce_133dc','Alyssa Pierce','Alyssa_Pierce@ruiz.com', DATE '1968-05-16','95839991');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Brady_bd431','Michael Brady','Michael_Brady@wells-sanders.com', DATE '1950-03-23','65342263');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Rhodes_df266','James Rhodes','James_Rhodes@green.com', DATE '1977-10-10','27465295');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Ramirez_5ff32','Ryan Ramirez','Ryan_Ramirez@pham.com', DATE '1985-04-25','67907071');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Thompson_52cd0','Stephen Thompson','Stephen_Thompson@hess.com', DATE '1951-11-12','75033031');
INSERT INTO member (membership_id, member_name, member_email, member_dob, member_contact) VALUES ('Williams_3b0d4','Susan Williams','Susan_Williams@rowland.com', DATE '1976-12-05','95688383');

-- Insert Product data
INSERT INTO product (product_name, manufacturer_name, product_cost, product_weight) VALUES ('Vibranium', 'Wakanda', 99.99, 0.01);
INSERT INTO product (product_name, manufacturer_name, product_cost, product_weight) VALUES ('Infinity Gauntlet', 'Stark Industries', 999.99, 5.71);
INSERT INTO product (product_name, manufacturer_name, product_cost, product_weight) VALUES ('Stormbreaker', 'Nidavellir', 54.00, 7.61);
INSERT INTO product (product_name, manufacturer_name, product_cost, product_weight) VALUES ('Kryptonite', 'Krypton', 30.49, 0.71);
INSERT INTO product (product_name, manufacturer_name, product_cost, product_weight) VALUES ('TOTO Ticket', 'Singapore Pool', 1.00, 0.10);
INSERT INTO product (product_name, manufacturer_name, product_cost, product_weight) VALUES ('Toilet Paper 3-Pack', 'Softess', 23.45, 1.45);
INSERT INTO product (product_name, manufacturer_name, product_cost, product_weight) VALUES ('Frozen Mantou(Pandan)', 'Fortune', 8.75, 0.25);
INSERT INTO product (product_name, manufacturer_name, product_cost, product_weight) VALUES ('Fresh Milk', 'Meiji', 6.45, 2.00);
INSERT INTO product (product_name, manufacturer_name, product_cost, product_weight) VALUES ('Ceylon Tea', 'Lipton', 3.50, 0.33);
INSERT INTO product (product_name, manufacturer_name, product_cost, product_weight) VALUES ('Galaxy S21 FE', 'Samsung', 280.00, 0.18);

-- Insert Receipt data
INSERT INTO receipt (membership_id, total_price, total_weight) VALUES('Davis_7d08d', 185.85, 7.33); -- Kryptonite x5, Toilet x1, Tea x1, Milk x1
INSERT INTO receipt (membership_id, total_price, total_weight) VALUES('Armstrong_e2fb8', 999.99, 5.71); --Gauntlet x1
INSERT INTO receipt (membership_id, total_price, total_weight) VALUES('Rhodes_df266', 589.97, 1.21); -- Vibranium x3, TOTO x10, S21 x1
INSERT INTO receipt (membership_id, total_price, total_weight) VALUES('Williams_3e726', 148.95, 17.17); -- Stormbreaker x2, Toilet x1, Mantou x2
INSERT INTO receipt (membership_id, total_price, total_weight) VALUES('Wang_04168', 347.20, 2.88); -- Mantou x5, toilet x1, s21 x1
INSERT INTO receipt (membership_id, total_price, total_weight) VALUES('Thompson_8382b', 346.90, 11.79); -- milk x2, storm x1, s21 x1
INSERT INTO receipt (membership_id, total_price, total_weight) VALUES('Bishop_b0506', 244.50, 15.5); -- toilet x10, toto x10
INSERT INTO receipt (membership_id, total_price, total_weight) VALUES('Bauer_18f68', 1.00, 0.10); -- toto x1
INSERT INTO receipt (membership_id, total_price, total_weight) VALUES('Garza_40199', 980.93, 0.35); -- vibranium x7, s21 x1, toto x1
INSERT INTO receipt (membership_id, total_price, total_weight) VALUES('Garcia_26b55', 280.00, 0.18); -- s21 x1

-- Insert Product_Sold data
INSERT INTO product_sold (receipt_id, product_id) VALUES (1, 4);
INSERT INTO product_sold (receipt_id, product_id) VALUES (1, 4);
INSERT INTO product_sold (receipt_id, product_id) VALUES (1, 4);
INSERT INTO product_sold (receipt_id, product_id) VALUES (1, 4);
INSERT INTO product_sold (receipt_id, product_id) VALUES (1, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (1, 9);
INSERT INTO product_sold (receipt_id, product_id) VALUES (1, 8);
INSERT INTO product_sold (receipt_id, product_id) VALUES (1, 4);

INSERT INTO product_sold (receipt_id, product_id) VALUES (2, 2);

INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 1);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 1);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 1);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (3, 10);

INSERT INTO product_sold (receipt_id, product_id) VALUES (4, 3);
INSERT INTO product_sold (receipt_id, product_id) VALUES (4, 3);
INSERT INTO product_sold (receipt_id, product_id) VALUES (4, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (4, 7);
INSERT INTO product_sold (receipt_id, product_id) VALUES (4, 7);

INSERT INTO product_sold (receipt_id, product_id) VALUES (5, 7);
INSERT INTO product_sold (receipt_id, product_id) VALUES (5, 7);
INSERT INTO product_sold (receipt_id, product_id) VALUES (5, 7);
INSERT INTO product_sold (receipt_id, product_id) VALUES (5, 7);
INSERT INTO product_sold (receipt_id, product_id) VALUES (5, 7);
INSERT INTO product_sold (receipt_id, product_id) VALUES (5, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (5, 10);

INSERT INTO product_sold (receipt_id, product_id) VALUES (6, 8);
INSERT INTO product_sold (receipt_id, product_id) VALUES (6, 8);
INSERT INTO product_sold (receipt_id, product_id) VALUES (6, 3);
INSERT INTO product_sold (receipt_id, product_id) VALUES (6, 10);

INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 6);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 5);
INSERT INTO product_sold (receipt_id, product_id) VALUES (7, 5);

INSERT INTO product_sold (receipt_id, product_id) VALUES (8, 5);

INSERT INTO product_sold (receipt_id, product_id) VALUES (9, 1);
INSERT INTO product_sold (receipt_id, product_id) VALUES (9, 1);
INSERT INTO product_sold (receipt_id, product_id) VALUES (9, 1);
INSERT INTO product_sold (receipt_id, product_id) VALUES (9, 1);
INSERT INTO product_sold (receipt_id, product_id) VALUES (9, 1);
INSERT INTO product_sold (receipt_id, product_id) VALUES (9, 1);
INSERT INTO product_sold (receipt_id, product_id) VALUES (9, 1);
INSERT INTO product_sold (receipt_id, product_id) VALUES (9, 10);
INSERT INTO product_sold (receipt_id, product_id) VALUES (9, 5);

INSERT INTO product_sold (receipt_id, product_id) VALUES (10, 10);
