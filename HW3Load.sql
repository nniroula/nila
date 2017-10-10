-- Created by Nila Niroula CS 3810

COPY Airline FROM 'Airline.csv' WITH (FORMAT csv);
COPY Carrier FROM 'Carrier.csv' WITH (FORMAT csv);
COPY Carrier_Decode FROM 'Carrier_Decode.csv' WITH (FORMAT csv);
COPY Carrier_Group FROM 'Carrier_Group.csv' WITH (FORMAT csv);
COPY Carrier_Group_New FROM 'Carrier_Group_New.csv' WITH (FORMAT csv);
COPY City FROM 'City.csv' WITH (FORMAT csv);
COPY Flight FROM 'Flight.csv' WITH (FORMAT csv);
COPY Region FROM 'Region.csv' WITH (FORMAT csv);
COPY State FROM 'State.csv' WITH (FORMAT csv);
COPY Unique_Carrier FROM 'Unique_Carrier.csv' WITH (FORMAT csv);
COPY Wac FROM 'Wac.csv' WITH (FORMAT csv);