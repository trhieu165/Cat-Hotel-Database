# Cat-Hotel-Database
## Welcome to Icream Cat Hotel! The database is to improve data management, provide better service for cats! 
Remember this is just a simple database, I created for myself to learns how to use PostgreSQL Server.
![photo_2023-07-28_15-43-24](https://github.com/nguyenhieuhp96/Cat-Hotel-Database/assets/135586659/83db43f4-a04c-4686-822d-1afea638818f)

![PostgreSQL-Logo](https://github.com/user-attachments/assets/e4153bbf-9392-48b4-a8ea-18b717b9e2c1)
### I. INTRODUCTION 
#### 1. Database
* ##### Database Name: Icream Cat Hotel
* ##### Database Diagram
<img width="684" alt="hotel_cat_database" src="https://github.com/user-attachments/assets/8564c05f-4279-41d7-b5bf-6dae5a695e10">

#### 2. Advantages and Disadvantages
* ##### Advantages:
  * Manage hotel reservations
  * Gather information about hotel
  * Good for hotel development
* ##### Disadvantages:
  * Database is too simple

### II. CREATE DATABASE
#### 1. Tables
* [Create tables](https://github.com/trhieu165/Cat-Hotel-Database/blob/main/create_table.sql)
* [Insert tables](https://github.com/trhieu165/Cat-Hotel-Database/blob/main/insert_table.sql)
* ##### fact_hotel:
  * sale_id: A unique number for each service
  * customer_id: A unique number for each customer
  * pet_id: A unique number for each cat
  * room_id: A unique number for each room type
  * booking_id: A unique confirmation number for each date of service
* ##### dim_cat:
  * pet_id: A unique number for each cat
  * name: Name of the cat
  * age: Age of the cat
  * gender: Gender of the cat
  * species: Specie of the cat
* ##### dim_booking:
  * booking_id: A unique confirmation number for each date of service
  * check_in: Check in date
  * check_out: Check out date
* ##### dim_room:
  * room_id: A unique number for each room type
  * room_type: Type of the room
  * price_per_night: Price of the room
* ##### dim_customer:
  * customer_id: A unique number for each customer
  * first_name: Number of days a cat stays in the hotel
  * last_name: Arrival date
  * address: Address of the customer
  * phone_number: Contact of the customer

#### 2. [Queries](https://github.com/nguyenhieuhp96/Cat-Hotel-Database/blob/main/SQL%20Queries/SQLQuery.sql](https://github.com/trhieu165/Cat-Hotel-Database/blob/main/queries.sql)
##### 1: Which city has the most room bookings?
##### 2: Total sales by months.
##### 3: Total bookings by months.
##### 4: Which cat breed uses the most services? 
##### 5: Customer summary.
##### 6: List the check-in and check-out times of the cats that have stayed for less than 5 days.
##### 7: Find the number of bookings for all cat breeds.
##### 8: The number of bookings for each type of room.
##### 9: Provide information on customers who used services in the first half of the year.
##### 10: Provide the number of male and female cats that booked rooms in the second half of the year.
