## 1. The number of room bookings by city
select 
	address as city,
	count(booking_id) as total_booking
from fact_hotel as fh
left join dim_customer as dc
 on fh.customer_id = dc.customer_id
group by city
order by total_booking desc

## 2. Total revenue by months.
select
	extract(month from check_in) as month,
	concat(sum(price_per_night), ' VND') as total_sales
from dim_booking as db
left join fact_hotel as fh
	on db.booking_id = fh.booking_id
left join dim_room as dr
	on fh.room_id = dr.room_id
group by month
order by month 

## 3. Total bookings by months.
select
	extract(month from check_in) as month,
	count(booking_id) total_booking
from dim_booking
group by month
order by total_booked desc

## 4. Which cat breed uses the most services? 
select
	dc.species,
	count(sale_id) as total
from dim_cat as dc
left join fact_hotel as fh
	on dc.pet_id = fh.pet_id
group by dc.species
order by total desc

## 5. Customer summary.
select
	concat(dc.first_name, ' ', dc.last_name) as customer_full_name,
	dr.room_type,
	(db.check_out - db.check_in) as total_day_stayed,
	concat(price_per_night * (db.check_out - db.check_in), ' VND') as total
from dim_customer as dc
left join fact_hotel as fh 
	on dc.customer_id = fh.customer_id
left join dim_room as dr
	on fh.room_id = dr.room_id
left join dim_booking as db
	on fh.booking_id = db.booking_id

## 6. List the check-in and check-out times of the cats that have stayed for less than 5 days.
select 
	dc.pet_id,
	dc.name,
	db.check_in,
	db.check_out
from dim_cat as dc
left join fact_hotel as fh
	on dc.pet_id = fh.pet_id
left join dim_booking as db
	on fh.booking_id = db.booking_id
where 
	(db.check_out - db.check_in) <= 5

## 7. Find the number of bookings for all cat breeds.
select 
	dc.species,
	count(db.booking_id) as total_booking
from dim_cat as dc
left join fact_hotel as fh
	on dc.pet_id = fh.pet_id
left join dim_booking as db
	on fh.booking_id = db.booking_id
group by dc.species
order by total_booking desc

## 8. The number of bookings for each type of room.
select
	dr.room_type,
	count(fh.sale_id) as total_booking
from dim_room as dr
left join fact_hotel as fh
	on dr.room_id = fh.room_id
group by dr.room_type

## 9. Provide information on customers who used services in the first half of the year.
select
	concat(dcus.first_name, ' ', dcus.last_name) as customer_full_name,
	dcus.address,
	dcus.phone_number,
	dcat.name as cat_name,
	dcat.gender as cat_gender
from dim_customer as dcus
left join fact_hotel as fh 
	on dcus.customer_id = fh.customer_id
left join dim_cat as dcat
	on fh.pet_id = dcat.pet_id
left join dim_booking as db
	on fh.booking_id = db.booking_id
where 
	db.check_in between '2024/01/01' and '2024/06/30' 
	and db.check_out between '2024/01/01' and '2024/06/30'

## 10. Provide the number of male and female cats that booked rooms in the second half of the year.
select
	dc.gender as cat_gender,
	count(db.booking_id) as total_booking
from dim_cat as dc
left join fact_hotel as fh
	on dc.pet_id = fh.pet_id
left join dim_booking as db
	on fh.booking_id = db.booking_id
where 
	db.check_in between '2024/01/06' and '2024/12/31' 
	and db.check_out between '2024/01/06' and '2024/12/31'
group by cat_gender
