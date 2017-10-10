-- Created by Nila Niroula CS 3810

CREATE TABLE Airline (
airline_id int PRIMARY KEY
);

CREATE TABLE Carrier (
carrier_id VARCHAR PRIMARY KEY,
carrier_entity int,
carrier_name VARCHAR
);

CREATE TABLE Unique_Carrier (
unique_carrier VARCHAR PRIMARY KEY,
unique_carrier_entity int,
unique_carrier_name VARCHAR
);

CREATE TABLE WAC (
wac_id int PRIMARY KEY
);

CREATE TABLE Region (
region VARCHAR PRIMARY KEY
);

CREATE TABLE Carrier_Group (
carrier_group_id int PRIMARY KEY
);

CREATE TABLE Carrier_Group_New (
carrier_group_new_id int PRIMARY KEY
);

CREATE TABLE State (
state_fips int PRIMARY KEY,
state_abr VARCHAR,
state_nm VARCHAR,
wac_id int
);

CREATE TABLE City (
city_market_id VARCHAR PRIMARY KEY,
city VARCHAR,
city_name VARCHAR
);

CREATE TABLE Distance_Group (
distance_group_id int PRIMARY KEY
);

CREATE TABLE Carrier_Decode (
airline_id int references Airline(airline_id),
carrier VARCHAR references Carrier(carrier_id),
unique_carrier VARCHAR references Unique_Carrier(unique_carrier_id),
wac int references Wac(wac_id),
carrier_group int,
carrier_group_new int,
region VARCHAR,
start_date_source date
thru_date_source date,
PRIMARY KEY (airline_id, unique_carrier, start_date_source)
);

CREATE TABLE Flight (
passengers int,
freight int,
mail int,
distance int,
airline_id int references Airline(airline_id),
unique_carrier VARCHAR references Unique_Carrier(unique_carrier_id),
region VARCHAR,
carrier VARCHAR references Carrier(carrier_id),
carrier_group int,
carrier_group_new int,
origin_airport_id int,
origin_airport_seq_id int,
origin_city_market_id VARCHAR references City(city_id),
origin_state_fips references State(state_fips),
origin_wac references Wac(wac_id),
dest_airport_id int,
dest_airport_seq_id int,
dest_city_market_id VARCHAR references City(city_id),
dest_state_fips references State(state_fips),
dest_wac references Wac(wac_id),
year int,
quarter int,
month int,
distance_group int references Distance_Group(distance_group_id),
class VARCHAR,
PRIMARY KEY (airline_id, unique_carrier, distance, month, class)
);
