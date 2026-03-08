SELECT * FROM new.treatments;

describe treatments;

-- create view
create view V6 as
select * from treatments;
select * from V6;

-- check nulls 
select *
from V6
where treatment_id is null or appointment_id is null or treatment_name is null or treatment_cost is null;

-- check duplicates
select *, count(treatment_id) as count
from V6
group by treatment_id, treatment_name, appointment_id, treatment_cost
having count>1;

-- number of each treatment
select treatment_name, count(treatment_id) as count
from V6
group by treatment_name
order by count desc;

-- total treatment cost
select sum(treatment_cost) as sum, treatment_name
from V6
group by treatment_name
order by sum desc;

-- total revenue of each treatment for the hospital
select sum(h.total_amount) as total, t.treatment_name
from hospital_bills as h join treatments as t
on h.appointment_id= t.appointment_id
group by t.treatment_name
order by total desc;

