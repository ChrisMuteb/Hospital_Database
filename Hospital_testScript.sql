select * from doctor;

update doctor set doc_lastname='Horses' where doc_id=3;

describe appointment;
select * from appointment;
select * from appointment where app_duration = 30 order by doc_id desc;

select * from appointment a
join doctor d on a.doc_id = d.doc_id where app_duration < 50;

--
-- SQL Joins
--
select * 
from patient p 
left join appointment a 
on p.pat_id = a.pat_id;

select * 
from patient p 
right join appointment a 
on p.pat_id = a.pat_id;

select * 
from patient p 
left join appointment a 
on p.pat_id = a.pat_id
where a.pat_id is null;

select * 
from patient p 
inner join appointment a 
on p.pat_id = a.pat_id;

select count(*) from appointment;
select count(*) from appointment where doc_id = 2;
select * from insurance order by ins_id;

select p.pat_id as patientId, count(a.pat_id) as cnt from appointment a
left join patient p 
on p.pat_id = a.pat_id
group by a.pat_id
order by cnt;

 select pat_id from (
	select a.pat_id, count(a.pat_id) as cnt from appointment a
    left join patient p
    on p.pat_id = a.pat_id
    group by a.pat_id
    order by cnt desc
 ) bookings;