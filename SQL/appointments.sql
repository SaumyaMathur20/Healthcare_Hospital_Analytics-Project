SELECT * FROM new.appointments;

-- describe table
describe appointments;

-- change to date format
SET SQL_SAFE_UPDATES=0;
update appointments
set appointment_date = str_to_date(appointment_date, '%Y-%m-%d');

Alter table appointments
modify appointment_date date;

-- create view
create view V1 as
select * 
from appointments;
select * from V1;

-- describe view
describe V1;

-- check for null
select *
from V1
where appointment_id is null or patient_id is null or doctor_id is null or appointment_date is null or status is null;

-- check for duplicates
select *,
count(appointment_id)
from V1 
group by appointment_id, patient_id, doctor_id, appointment_date, status
having count(appointment_id)>1;

-- check for total count 
select
count(appointment_id)
from V1;

-- check for people who cancelled
select status, count(appointment_id)
from V1
group by status
having status = "cancelled";

-- status regarding
select status, count(appointment_id) as count
from V1
group by status
order by count desc;

-- how many appointments on same date
select count(patient_id), appointment_date
from v1
group by appointment_date
having appointment_date>1;

-- top 5 doc
select a.doctor_id, count(a.appointment_id) as count, d.department
from appointments as a join doctors as d
on a.doctor_id = d.doctor_id
group by a.doctor_id, d.department
having count>1
order by count desc limit 5;





