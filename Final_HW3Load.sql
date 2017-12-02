-- Created by Nila Niroula


\COPY Flights FROM 'C:\Users\bhim2009\Desktop\Flights.csv' WITH DELIMITER ',' CSV HEADER;

\COPY Carrier FROM 'C:\Users\bhim2009\Desktop\Carrier.csv' WITH DELIMITER ',' CSV HEADER;

\COPY Arrivals FROM 'C:\Users\bhim2009\Desktop\Arrivals.csv' WITH DELIMITER ',' CSV HEADER;

\COPY State FROM 'C:\Users\bhim2009\Desktop\State.csv' WITH DELIMITER ',' CSV HEADER;

\COPY Airports FROM 'C:\Users\bhim2009\Desktop\Airports.csv' WITH DELIMITER ',' CSV HEADER;

\COPY Cities FROM 'C:\Users\bhim2009\Desktop\Cities.csv' WITH DELIMITER ',' CSV HEADER;

\COPY Extras FROM 'C:\Users\bhim2009\Desktop\Extras.csv' WITH DELIMITER ',' CSV HEADER;

