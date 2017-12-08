	--NOTE:  I cannot run stored Procedure in my computer. Even I have tried running it in one of my classmates computer .
	-- It does not return any values, which is fine. But I am doubting if it is  not  working at all.

-- Created by Nila Niroula for CS3810 HW# 4 Stored Procedure

Create or Replace Function Flight_Details()		            -- always use functions in stored procedure
	returns Varchar(150) as $Airline_Name$,
		int as $totalFlights$,                                                        -- must have function inside $$, so do total or avg or sum
		float as $avgDistance$,
		float as $passengersToDestination$,                            
		float as $freightToDestination$,                                
		int as $corrCoeffPasengersToDestination$,         -- use aggregated function
		int as $corrCoeffFreightToDestination$,                  

	declare Airline_Name varchar(200);
		totalFLights int;
		avgDistance int;
		passengersToDestination int;
		corrCoefPtoD int;
		FreightToDestination float;
		corrCoefFtoD int;
BEGIN
	select DISTINCT Unique_Carrier_Name from Carrier into Airline_Name;
	select count(*) from Flight_Details WHERE                                                            -- function call( count)
	Flight_Details.Unique_Carrier_Name = Airline_Name into avgDistance;
	select avg(Distance) from Flight_Details WHERE
	Flight_Details.Unique_Carrier_Name = Airline_Name into avgDistance;
	select passengers from Flight_Details WHERE
	Flight_Details.Unique_Carrier_Name = Airline_Name into pasengersToDestination;         
	select Distance from Flight_Details WHERE
	Flight_Details.Unique_Carrier_Name = Airline_Name into pasengersToDestination;
	select freight/Distance from Flight_Details WHERE
	Flight_Details.Unique_Carrier_Name = Airline_Name into FrieghtToDestination;

		if passengersToDestination > 1
		Then corrCoefPToD = 1;
		Else corrCoefPToD = -1;
		End if;

		if FreightToDestination >1
		Then corrCoefFToD = 1;
		Else corrCoefFToD = -1;
		End if;
	End; $Airline_Name $;                                -- returning argument goes here inside $$
		language sqlite


	
