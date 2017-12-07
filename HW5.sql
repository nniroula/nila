-- Created by Nila Niroula

Create table Customers( First_Name varchar(150),
			    Last_Name varchar(150),
			    Street varchar(200),
			    Zip_Code int,                    -- zip code is 5 digit
			    Email_Address varchar(200),
			    phoneNumber int,
			    City varchar(100),
			    Country varchar( 100),
			    PRIMARY KEY(First_Name, Last_Name) -- may have same first or last name
			    FOREIGN KEY( Country, City) REFERENCES Address( Country, City)
			  ); 

Create table Address( Country varchar(100),
		      City varchar(100), 
			State varchar(150),
			Country_Code int,
			PRIMARY KEY(Country, City),
			 FOREIGN KEY( Country_Code) REFERENCES Phone_Number( Country_Code) 
                       ); 
			
Create table Phone_Number( First_Name varchar(150),
			   Last_Name varchar(150),
			   Country_Code int,
			   Area_Code int,
			   Local_Number int,
			   phoneNumber int,        -- but what if format is 720-499-3220 ( if so, use varchar)
			   PRIMARY KEY( Country_Code),
			   FOREIGN KEY( First_Name, Last_Name) REFERENCES Customers( First_Name, Last_Name)
			 );

Create table Flight( Code_Of_Airline int,
		     Unique_Flight_Number int,
		     Code_Of_Origin_City varchar(20),
		     Code_Of_Dest_City varchar(20),
		     Departure_Hour int,
		     Departure_Minute int,
		     Departure_Date date,
		     PRIMARY KEY( Code_Of_Airline),
		     FOREIGN KEY( Unique_Flight_Number) REFERENCES Passangers( Unique_Flight_Number)
		    );

Create table Passangers( Unique_Flight_Number int,
			  Unique_Booking_Number int,
			  Arrival_Hour int,
			  Arrival_Minute int,
			  Arrival_Date date,
			  PRIMARY KEY( Unique_Flight_Number)
			 );

Create table Booking( Unique_Booking_Number int,  
			Code_Of_Airline int, 
			Payee_First_Name Varchar(150), 
			Payee_Last_Name Varchar( 150),			 
			First_Name Varchar(150), 
			Last_Name Varchar(150), 
			Code_Of_Booking_City int, 
			Date_Of_booking date,
			PRIMARY KEY( Unique_Booking_Number),
			FOREIGN KEY( Code_Of_Airline) REFERENCES Flight( Code_Of_Airline) 
		     );
			
			
			   