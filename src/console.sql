create table publisher
(
    id   serial primary key,
    name varchar(50) not null
);
drop table publishers;
alter table publisher
    rename to publishers;

create table books (
                       id serial primary key ,
                       name varchar (50) not null ,
                       country varchar (50) not null ,
                       published_year date ,
                       price numeric
);
drop table books;
create type genre as enum   ('DETECTIVE', 'DRAMA', 'HISTORY', 'ROMANCE', 'BIOGRAPHY',
    'FANTASY');
alter table books add column genre genre;

drop type genre;

create table language (
                          id serial  primary key,
                          language varchar

);

create table author(
                       id serial primary key,
                       first_name varchar(50) not null ,
                       last_name varchar(50) not null ,
                       date_of_birth date,
                       county varchar

);
create type gender as enum ('Male', 'Female');
drop type gender cascade ;
alter table author add column gender gender;


alter table author rename column county to country;
alter table author add column email varchar(50);

alter table books add column language_id int references books(id);
alter table books add column publisher_id int references books(id);
alter table books add column author_id int references books(id);

truncate table author;
truncate table books;
truncate language;
truncate publisher;

insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');

insert into author(id,first_name, last_name, email, date_of_birth, country, gender)
values (1,'Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '9/25/1968', 'France', 'Female'),
       (2,'Patti', 'Walster', 'pwalster1@addtoany.com', '10/31/1965', 'China', 'Female'),
       (3,'Sonnie', 'Emmens', 'semmens2@upenn.edu', '5/16/1980', 'Germany', 'Male'),
       (4,'Brand', 'Burel', 'bburel3@ovh.net', '4/24/1964', 'United States', 'Male'),
       (5,'Silvan', 'Smartman', 'ssmartman4@spiegel.de', '7/3/1967', 'France', 'Male'),
       (6,'Alexey', 'Arnov', 'larnoldi5@writer.com', '12/29/1964', 'Russia', 'Male'),
       (7,'Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '12/14/1983', 'China', 'Female'),
       (8,'Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1/29/1960', 'United States', 'Female'),
       (9,'Boigie', 'Etridge', 'betridge8@ed.gov', '11/17/1978', 'France', 'Male'),
       (10,'Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '9/8/1962', 'Germany', 'Male'),
       (11,'Margarita', 'Bartova', 'mbartova@example.com', '12/3/1984', 'Russia', 'Female'),
       (12,'Innis', 'Hugh', 'ihughb@marriott.com', '8/28/1983', 'Germany', 'Male'),
       (13,'Lera', 'Trimnella', 'ltrimnellc@msn.com', '3/28/1980', 'Russia', 'Female'),
       (14,'Jakob', 'Bransby', 'jbransbyd@nasa.gov', '8/5/1966', 'Spain', 'Male'),
       (15,'Loretta', 'Gronaver', 'lgronavere@technorati.com', '10/17/1962', 'United States', 'Female');


insert into language(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, published_year, price, genre, language_id, publisher_id, author_id)
values('Taina', 'Russia', '11/12/2021', '568','DETECTIVE', '5', '12', '6'),
      ('Zvezdopad', 'Russia', '12/9/2004', '446', 'ROMANCE', '5', '13', '11'),
      ('Homo Faber', 'Germany', '4/10/2022', '772','FANTASY', '3', '5', '3'),
      ('Der Richter und Sein Henker', 'Germany', '2/1/2011', '780','DETECTIVE', '3', '3', '10'),
      ('Lord of the Flies', 'United States', '7/11/2015', '900','FANTASY', '1', '2', '4'),
      ('Un soir au club', 'France', '1/12/2018', '480','DRAMA', '2', '1', '1'),
      ('Voina', 'Russia', '12/6/2004', '880',  'HISTORY', '5', '4', '13'),
      ('Sun Tzu', 'China', '9/5/2022', '349',  'HISTORY', '4', '4', '2'),
      ('Emil und die Detektive', 'Germany', '6/11/2010', '228','DETECTIVE','3', '5', '10'),
      ('Coule la Seine', 'France', '3/1/2015', '732','FANTASY', '2', '6', '1'),
      ('Love and hatred', 'Russia', '2/3/2012', '763', 'ROMANCE', '5', '14', '13'),
      ('Fantastic Mr Fox', 'United States', '3/10/2018', '309','FANTASY', '1', '9', '8'),
      ('Contes de la Bécasse', 'France', '10/5/2019', '378', 'ROMANCE', '2', '6', '9'),
      ('“The Death of Ivan Ilyich', 'Russia', '9/24/2000', '814','DRAMA', '5', '6', '6'),
      ('Bonjour Tristesse', 'France', '8/2/2015', '502', 'ROMANCE', '2', '8', '5'),
      ('Die Verwandlung', 'Germany', '6/19/2008', '305', 'DETECTIVE','3','7', '12'),
      ('The Inspector Barlach Mysteries', 'Germany', '3/10/2007', '566','DETECTIVE', '3', '3', '3'),
      ('LÉtranger', 'France', '11/14/2017', '422', 'ROMANCE', '2', '8', '5'),
      ('Lao Tse', 'China', '7/16/2005', '900','FANTASY', '4', '4', '2'),
      ('Semya', 'Russia', '4/12/2004', '194','DRAMA', '5', '13', '11'),
      ('Empty World', 'United States', '1/4/2008', '324','FANTASY', '1', '11', '15'),
      ('Domainer', 'Germany', '1/6/2020', '420', 'ROMANCE', '3', '5', '10'),
      ('The Fault in Our Stars', 'United States', '2/13/2008', '396', 'ROMANCE','1', '9', '4'),
      ('Die R uber', 'Germany', '6/25/2020', '300', 'ROMANCE', '3', '7', '12'),
      ('Jung Chang', 'China', '5/14/2021', '600',  'HISTORY', '4', '10', '7'),
      ('Les Aventures de Tintin', 'France', '4/10/2015', '582','DRAMA', '2', '1', '5'),
      ('Unvollendete Geschichte', 'Germany', '12/12/2010', '269','DETECTIVE', '3', '5', '10'),
      ('Amy Tan', 'China', '1/9/2023', '486','DRAMA', '4', '4', '7'),
      ('Krasnaya luna', 'Russia', '2/7/2020', '550','FANTASY', '5', '12', '11'),
      ('Emma', 'United States', '10/11/2021', '599', 'BIOGRAPHY','1', '2', '15');

--todo  1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select b.name,b.published_year,genre from books b;

-- todo 2. Авторлордун мамлекеттери уникалдуу чыксын.
SELECT COUNT( country) AS unique_countries ,country
FROM author group by country;
-- todo  3.2020-2023 жылдардын арасындагы китептер чыксын.
select * from books where published_year between '2020-01-01'and '2023-01-01' ;
-- todo 4.Детектив китептер жана алардын аттары чыксын.
select b.name , b.genre from books b where b.genre ='DETECTIVE';
-- todo  5.Автордун аты-жону author деген бир колонкага чыксын.
select concat(a.first_name ,'  ', a.last_name)  as " author " from author a;
-- todo  6. Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select * from author  where country ilike ( 'Germany') or  country ilike ( 'France');
--  todo 7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын..
select * from books b where   b.genre  <> 'ROMANCE' and b.price < 500;
-- todo 8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select * from author where author.gender = 'Female'order by gender asc limit 3 ;
-- todo 9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
select * from author a where a.email ilike ('%.com') and  length(first_name ) = 4 and gender = 'Female';
--  todo 10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select count(*) , country from author  group by author.country;
-- todo 11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.

select author.country, count(*) from author group by author.country having count(*) = 3 ;

-- todo 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
select books.genre, sum(price) from books group by books.genre;

-- todo 13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select books.genre , min(price) from books where books.genre = 'ROMANCE' or books.genre = 'DRAMA' group by books.genre ;
--  todo 14.История жана Биографиялык китептердин сандарын чыгарыныз
select books.genre, count(*) from books where books.genre = ('HISTORY') or books.genre = ('BIOGRAPHY') group by books.genre ;

--todo 15.Китептердин , издательстволордун аттары жана тили чыксын
select b.country , l.language from books b join language l on b.language_id =  l.id;

-- todo 16 Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
select * from author ;
-- todo 17.Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
select a.first_name, a.last_name, b.name from books b right join author a on a.id = b.author_id;

-- todo 18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.
select l.language , count(*) from books
                                      join language l on l.id = books.language_id
group by l.language order by count(l.id) desc ;

-- todo 19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
select b.country ,cast(avg(b.price) as int )from books b group by b.country ;
-- todo 20. 2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
select b.* , concat(author.first_name, ' ', author.last_name) as аты_фамилиясы
from  books b join author on b.author_id = author.id where b.published_year between '01-01-2010' and '01-01-2015';

-- todo 21.2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.
select concat(author.first_name, ' ', author.last_name) as аты_фамилиясы
     , sum(b.price)
from  books b join author on b.author_id = author.id where b.published_year between '01-01-2010' and '01-01-2015' group by author.first_name, author.last_name ;

