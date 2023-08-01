----- 1: Thành phố nào có lượng book phòng nhiều nhất, sắp xếp theo thứ tự giảm dần -----
select
booking_location,
count(booking_id) as total_booking
from testdb.dbo.booking_dim 
group by booking_location
order by total_booking desc

----- 2: Số lượng booking của các loại phòng, sắp xếp theo thứ tự giảm dần -----
select
room_type,
count(booking_id) as total
from testdb.dbo.room_dim
group by room_type
order by total desc

----- 3: Tìm ra danh sách những bé mèo và giống của mèo ở Hà Nội, Hải Phòng -----
select
cat_name,
cat_type,
booking_location
from testdb.dbo.cat_dim as c
left join testdb.dbo.booking_dim as b
on c.booking_id = b.booking_id
where booking_location in ('Ha Noi', 'Hai Phong')
order by booking_location

----- 4: Doanh thu từ các thành phố giảm dần -----
select
booking_location,
sum(price) as total
from testdb.dbo.booking_dim as b
join testdb.dbo.room_dim as r
on b.booking_id = r.booking_id
group by booking_location
order by total desc

----- 5: Liệt kê ra thời gian đến và thời gian đi của những bé mèo đã ở được hơn 5 ngày -----
select
cat_name,
arrival_date,
departure_date
from testdb.dbo.cat_dim as c
join testdb.dbo.time_dim as t
on c.booking_id = t.booking_id
where number_of_night >= 5
order by number_of_night 

----- 6: Liệt ra tên mèo, nơi đến, thời gian ở và thời gian đi từ 5/1/2023 cho đến 1/3/2023 -----
select 
cat_name,
booking_location,
arrival_date,
departure_date
from
testdb.dbo.cat_dim as c
join testdb.dbo.booking_dim as b on c.booking_id = b.booking_id
join testdb.dbo.time_dim as t on c.booking_id = t.booking_id
where arrival_date >= '1/5/23' and departure_date < '3/1/23'

----- 7: Tìm ra doanh thu của các thành phố và xếp hạng cho thành phố nào đem lại doanh thu nhiều nhất từ số thứ tự 1 rồi tuần tự xuống, 2 thành phố có cùng 1 doanh thu vẫn có số thứ tự khác nhau -----
with cte as (
select 
booking_location,
sum(price) as total_sale
from testdb.dbo.booking_dim as b 
join testdb.dbo.room_dim as r on b.booking_id = r.booking_id
group by booking_location)

select 
booking_location,
total_sale,
row_number() over(order by total_sale desc) as ranking_city
from cte

----- 8: Tìm ra số lần ở của tất cả các giống mèo -----
select
sselect
cat_type,
sum(case cat_type
	when 'Ragdoll' then 1 
	when 'Munchkin' then 1 
	when 'British Shorthair' then 1 
	when 'Persian' then 1
	when 'Sphynx' then 1 
	when 'Bengal' then 1 
	when 'Scottish Fold' then 1 
	when 'British Longhair' then 1 else 0 end) as total
from testdb.dbo.cat_dim
group by cat_type


----- 9: Doanh thu của mỗi tháng -----
with cte as(
select 
month(departure_date) as month,
(number_of_night * price) as total
from testdb.dbo.booking_dim b
join testdb.dbo.time_dim t 
on b.booking_id = t.booking_id
join testdb.dbo.room_dim r
on t.booking_id = r.booking_id
where arrival_date >= '1/1/2023' and arrival_date < '5/1/2023')

select 
month,
concat('$', sum(total), ' VND') as sale
from cte
group by month

----- 10: Tổng số tiền sử dụng dịch vụ phòng của các bé mèo =))))) -----
select 
cat_name,
(price * number_of_night) as total
from testdb.dbo.cat_dim c
join testdb.dbo.room_dim r
on c.booking_id = r.booking_id
join testdb.dbo.time_dim t
on r.booking_id = t.booking_id








