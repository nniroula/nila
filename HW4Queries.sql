-- Created by Nila Niroula CS3810 HW4A Queries

1) --This is a query for how many passengers departed colorado on all airlines	

Select Cities.City_Name, States.State_Name, Airport_Info.Airport, Carrier.Unique_Carrier_Name, Sum( Flight_Info.Passengers)
FROM Carrier natural join Flight_Info natural join Airport_Info natural join Cities natural join States
WHERE Flight_Info.Origin_Airport_Id = Airport_Info.Airport_ID and Airport_Info.City_Market_ID = Cities.City_Market_ID and Cities.State_ABR = 'CO'
GROUP BY  Cities.City_Name, States.State_Name, Airport_Info.Airport, Carrier.Unique_Carrier_Name
ORDER BY Carrier.Unique_Carrier_Name;


2) -- This the query for total freight that left colorado on all airlines	

Select Cities.City_Name, States.State_Name, Airport_Info.Airport, Carrier.Unique_Carrier_Name, Sum( Flight_Info.Freights)
FROM Carrier natural join Flight_Info natural join Airport_Info natural join Cities natural join States
WHERE Flight_Info.Origin_Airport_Id = Airport_Info.Airport_ID and Airport_Info.City_Market_ID = Cities.City_Market_ID and Cities.State_ABR = 'CO'
GROUP BY Cities.City_Name, States.State_Name, Airport_Info.Airport, Carrier.Unique_Carrier_Name
ORDER BY Cities.City_Name;


3)	-- This is a query for how many passengers arrived in Colorado from outside

Select originO.City_Name as Origin_City, originS.State_Name as Origin_State, destO.City_Name as Dest_City, Unique_Carrier_Name, sum(Passengers)
FROM Cities originO, Cities destO, States originS, Carrier natural join Flight_Info, Airport_Info originAirport, Airport_Info destAirport
WHERE Flight_Info.Origin_Airport_ID = originAirport.Airport_ID and originAirport.City_Market_ID = originO.City_Market_ID and originO.State_ABR <> 'CO' and originO.State_ABR = originS.State_ABR and Flight_Info.Dest_Airport_ID = destAirport.Airport_ID and destAirport.City_Market_ID = destO.City_Market_ID and destO.State_ABR = 'CO'
GROUP BY Origin_City, Origin_State, Dest_City, Unique_Carrier_Name
ORDER BY Origin_City;

 
4)	-- This is a query for all the flights into the Denver that has distance between 500 and 1200 miles

Select City_Name Origin_City, State_Name Origin_State, Unique_Carrier_Name
FROM Cities, States, Carrier, Flight_Info, Airport_Info
WHERE Flight_Info.Origin_Airport_ID = Airport_Info.Airport_ID and Airport_Info.City_Market_ID = Cities.City_Market_ID and Cities.State_ABR = States.State_ABR and Flight_Info.Airline_ID = Carrier.Airline_ID and Flight_Info.Distance between 500 and 1200 and Flight_Info.Dest_Airport_ID = 11292
GROUP BY Origin_City, Origin_State, Unique_Carrier_Name
ORDER BY Origin_City;


