SELECT * FROM new.hospital_bills;

describe hospital_bills;

-- create view
create view V3 as
select * from hospital_bills;
select * from V3;

-- check for duplicates
select *, count(bill_id)
from V3 
group by bill_id, patient_id, appointment_id, total_amount
having count(bill_id)>1;

-- check for nulls
select *
from V3
where bill_id is null or patient_id is null or appointment_id is null or total_amount is null;

-- max total amount paid by patient (top 10)
select sum(total_amount), patient_id
from v3
group by patient_id
order by sum(total_amount) desc limit 10;

-- max revenue from which city
select sum(h.total_amount) as revenue, p.city
from hospital_bills as h join patients as p
on h.patient_id= p.patient_id
group by p.city
order by revenue desc limit 5;
