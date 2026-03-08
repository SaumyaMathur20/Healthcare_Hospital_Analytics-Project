SELECT * FROM new.payments;

describe payments;

-- create view
create view V5 as
select * from payments;
select * from V5;

-- check for null
select *
from V5
where payment_id is null or bill_id is null or payment_method is null or payment_amount is null;

-- check for duplicates
select *, count(payment_id)
from V5
group by payment_id, bill_id, payment_amount, payment_method
having count(payment_id)>1;

-- count of records
select count(payment_id)
from V5;

-- patients choice of method for payment
select count(h.patient_id) as count, pay.payment_method
from hospital_bills as h join payments as pay
on h.bill_id= pay.bill_id
group by pay.payment_method
order by count desc;
