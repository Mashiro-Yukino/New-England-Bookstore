CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookstore` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bookstore`;

grant all privileges on bookstore.* to 'webapp'@'%';
flush privileges;

-- Customer table ------------------

-- make a Customer table, it has a customerId, balance, memberType, firstName, midName, lastName, birth_date, age.
-- midName can be null. The memberType can be 'regular', 'silver', 'gold', 'platinum', and the default is 'regular'.
-- the customerId is auto-incremented nine-digit number, starting from 200000000.
-- and the balance is a non-negative number.

CREATE TABLE customer (
    customerId INT(9) NOT NULL AUTO_INCREMENT,
    balance DECIMAL(10,2) NOT NULL DEFAULT 0,
    memberType ENUM('regular', 'silver', 'gold', 'platinum') NOT NULL DEFAULT 'regular',
    firstName VARCHAR(20) NOT NULL,
    midName VARCHAR(20),
    lastName VARCHAR(20) NOT NULL,
    birth_date DATE NOT NULL,


    constraint pk_customer primary key (customerId)

);

-- set the start number for auto increment primary key:
ALTER TABLE customer AUTO_INCREMENT = 200000000;

-- insert some customers:

-- generate 20 customers with midName.
INSERT INTO customer (balance, memberType, firstName, midName, lastName, birth_date)
VALUES
    (0, 'regular', 'Penelope', 'A', 'Smith', '1992-01-01'),
    (100.10, 'silver', 'Josh', 'B', 'Havick', '1996-01-01'),
    (20, 'gold', 'Lea', 'C', 'Wolsey', '1994-01-01'),
    (40, 'platinum', 'Bobbee', 'D', 'Alliker', '1990-07-01'),
    (80, 'regular', 'Walt', 'E', 'Leindecker', '1990-10-01'),
    (100, 'regular', 'Maren', 'F', 'Rowswell', '1999-11-01'),
    (200, 'silver', 'John', 'G', 'Doddridge', '1993-02-01'),
    (300, 'platinum', 'Theodor', 'H', 'Order', '1990-01-08'),
    (400, 'regular', 'Joy', 'I', 'Gelsthorpe', '1990-01-08'),
    (500, 'silver', 'Gwenora', 'J', 'Measom', '1990-01-19'),
    (600, 'regular', 'John', 'K', 'Penas', '1990-01-13'),
    (700, 'regular', 'Matthaeus', 'L', 'Threader', '1990-01-14'),
    (800, 'regular', 'Marcus', 'M', 'Ilyukhov', '1980-01-01'),
    (900, 'platinum', 'Pooh', 'N', 'Firmin', '1990-11-01'),
    (1000, 'regular', 'Aylmer', 'O', 'Rudolfer', '2000-01-01'),
    (1100, 'regular', 'Bary', 'P', 'Brinsden', '2001-01-01'),
    (1200, 'regular', 'Gian', 'Q', 'Muncey', '1999-01-01'),
    (1300, 'silver', 'Bernadina', 'R', 'Andrez','1990-03-01'),
    (1400, 'regular', 'Zorana', 'S', 'Ca', '1990-01-16'),
    (1500, 'platinum', 'Tatiania', 'T', 'Smith', '1990-07-01');


insert into customer (balance, memberType, firstName, lastName, birth_date) values (370.0, 'platinum', 'Geke', 'Smith', '1987-02-27');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (713.0, 'regular', 'Yetts', 'Havick', '2002-09-18');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (783.6, 'platinum', 'Stair', 'Wolsey', '1986-05-28');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (87.0, 'platinum', 'Kepp', 'Leindecker', '1989-03-06');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (161.1, 'gold', 'Jakes', 'Leindecker', '2007-02-27');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (961.8, 'silver', 'Bertrand', 'Smith', '1998-09-28');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (958.5, 'silver', 'Baldry', 'Havick', '2003-03-29');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (526.6, 'platinum', 'Tritton', 'Wolsey', '2004-08-02');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (75.5, 'gold', 'Iwanowicz', 'Leindecker', '1994-08-01');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (736.5, 'gold', 'Gourlie', 'Andrez', '1982-03-05');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (236.8, 'gold', 'Nathon', 'Ca', '2003-05-29');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (117.6, 'regular', 'McFadzean', 'Ca', '1995-02-13');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (750.8, 'regular', 'Lomath', 'Andrez', '2010-06-13');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (453.0, 'platinum', 'Woloschinski', 'Wolsey', '1989-09-11');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (303.5, 'platinum', 'Parade', 'Leindecker', '2006-10-17');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (637.8, 'regular', 'Kuhl', 'Leindecker', '1997-05-27');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (457.1, 'regular', 'Borit', 'Sacks', '1981-09-01');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (354.4, 'gold', 'Sacks', 'Male', '1991-04-18');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (726.8, 'gold', 'McIndrew', 'Sacks', '1984-01-26');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (280.0, 'regular', 'Demaine', 'Cockren', '1991-11-20');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (607.2, 'gold', 'Cockren', 'Male', '2005-04-21');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (168.3, 'silver', 'Kobu', 'Cockren', '1990-07-07');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (999.8, 'gold', 'Truckett', 'Doud', '1999-01-14');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (919.2, 'regular', 'Rottcher', 'Truckett', '1982-06-14');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (765.5, 'silver', 'Whipp', 'Whipp', '1992-03-17');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (909.7, 'silver', 'Athridge', 'Cockren', '2007-08-24');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (428.7, 'platinum', 'Doud', 'Male', '1986-12-12');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (17.3, 'regular', 'Potter', 'Potter', '2006-12-29');



-- make a author table, it has authorId, deposit, firstName, midName, lastName, contactEmail.
-- midName can be null. The default deposit is 0.
-- the authorId is auto-incremented nine-digit number, starting from 100000000.

-- Author table ------------------
CREATE TABLE author (
    authorId INT NOT NULL AUTO_INCREMENT,
    deposit INT NOT NULL DEFAULT 0,
    firstName VARCHAR(255) NOT NULL,
    midName VARCHAR(255),
    lastName VARCHAR(255) NOT NULL,

    -- contactEmail should be unique
    contactEmail VARCHAR(255) NOT NULL UNIQUE,

    constraint pk_author primary key (authorId)
);



-- set the start number for auto increment primary key:
ALTER TABLE author AUTO_INCREMENT = 100000000;

-- generate 5 authors with midName.


INSERT INTO author (deposit, firstName, midName, lastName, contactEmail)
VALUES
    (1000, 'Colas', 'Aas', 'Hen', 'cola123@gmail.com'),
    (90, 'Pauletta', 'Bas', 'Roman', 'paulettaB@northeastern.com'),
    (11, 'Lesly', 'Casd', 'Hincham', '343332123@qq.com'),
    (123, 'Myrtia', 'D23', 'Downton', '126783123@qq.com'),
    (223, 'Hilde', 'E1', 'Hankard','2323123124@qq.com'),
    (89, 'Lynnett', 'Ffd', 'Bartoszewicz', 'Lynnett@gmail.com'),
    (123, 'Colas', 'Aas', 'Hen', 'cola@gmail.com'),
    (9230, 'Pauletta', 'Bas', 'Lesly', 'paulet123taB@northeastern.com'),
    (11, 'Lesly', 'Casd', 'Hankard', '12312376182@qq.com'),
    (1123, 'Myrtia', 'D23', 'Hen', '126783123123@qq.com'),
    (223, 'Hilde', 'E1', 'Hankard','12367812233@qq.com'),
    (89, 'Lynnett', 'Ffd', 'Roman', 'Lyn123nett@gmail.com');

INSERT INTO author (firstName, midName, lastName, contactEmail)
VALUES
    ('Colas', 'A', 'Balk', 'cola2@gmail.com'),
    ('Pauletta', 'B', 'Roman', 'pau23211lettaB@northeastern.com'),
    ('Lesly', 'C', 'Hincham', '123123712312316182@qq.com'),
    ('Myrtia', 'D', 'Downton', '12621312783123@qq.com'),
    ('Hilde', 'E', 'Hankard','123678121231231233@qq.com'),
    ('Lynnett', 'F', 'Bartoszewicz', 'Lynne12312312tt@gmail.com');

insert into author (firstName, lastName, contactEmail, midName) values ('Logan', 'Blackleech', 'lblackleech0@theguardian.com', 'a');
insert into author (firstName, lastName, contactEmail, midName) values ('Alane', 'Cunio', 'acunio1@is.gd', 'b');
insert into author (firstName, lastName, contactEmail, midName) values ('Neddie', 'Lefwich', 'nlefwich2@comcast.net', 'c');
insert into author (firstName, lastName, contactEmail, midName) values ('Lauren', 'Dragge', 'ldragge3@europa.eu', 'd');
insert into author (firstName, lastName, contactEmail, midName) values ('Hyacinthe', 'Greenshields', 'hgreenshields4@t.co', 'a');
insert into author (firstName, lastName, contactEmail, midName) values ('Roseann', 'Heino', 'rheino5@com.com', 'a');
insert into author (firstName, lastName, contactEmail, midName) values ('Kimmy', 'Glasby', 'kglasby6@jigsy.com', 'c');
insert into author (firstName, lastName, contactEmail, midName) values ('Edythe', 'Keaton', 'ekeaton7@alibaba.com', 'b');
insert into author (firstName, lastName, contactEmail, midName) values ('Araldo', 'Dungay', 'adungay8@gnu.org', 'a');
insert into author (firstName, lastName, contactEmail, midName) values ('Cyril', 'Botright', 'cbotright9@csmonitor.com', 'f');




-- generate 5 authors without midName.

INSERT INTO author (firstName, lastName, contactEmail)
VALUES
    ('Colas', 'Balk', '23718923@qq.com'),
    ('Pauletta', 'Roman', '278312873@qq.com'),
    ('Lesly', 'Hincham', '89612312@qq.com'),
    ('Myrtia', 'Downton', '18923619283@qq.com'),
    ('Hilde', 'Hankard', '7862312@qq.com');




-- Employee table ------------------
-- make a Employee table, it has employeeId, employeeAccount, employeePassword, firstName, midName, lastName.
-- midName can be null. The employeeAccount is unique.
-- the employeeId is auto-incremented nine-digit number, starting from 300000000.

CREATE TABLE employee (
    employeeId INT NOT NULL AUTO_INCREMENT,
    employeeAccount VARCHAR(255) NOT NULL UNIQUE,
    employeePassword VARCHAR(255) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    midName VARCHAR(255),
    lastName VARCHAR(255) NOT NULL,

    constraint pk_employee primary key (employeeId)
);

-- set the start number for auto increment primary key:
ALTER TABLE employee AUTO_INCREMENT = 300000000;

-- generate 5 employees

INSERT INTO employee (employeeAccount, employeePassword, firstName, midName, lastName)
VALUES
    ('etheyerh@i2i.jp', '5517369', 'Xenos', 'A', 'Crowd'),
    ('mszepe9@blogs.com', '3713677', 'Xenos', 'B', 'Tipperton'),
    ('kiffland2p@i2i.jp', 'wqsdiuq12', 'Blakeley', 'C', 'Oleszkiewicz');


INSERT INTO employee (employeeAccount, employeePassword, firstName, lastName)
VALUES
    ('channigan39@i2i.jp', '12378912', 'Reginald', 'Genney'),
    ('wcosby3c@house.gov', '1236871', 'Ricoriki', 'Rottcher');

insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('fpilbeam0@google.com.br', '80-380-4617', 'Flora', 'Pilbeam');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('kcasine1@lycos.com', '37-012-1805', 'Kissie', 'Casine');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('edahlman2@hao123.com', '07-471-3447', 'Emelita', 'Dahlman');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('egothup3@google.it', '40-153-2927', 'Erastus', 'Gothup');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('pcrossfeld4@cyberchimps.com', '50-390-7340', 'Pamelina', 'Crossfeld');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('bspeak5@privacy.gov.au', '46-584-0977', 'Blakelee', 'Speak');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('saujouanet6@ask.com', '81-687-0626', 'Sheba', 'Aujouanet');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('lrolley7@twitpic.com', '26-258-3185', 'Loretta', 'Rolley');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('estellman8@sakura.ne.jp', '92-178-0067', 'Ebeneser', 'Stellman');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('jcastellone9@pen.io', '56-064-3885', 'Jolyn', 'Castellone');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('ccostya@aboutads.info', '83-523-4260', 'Cecily', 'Costy');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('rorrob@globo.com', '47-551-6245', 'Remington', 'Orro');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('ibriteec@github.com', '97-631-3490', 'Ilyse', 'Britee');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('xberkd@ucla.edu', '85-118-4879', 'Xever', 'Berk');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('mwikeye@ucsd.edu', '24-907-2482', 'Mathilde', 'Wikey');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('ltaggf@about.me', '06-864-7933', 'Lory', 'Tagg');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('pdmitrievg@simplemachines.org', '10-670-2096', 'Phillie', 'Dmitriev');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('bgleetonh@dyndns.org', '39-375-8035', 'Bartholemy', 'Gleeton');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('sbrotheridgei@indiatimes.com', '50-578-2805', 'Saudra', 'Brotheridge');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('ghorsefieldj@twitpic.com', '76-781-2733', 'Gweneth', 'Horsefield');

insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('ccosdasstya@aboutads.info', '83-523-4260', 'Cecily', 'Costy');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('asdasd@globo.com', '47-551-6245', 'Remington', 'Orro');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('1231213@github.com', '97-631-3490', 'Ilyse', 'Britee');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('asdasdas@ucla.edu', '85-118-4879', 'Xever', 'Berk');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('123123@ucsd.edu', '24-907-2482', 'Mathilde', 'Wikey');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('2321231@about.me', '06-864-7933', 'Lory', 'Tagg');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('sdadasdas@simplemachines.org', '10-670-2096', 'Phillie', 'Dmitriev');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('12312321@dyndns.org', '39-375-8035', 'Bartholemy', 'Gleeton');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('qswdqweq@indiatimes.com', '50-578-2805', 'Saudra', 'Brotheridge');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('asxdasdas@twitpic.com', '76-781-2733', 'Gweneth', 'Horsefield');



--  withdraws money table ------------------
-- make a Withdraws_Money table, it has transactionId, authorId, employeeId, transaction_time, transaction_amount.
-- the transaction_time is the current time.
-- the transaction_amount is the amount of money that the author withdraws.
-- if the primary key of

CREATE TABLE withdraws_Money (
    transactionId INT NOT NULL AUTO_INCREMENT,

    authorId INT NOT NULL,
    employeeId INT NOT NULL,
    transaction_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    transaction_amount INT NOT NULL,

    constraint pk_withdraws_money primary key (transactionId),




    constraint fk_authorId
        foreign key (authorId)
        references author (authorId)
        on delete cascade
        on update cascade,

    constraint fk_employeeId
        foreign key (employeeId)
        references employee (employeeId)
        on delete cascade
        on update cascade
);


-- generate 5 withdraws money records

INSERT INTO withdraws_Money (authorId, employeeId, transaction_amount)
VALUES
    (100000000, 300000000, 100.10),
    (100000001, 300000001, 2000),
    (100000002, 300000002, 30000),
    (100000003, 300000003, 40),
    (100000004, 300000004, 50);
    
    
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000005, 300000032, 7.17);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000003, 681.68);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000006, 300000029, 227.84);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000021, 605.82);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000004, 938.99);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000027, 300000002, 247.06);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000004, 850.97);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000019, 224.03);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000020, 172.6);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000015, 340.29);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000021, 300000003, 166.52);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000001, 780.25);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000009, 300000028, 368.75);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000034, 355.16);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000023, 7.69);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000019, 300000006, 310.39);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000020, 300000010, 762.31);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000029, 688.34);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000029, 989.95);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000028, 168.62);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000001, 300000000, 332.24);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000031, 104.09);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000024, 156.11);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000021, 300000022, 760.96);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000020, 790.99);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000024, 300000021, 488.88);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000030, 70.74);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000013, 885.26);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000011, 300000014, 511.68);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000019, 300000027, 639.5);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000034, 322.31);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000028, 837.36);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000008, 472.62);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000010, 364.04);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000028, 495.45);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000008, 300000012, 951.22);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000023, 943.7);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000027, 300000015, 31.5);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000025, 643.66);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000009, 262.71);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000031, 300000023, 692.6);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000023, 5.04);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000028, 706.76);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000004, 203.43);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000017, 52.39);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000009, 300000006, 345.56);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000006, 300000005, 307.65);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000028, 636.89);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000029, 300000020, 362.26);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000014, 655.06);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000008, 300000024, 811.23);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000007, 825.13);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000008, 300000031, 788.03);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000028, 710.64);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000025, 386.47);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000019, 300000018, 852.14);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000023, 300000018, 442.24);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000010, 300000004, 468.86);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000007, 270.25);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000009, 301.5);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000024, 381.84);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000024, 300000015, 128.06);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000027, 835.59);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000005, 300000009, 815.16);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000004, 300000021, 482.83);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000024, 502.92);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000004, 300000018, 606.13);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000007, 862.26);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000002, 468.26);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000034, 305.33);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000023, 409.6);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000001, 300000009, 61.6);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000025, 300000012, 261.16);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000020, 93.48);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000018, 418.7);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000031, 300000030, 991.78);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000008, 300000022, 87.88);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000001, 31.76);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000012, 313.06);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000011, 300000010, 466.95);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000031, 591.38);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000025, 824.8);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000012, 62.59);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000004, 300000032, 55.57);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000019, 300000027, 259.66);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000015, 471.96);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000001, 996.04);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000014, 266.53);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000013, 574.89);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000021, 300000005, 603.19);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000020, 300000005, 733.44);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000017, 843.05);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000002, 51.1);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000005, 279.43);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000004, 430.95);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000008, 164.08);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000010, 300000032, 960.97);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000002, 805.2);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000005, 860.85);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000012, 733.15);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000020, 300000007, 750.61);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000033, 214.81);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000000, 575.54);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000011, 300000018, 834.86);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000027, 475.96);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000015, 300000003, 434.46);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000015, 300000034, 259.09);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000007, 918.42);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000022, 37.7);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000003, 1.19);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000015, 300000002, 353.85);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000005, 885.37);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000000, 255.82);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000021, 300000008, 637.85);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000021, 300000009, 892.9);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000012, 300000020, 190.6);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000019, 76.32);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000001, 300000019, 349.35);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000003, 555.36);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000010, 300000022, 616.07);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000034, 899.32);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000006, 300000031, 620.83);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000006, 168.36);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000014, 435.29);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000010, 702.39);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000027, 300000004, 87.66);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000020, 434.72);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000023, 690.92);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000029, 237.18);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000013, 946.37);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000013, 434.48);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000025, 300000018, 122.98);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000021, 300000034, 376.65);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000012, 394.06);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000017, 33.44);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000020, 300000023, 101.4);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000028, 712.47);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000021, 386.67);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000012, 300000003, 618.57);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000030, 827.22);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000015, 300000009, 875.84);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000023, 300000027, 588.49);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000023, 300000034, 50.04);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000027, 351.65);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000033, 807.43);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000033, 457.09);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000024, 300000032, 707.33);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000002, 691.61);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000029, 300000009, 68.76);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000009, 300000011, 728.58);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000006, 300000028, 802.0);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000025, 300000012, 40.04);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000000, 885.49);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000005, 866.02);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000024, 400.86);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000008, 577.19);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000001, 300000011, 837.24);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000012, 300000015, 816.67);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000006, 300000013, 523.35);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000033, 394.02);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000015, 300000009, 815.01);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000017, 437.68);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000031, 300000026, 16.23);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000000, 279.41);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000014, 253.98);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000000, 660.29);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000013, 835.2);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000025, 300000008, 532.77);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000016, 661.74);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000002, 511.76);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000031, 300000032, 572.11);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000029, 300000006, 169.73);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000001, 300000028, 652.12);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000005, 594.19);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000006, 300000002, 271.04);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000024, 300000032, 278.69);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000032, 994.24);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000017, 289.21);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000008, 300000008, 754.83);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000031, 300000006, 221.36);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000026, 500.4);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000027, 300000022, 635.73);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000033, 219.54);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000034, 401.29);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000001, 300000028, 963.16);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000014, 83.59);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000019, 300000017, 853.51);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000024, 695.07);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000012, 969.39);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000006, 921.07);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000029, 387.31);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000034, 189.39);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000011, 300000010, 803.21);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000011, 300000006, 466.18);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000023, 197.16);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000019, 300000019, 651.63);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000009, 300000014, 955.96);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000010, 423.37);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000031, 300000022, 898.79);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000004, 300000027, 407.47);



--  Book table ------------------
-- make a Book table, it has bookId, authorId, pricePerDay, bookName, status, type
-- the bookId is auto-incremented ten-digit number, starting from 1000000000.
-- the type is either 'digital' or 'physical'.

CREATE TABLE book (
    bookId INT NOT NULL AUTO_INCREMENT,
    authorId INT NOT NULL,
    pricePerDay float NOT NULL,
    bookName VARCHAR(255) NOT NULL,
    status ENUM('available', 'rented', 'not available') DEFAULT 'available',
    booktype ENUM('digital', 'physical') NOT NULL,

    constraint pk_book primary key (bookId),

    constraint fk_authorId_book
        foreign key (authorId) references author(authorId)
        on delete cascade
        on update cascade
);



-- set the start number for auto increment primary key:
ALTER TABLE book AUTO_INCREMENT = 1000000000;

-- generate 20 books


INSERT INTO book (authorId, pricePerDay, bookName, booktype)
VALUES
    (100000000, 10, 'Lost City, The', 'digital'),
    (100000001, 20, 'Just Like Me (Igualita a Mi)', 'physical'),
    (100000002, 30, 'Alvin and the Chipmunks: Chipwrecked', 'digital'),
    (100000003, 40, 'Comanche Territory (Territorio comanche)', 'physical'),
    (100000004, 50, 'Crew, The', 'physical'),
    (100000005, 60, 'Old Dark House, The', 'physical'),
    (100000006, 70, 'Last Dragon, The', 'physical'),
    (100000007, 80, 'Don', 'physical'),
    (100000008, 90, 'The Book of the Dead I', 'digital'),
    (100000009, 10.10, 'Psycho II', 'physical'),
    (100000000, 1.10, 'Psycho III', 'physical'),
    (100000001, 1.20, 'Psycho I', 'physical'),
    (100000002, 1.30, 'The Book of the Dead II', 'physical'),
    (100000003, 1.40, 'The Book of the Dead III', 'physical'),
    (100000004, 11.50, 'The Book of the Dead IV', 'digital'),
    (100000005, 11.60, 'Walk Like a Man', 'physical'),
    (100000006, 12.70, 'Spirit, The', 'physical'),
    (100000007, 13.80, 'Seems Like Old Times', 'digital'),
    (100000008, 14.90, 'Veronika Voss (Sehnsucht der Veronika Voss, Die)', 'digital'),
    (100000009, 20, 'Grave, The', 'physical');



--  Manage table ------------------

-- make a Manage table, it has ManageId, employeeId, bookId, action, action_time.
-- the action_time is the current time.

CREATE TABLE manage (
    ManageId INT NOT NULL AUTO_INCREMENT,
    employeeId INT NOT NULL,
    bookId INT NOT NULL,
    action ENUM('delete', 'update') NOT NULL,
    action_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    pricePerDay float NOT NULL DEFAULT 0,

    constraint pk_manage primary key (ManageId),

    constraint fk_employeeId_manage
        foreign key (employeeId) references employee(employeeId)
        on delete cascade
        on update cascade,
    constraint fk_bookId_manage
        foreign key (bookId) references book(bookId)
        on delete cascade
        on update cascade
);

-- set the start number for auto increment primary key:
ALTER TABLE manage AUTO_INCREMENT = 1;

-- generate 10 manage records

INSERT INTO manage (employeeId, bookId, action, pricePerDay)
VALUES
    (300000000, 1000000000, 'update', 10),
    (300000001, 1000000001, 'update', 20),
    (300000002, 1000000002, 'update', 30),
    (300000003, 1000000003, 'update', 40);

INSERT INTO manage (employeeId, bookId, action)
VALUES
    (300000004, 1000000004, 'delete'),
    (300000001, 1000000005, 'delete'),
    (300000002, 1000000006, 'delete'),
    (300000003, 1000000007, 'delete'),
    (300000004, 1000000008, 'delete'),
    (300000001, 1000000009, 'delete');


--  Support table ------------------

-- make a Support table, it has SupportId, employeeId, customerId, action, action_time.
-- the action_time is the current time. action can be 'member upgrade', 'balance update'.

CREATE TABLE support (
    SupportId INT NOT NULL AUTO_INCREMENT,
    employeeId INT NOT NULL,
    customerId INT NOT NULL,
    action ENUM('member upgrade', 'balance update') NOT NULL,
    action_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    constraint pk_support primary key (SupportId),

    constraint fk_employeeId_support
        foreign key (employeeId) references employee(employeeId)
        on delete cascade
        on update cascade,
    constraint fk_customerId_support
        foreign key (customerId) references customer(customerId)
        on delete cascade
        on update cascade
);

-- generate 10 support records

INSERT INTO support (employeeId, customerId, action)
VALUES
    (300000000, 200000000, 'member upgrade'),
    (300000001, 200000001, 'balance update'),
    (300000002, 200000002, 'member upgrade'),
    (300000003, 200000003, 'member upgrade'),
    (300000004, 200000004, 'balance update'),
    (300000001, 200000005, 'member upgrade'),
    (300000002, 200000006, 'balance update'),
    (300000003, 200000007, 'member upgrade'),
    (300000004, 200000008, 'member upgrade'),
    (300000001, 200000009, 'balance update');



--  Reserve table ------------------

-- make a Reserve table, it has reserveId, customerId, bookId, return_time, borrow_time.
-- the borrow_time is the current time.
-- and totalPrice can be calculated by (return_time - borrow_time) * pricePerDay.

CREATE TABLE reserve (
    reserveId INT NOT NULL AUTO_INCREMENT,
    customerId INT NOT NULL,
    bookId INT NOT NULL,
    return_time TIMESTAMP NOT NULL,
    borrow_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    constraint pk_reserve primary key (reserveId),

    constraint fk_customerId_reserve
        foreign key (customerId) references customer(customerId)
        on delete cascade
        on update cascade,
    constraint fk_bookId_reserve
        foreign key (bookId) references book(bookId)
        on delete cascade
        on update cascade
);

-- generate 10 reserve records

INSERT INTO reserve (customerId, bookId, return_time)
VALUES
    (200000000, 1000000000, '2019-11-11 13:59:59'),
    (200000001, 1000000001, '2029-12-21 23:41:59'),
    (200000002, 1000000002, '2032-10-01 21:52:59'),
    (200000003, 1000000003, '2023-11-11 22:53:59'),
    (200000004, 1000000004, '2023-6-21 12:54:59'),
    (200000005, 1000000005, '2023-2-10 01:55:59'),
    (200000006, 1000000006, '2023-5-11 02:56:59'),
    (200000007, 1000000007, '2023-2-12 05:57:59'),
    (200000008, 1000000008, '2023-8-13 08:58:59'),
    (200000009, 1000000009, '2023-10-01 09:59:59');

-- Read table ------------------

-- make a Read table, it has readId, authorId, bookId, readDate.
-- the readDate is the current time.

CREATE TABLE readReport (
    readId INT NOT NULL AUTO_INCREMENT,
    authorId INT NOT NULL,
    bookId INT,
    readDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    constraint pk_read primary key (readId),

    constraint fk_authorId_read
        foreign key (authorId) references author(authorId)
        on delete cascade
        on update cascade,
    constraint fk_bookId_read
        foreign key (bookId) references book(bookId)
        on delete cascade
        on update cascade
);

-- generate 10 read records

INSERT INTO readReport (authorId, bookId)
VALUES
    (100000000, 1000000000),
    (100000001, 1000000001),
    (100000002, 1000000002),
    (100000003, 1000000003),
    (100000004, 1000000004),
    (100000005, 1000000005),
    (100000006, 1000000006),
    (100000007, 1000000007),
    (100000007, 1000000008),
    (100000007, 1000000009),
    (100000001, 1000000009);

-- generate a read record without bookId, since it is possible that a report has no book.

INSERT INTO readReport (authorId)
VALUES
    (100000008);

--  Report table ------------------

-- make a Report table, it has reportId, employeeId, reportStartDate, type, reportEndDate, generateTime.
-- type can be 'Profit_Report', 'Genre_Report', 'Book_Report'.

CREATE TABLE report (
    reportId INT NOT NULL AUTO_INCREMENT,
    employeeId INT NOT NULL,
    reportStartDate TIMESTAMP NOT NULL,
    type ENUM('Profit_Report', 'Genre_Report', 'Book_Report') NOT NULL,
    reportEndDate TIMESTAMP NOT NULL,
    generateTime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    constraint pk_report primary key (reportId),

    constraint fk_employeeId_report
        foreign key (employeeId) references employee(employeeId)
        on delete cascade
        on update cascade,


    constraint check_reportStartDate
        check (reportStartDate < reportEndDate),
    constraint check_reportEndDate
        check (reportStartDate < generateTime),
    constraint check_generateTime
        check (reportEndDate < generateTime)


);


-- generate 10 report records

INSERT INTO report (employeeId, reportStartDate, type, reportEndDate)
VALUES
    (300000000, '2019-11-11 13:59:59', 'Profit_Report', '2021-11-11 13:59:59'),
    (300000001, '2020-12-21 23:41:59', 'Genre_Report', '2021-11-19 23:41:59'),
    (300000002, '2012-10-01 21:52:59', 'Book_Report', '2021-10-01 21:52:59'),
    (300000003, '2020-10-11 22:53:59', 'Profit_Report', '2021-11-11 22:53:59'),
    (300000004, '2020-6-21 12:54:59', 'Genre_Report', '2021-9-21 12:54:59'),
    (300000001, '2020-2-10 01:55:59', 'Book_Report', '2021-3-10 01:55:59'),
    (300000002, '2020-5-11 02:56:59', 'Profit_Report', '2021-5-15 02:56:59'),
    (300000003, '2020-2-12 05:57:59', 'Genre_Report', '2021-5-12 05:57:59'),
    (300000004, '2020-8-13 08:58:59', 'Book_Report', '2021-10-13 08:58:59'),
    (300000001, '2020-10-01 09:59:59', 'Profit_Report', '2021-11-01 09:59:59');

--  BookGenre table ------------------

-- make a BookGenre table, it has bookId, category.

CREATE TABLE bookGenre (
    bookId INT NOT NULL,
    category VARCHAR(255) NOT NULL,

    constraint pk_bookGenre primary key (bookId, category),
    constraint fk_bookId_bookGenre
        foreign key (bookId) references book(bookId)
        on delete cascade
        on update cascade
);

-- generate 10 bookGenre records

INSERT INTO bookGenre (bookId, category)
VALUES
    (1000000000, 'Fiction'),
    (1000000001, 'Non-Fiction'),
    (1000000002, 'Slice of Life'),
    (1000000003, 'Romance'),
    (1000000001, 'Fiction'),
    (1000000002, 'Non-Fiction'),
    (1000000003, 'Fiction'),
    (1000000001, 'Science'),
    (1000000003, 'SCI-FI'),
    (1000000006, 'Science');



-- Include table ------------------

-- make a Include table, it has bookId, reportId.

CREATE TABLE include (
    bookId INT NOT NULL,
    reportId INT NOT NULL,

    constraint pk_include primary key (bookId, reportId),
    constraint fk_bookId_include
        foreign key (bookId) references book(bookId)
        on delete cascade
        on update cascade,
    constraint fk_reportId_include
        foreign key (reportId) references report(reportId)
        on delete cascade
        on update cascade
);


-- generate 10 includedIn records

INSERT INTO include (bookId, reportId)
VALUES
    (1000000000, 1),
    (1000000001, 2),
    (1000000002, 3),
    (1000000003, 4),
    (1000000004, 5),
    (1000000001, 1),
    (1000000006, 7),
    (1000000007, 8),
    (1000000008, 9),
    (1000000005, 10);

-- AuthorBankAccount table ------------------

-- make a AuthorBankAccount table, it has authorId, bankAccountId.
-- bankAccountId is 8-12 digits.

CREATE TABLE authorBankAccount (
    authorId INT NOT NULL,
    bankAccountNum VARCHAR(12) NOT NULL,

    constraint pk_authorBankAccount primary key (authorId, bankAccountNum),
    constraint fk_authorId_authorBankAccount
        foreign key (authorId) references author(authorId)
        on delete cascade
        on update cascade,
    constraint check_bankAccountNum
        check (bankAccountNum REGEXP '^[0-9]{8,12}$')
);


-- generate 10 authorBankAccount records

INSERT INTO authorBankAccount (authorId, bankAccountNum)
VALUES
    (100000000, 218349705),
    (100000000, 1235671253),
    (100000001, 126387112),
    (100000002, 127831233),
    (100000003, 981723123),
    (100000004, 1287361287),
    (100000005, 09123719203),
    (100000006, 125376125673),
    (100000007, 90123719237),
    (100000008, 17263581723),
    (100000009, 1627531723);