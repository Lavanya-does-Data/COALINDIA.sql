create table coal_india (
date date,
symbol text,
pre_close numeric,
open numeric,
high numeric,
low numeric,
close numeric,
volume bigint,
turnover_lacs numeric,
no_of_trades bigint,
deliv_volume bigint,
"deliv_%" numeric
);
select * from coal_india;
select count(date)
from coal_india
where date between '2020-12-31' and '2022-01-01';
update coal_india
set turnover_lacs= 72564.33
where date='1/3/2020';
select count(no_of_trades), date
from coal_india
where date<'2020-12-31'
group by date;
select * from coal_india;
select *
from coal_india
order by date desc;
select max(close)
from coal_india;
select date, open, close
from coal_india
where close>open;
select date, no_of_trades
from coal_india
order by no_of_trades desc
limit 1;
select "deliv_%"
from coal_india
order by "deliv_%" asc;
