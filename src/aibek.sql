create database aibek_task_lms;
create table publisher
(
    id   serial primary key,
    name varchar(50) not null
);
alter table publisher
    rename to publishers;

create table books
(
    id             serial primary key,
    name           varchar(50) not null,
    country        varchar(50) not null,
    published_year date,
    price          numeric
);

create type genre as enum ('DETECTIVE', 'DRAMA', 'HISTORY', 'ROMANCE', 'BIOGRAPHY',
    'FANTASY');
alter table books
    add column gender genre;

create table language
(
    id       serial primary key,
    language varchar

);

create table author
(
    id            serial primary key,
    first_name    varchar(50) not null,
    last_name     varchar(50) not null,
    date_of_birth date,
    county        varchar

);
alter table author
    add column email varchar;
alter table author
    rename column county to country;

create type gender as enum ('MALE', 'FEMALE');
alter table author
    add column gender gender;

alter table books
    add column language_id int references books (id);
alter table books
    add column publisher_id int references books (id);
alter table books
    add column author_id int references books (id);

