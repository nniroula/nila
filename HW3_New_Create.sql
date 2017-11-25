-- Created by Nila Niroula

 Create table Flight( Airline_ID INT, 
		      Unique_Carrier_Entity INT, 
		      Passangers INT, 
		      Freight INT, 
		      Distance INT, 
		      Carrier_Group INT); -- Primary key is Airline_ID

Create table Carriers( Unique_Carrier_Entity INT,	
		       Unique_Carrier Varchar(10),	
		       Unique_Carrier_Name Varchar(80));  -- Primary key is Unique_Carrier_Enity		
 
Create table Airline_Info( Origin_City Varchar(50),	
			   Airline_ID INT,	
			   Dest_City Varchar(50),	
			   Origin Varchar(3),	
			   Origin_Airport_ID INT);  -- Primary key is Origin_City and Origin    													
Create table Arrival( Dest_State_NM Varchar(50),
		      Dest_Airport_ID INT,
	       	      Dest Varchar(3),
		      Origin_State_NM Varchar(50),	
		      Airline_ID INT);	           -- Primary key is Dest_Airport_ID and Airline_ID	

Create table States( State_NM Varchar(50),
		     State_ABR Varchar(2),	
		     State_Fips INT,
	             WAC INT,
	             Airport_Seq_ID INT,
		     City_Name Varchar(50)); -- Primary key is State_NM	

Create table Extra_Table( Airline_ID INT,
		          Mail INT,	
		          Region Varchar (25),	
		          Carrier_Group_New INT,
		          Year INT,	
		          Quarter INT,	
		          Month INT,
		          Distance_Group INT,	
		          Class Varchar(1),
		          Departure_Scheduled INT,	
		          Departure_Performed INT,	
		          Payload INT,	
		          Seats INT,	
		          Start_Date_Source date,	
		          Thru_Date_Source date,	
		          Ramp_To_Ramp INT,	
		          Air_Time INT,	
		          Aircraft_Group INT,	
		          Aircraft_Type INT,
		          Aircraft_Config INT,	
		          Origin_City_Market_ID INT);  -- Primary key is Airline_ID
