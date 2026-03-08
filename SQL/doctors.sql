SELECT * FROM new.doctors;

describe doctors;

-- create view
create view V2 as
select * from doctors;
select * from V2;

-- check for duplicates
select *,
count(doctor_id)
from V2
group by doctor_name, department, experience_years, doctor_id
having count(doctor_id)>1;

-- check for null
select *
from V2 
where doctor_id is null or doctor_name is null or department is null or experience_years is null;

-- count of total
select count(doctor_id)
from V2;

-- number of doctors from same depatment
select department, count(doctor_id)
from v2
group by department
order by count(doctor_id);

-- doctors with more than 5 years of exp
select *
from v2
where experience_years>4;


