# Cat-Hotel-Database
## Welcome to Icream Cat Hotel! The database is to improve data management, provide better service for cats! 
Remember this is just a simple database, I created for myself to learns how to use Microsoft SQL Server.
![photo_2023-07-28_15-43-24](https://github.com/nguyenhieuhp96/Cat-Hotel-Database/assets/135586659/83db43f4-a04c-4686-822d-1afea638818f)

![microsoft-sql-server4529](https://github.com/nguyenhieuhp96/Cat-Hotel-Database/assets/135586659/e254bbb7-3217-4a97-a724-ebb653eb86f8)
### I. INTRODUCTION 
#### 1. Database
* ##### Database Name: Icream Cat Hotel
* ##### Database Diagram
<img width="697" alt="image" src="https://github.com/nguyenhieuhp96/Cat-Hotel-Database/assets/135586659/9369567a-9c58-48f6-a531-39544318a508">

#### 2. Advantages and Disadvantages
* ##### Advantages:
  * Manage hotel reservations
  * Gather information about hotel
  * Good for hotel development
* ##### Disadvantages:
  * Database is too simple

### II. CREATE DATABASE
#### 1. Table
* ##### reservation_fact:
  * booking_id: A unique confirmation number for each cat and date of service
  * cat_id: A unique number for each cat
  * room_number: Hotel room number
  * price: Price of a hotel room
  * number_of_night: Number of days a cat stays in the hotel
* ##### cat_dim:
  * booking_id: A unique confirmation number for each cat and date of service
  * cat_id: A unique number for each cat
  * cat_name: Name of the cat
  * cat_type: Type of the cat
* ##### booking_dim:
  * booking_id: A unique confirmation number for each cat and date of service
  * booking_location: Where the cat come from
* ##### room_dim:
  * booking_id: A unique confirmation number for each cat and date of service
  * room_number: Hotel room number
  * room_type: Type of the room
  * price: Price of the room
* ##### time_dim:
  * booking_id: A unique confirmation number for each cat and date of service
  * number_of_night: Number of days a cat stays in the hotel
  * arrival_date: Arrival date 
  * departure_date: Departure date 
  
