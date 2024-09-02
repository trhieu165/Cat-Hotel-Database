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
* Create table: [Create tables](https://github.com/trhieu165/Cat-Hotel-Database/blob/main/create_table.sql)
* Insert table: [Insert tables](https://github.com/trhieu165/Cat-Hotel-Database/blob/main/insert_table.sql)
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

#### 2. [Queries](https://github.com/nguyenhieuhp96/Cat-Hotel-Database/blob/main/SQL%20Queries/SQLQuery.sql)
##### 1: Thành phố nào có lượng book phòng nhiều nhất, sắp xếp theo thứ tự giảm dần 
##### 2: Số lượng booking của các loại phòng, sắp xếp theo thứ tự giảm dần
##### 3: Tìm ra danh sách những bé mèo và giống của mèo ở Hà Nội, Hải Phòng
##### 4: Doanh thu từ các thành phố giảm dần
##### 5: Liệt kê ra thời gian đến và thời gian đi của những bé mèo đã ở được hơn 5 ngày
##### 6: Liệt ra tên mèo, nơi đến, thời gian ở và thời gian đi từ 5/1/2023 cho đến 1/3/202
##### 7: Tìm ra doanh thu của các thành phố và xếp hạng cho thành phố nào đem lại doanh thu nhiều nhất từ số thứ tự 1 rồi tuần tự xuống, 2 thành phố có cùng 1 doanh thu vẫn có số thứ tự khác nhau
##### 8: Tìm ra số lần ở của tất cả các giống mèo
##### 9: Doanh thu của mỗi tháng
##### 10: Tổng số tiền sử dụng dịch vụ phòng của các bé mèo
