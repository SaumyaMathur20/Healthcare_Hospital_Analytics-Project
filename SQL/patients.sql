SELECT * FROM new.patients;

describe patients;

-- create view
create view V4 as
select * from patients;
select * from V4;

-- check for null 
select *
from V4
where patient_id is null or patient_name is null or gender is null or age is null or city is null;

-- check for duplicates
select *, count(patient_id) as record
from V4
group by patient_id, patient_name, gender, age, city
having record>1;

-- count number of records
select count(patient_id)
from V4;


-- number of male and female patients 
select gender, count(patient_id)
from V4
group by gender;

-- average age of patients
select round(avg(age),0)
from v4;

-- max patients from which city
select city, count(patient_id) as count, gender
from v4
group by city, gender
order by count desc;
