drop table if exists dim_customer cascade;
drop table if exists dim_cat cascade;
drop table if exists dim_room cascade;
drop table if exists dim_booking cascade;
drop table if exists fact_hotel cascade;

create table if not exists dim_customer (
	customer_id int not null primary key,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	address varchar(50) not null,
	phone_number varchar(10) not null
);

create table if not exists dim_cat (
	pet_id int not null primary key,
	name varchar(10) not null,
	age int not null,
	gender varchar(5) not null,
	species varchar(10) not null
);

create table if not exists dim_room (
	room_id int not null primary key,
	room_type varchar(10) not null,
	price_per_night int not null,
);

create table if not exists dim_booking (
	booking_id int not null primary key,
	check_in date not null,
	check_out date not null
);

create table if not exists fact_hotel (
    sale_id int not null primary key,
    booking_id int not null,
    customer_id int not null,
    pet_id int not null,
    room_id int not null,
    foreign key (booking_id) references dim_booking(booking_id),
    foreign key (customer_id) references dim_customer(customer_id),
    foreign key (pet_id) references dim_cat(pet_id),
    foreign key (room_id) references dim_room(room_id)
);