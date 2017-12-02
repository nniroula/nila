-- Created by Nila Niroula

Create table Flights( Airline_ID INT,	
		      Unique_Carrier_Entity Varchar(100),	
		      Passangers INT,	
		      Freight INT,	
		      Distance INT,	
		      Carrier_Group INT
		    );                        -- Primary Key is Airline_ID

Create table Carrier( Unique_Carrier_Entity Varchar(100),	
		      Unique_Carrier Varchar(100),	
		      Unique_Carrier_Name Varchar(200)
		    );                        -- Primary key is Unique_Carrier_Entity

Create table Arrivals( Airport_Seq_ID INT,	
		       Airline_ID INT,	
		       Origin_Airport_ID INT,	
		       Dest_Airport_ID INT
		     );                      -- Primary key is Airport_Seq_ID

Create table States( State_Name Varchar(50),	
		     State_ABR Varchar(2),	
		     State_Fips INT,	
		     State_WAC INT,	
		     City_Name Varchar(50)
		   );                       -- Primary key is State_Name

Create table Airports( State_Name Varchar(50),	
		       Airport_ID INT,	
		       Airport Varchar(3),	
		       Airport_Seq_ID INT
		     );                     -- Primary key is Airport_ID

Create table Cities( City_Name Varchar(50),	
		     Airport_ID INT,
		     City_Market_ID INT
		    );                       -- Primary key is City_Name

Create table Extras( Carrier_Group INT,	
		     Departure_Scheduled INT,	
		     Departures_Performed INT,	
		     Payload INT,	
		     Seats INT,	
		     Mail INT,	
		     Ramp_To_Ramp INT,	
		     Air_Time INT,	
		     Region Varchar(50),	
		     Carrier_Ggoup_New INT,	
		     Aircraft_Group INT,	
		     Aircraft_Type INT,	
		     Aircraft_Config INT,	
		     Year INT,	
		     Quarter INT,	
		     Month INT,	
		     Class Varchar(50),	
		     Start_Date_Source date,	
		     Thru_Date_Source date
		  );                        -- Primary key is Carrier_Group
								
 
 				
	

 
