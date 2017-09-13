-- Created by Nila Niroula

--1 Due to technical issue, I can not install postgres in my computer

--2 To create table countries based on information for various countries
CREATE TABLE countries(name VARCHAR(20), latitude VARCHAR(10), longitude VARCHAR(10), area INT, population INT, gdp INT, gdpYear INT);

--4a To create table Borders
CREATE TABLE Borders(listedCountries VARCHAR(20), borderCountries VARCHAR(20));

--4b To populate both tables(countries and Borders) with proper information for various countries

insert into countries values('Germany', '51 00 N', '09 00 E', 357022, 80594017, 398, 2016);
insert into countries values('Belgium', '50 50 N', '04 00 E', 30528, 11491346, 509, 2016); 
insert into countries values('Luxembourg', '49 45 N', '06 10 E', 2586, 594130, 59, 2016);
insert into countries values('Netherlands', '52 30 N', '05 45 E', 41543, 17084719, 871, 2016);
insert into countries values('Poland', '52 00 N', '20 00 E', 312685, 38476269, 1052, 2016);
insert into countries values('Czechia', '49 45 N', '15 30 E', 78869, 10674723, 350, 2016);
insert into countries values('Austria', '47 20 N', '13 20 E', 83871, 8754413, 417, 2016);
insert into countries values('Switzerland', '47 00 N', '08 00 E', 41277, 8236303, 496, 2016);
insert into countries values('France', '46 00 N', '02 00 E', 643801, 67106161, 270, 2016);

insert into Borders values('Germany', 'Luxembourg');
insert into Borders values('Germany', 'Poland');
insert into Borders values('Germany', 'France');
insert into Borders values('Germany', 'Netherlands');
insert into Borders values('Germany', 'Austria');
insert into Borders values('Germany', 'Czechia');
insert into Borders values('Germany', 'Denmark');
insert into Borders values('Germany', 'Switzerland');
insert into Borders values('Germany', 'Belgium');

insert into Borders values('Luxembourg', 'Germany');
insert into Borders values('Poland', 'Germany');
insert into Borders values('Czechia', 'Germany');
insert into Borders values('Austria', 'Germany');
insert into Borders values('Switzerland', 'Germany');
insert into Borders values('Belgium', 'Germany');
insert into Borders values('Netherlands','Germany');
insert into Borders values('Denmark', 'Germany');
insert into Borders values('France', 'Germany');

--4c query to display all countries that border Germany
select bordercountries from Borders where listedcountries = 'Germany';

--4d query to display all countries having population greater than 100 million
select countries.name from countries where population > 100000000;

--4e query to display all countries having population greater than 100 million and border Germany
select countries.name , Borders.bordercountries from countries, Borders where countries.population > 100000000 and Borders.listedcountries = 'Germany';


 

