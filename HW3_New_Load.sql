-- Created by Nila Niroula CS 3810 HW3

\COPY Flight FROM 'C:\Users\bhim2009\Desktop\Flight.csv' WITH DELIMITER ',' CSV HEADER;

\COPY Carriers( Unique_Carrier_Entity, Unique_Carrier, Unique_Carrier_Name) FROM 'C:\Users\bhim2009\Desktop\Carriers.csv' WITH DELIMITER ',' CSV HEADER;

\COPY Airline_Info FROM 'C:\Users\bhim2009\Desktop\Airline_Info.csv' WITH DELIMITER ',' CSV HEADER;

\COPY Arrival FROM 'C:\Users\bhim2009\Desktop\Arrival.csv' WITH DELIMITER ',' CSV HEADER;

\COPY States FROM 'C:\Users\bhim2009\Desktop\States.csv' WITH DELIMITER ',' CSV HEADER;

\COPY Extra_Table FROM 'C:\Users\bhim2009\Desktop\ Extra_Table.csv' WITH DELIMITER ',' CSV HEADER;
