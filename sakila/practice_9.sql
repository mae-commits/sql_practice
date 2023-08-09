drop table string_tbl;

create table string_tbl
(char_fld char(30),
vchar_fld varchar(30),
text_fld text
);

-- desc string_tbl;

insert into string_tbl (char_fld, vchar_fld, text_fld)
values (
    'This is char data',
    'This is varchar data',
    'This is text data'
);

-- select * from string_tbl;

update string_tbl
set text_fld = 'This string didn''t work, but it does now';

-- select quote(text_fld) from string_tbl;

delete from string_tbl;

insert into string_tbl (char_fld, vchar_fld, text_fld)
values (
    'This string is 28 characters',
    'This string is 28 characters',
    'This string is 28 characters'
    );

-- select 
--     length(char_fld) char_length,
--     length(vchar_fld) varchar_length,
--     length(text_fld) text_length
-- from string_tbl;


delete from string_tbl;

insert into string_tbl(vchar_fld)
values 
    ('abcd'),
    ('xyz'),
    ('QRSTUV'),
    ('qrstuv'),
    ('12345');

-- select char_fld
-- from string_tbl
-- order by vchar_fld;

-- select 
--     strcmp('12345', '12345') 12345_12345, 
--     strcmp('abcd', 'xyz') abcd_xyz;

-- select name, name like '%y' ends_in_y
-- from category;

delete from string_tbl;

insert into string_tbl (text_fld)
values ('This string was 29 characters');

update string_tbl
set text_fld = concat(text_fld, ', but now it is longer');

-- select text_fld
-- from string_tbl;

-- select concat(first_name, ' ', last_name,
--         ' has been a customer since ', date(create_date)) cust_narrative
-- from customer;

-- select (37 * 59) / (78 - (8 * 6));

-- select pow(2, 10) kilobyte, pow(2,20) megabyte,
-- pow(2,30) gigabyte, pow(2,40) terabyte;

drop table account;

create table account
(
    account_id int,
    acct_type text,
    balance float
);

insert into account 
(account_id, acct_type, balance)
values
(123, 'MONEY MARKET', '785.22'),
(456, 'SAVINGS', '0.00'),
(789, 'CHECKING', '-324.22');

-- select account_id, sign(balance), abs(balance) from account;

-- select @@global.time_zone, @@session.time_zone;

-- select * from mysql.time_zone;

-- select 
--     cast('2019-09-17' as date) date_field, 
--     cast('108:17:57' as time) time_field;

-- update rental
-- set return_date = str_to_date('September 17, 2019', '%M %d, %Y')
-- where rental_id = 99999;

-- select * from rental where rental_id = 99999;

-- SELECT CURRENT_DATE(), CURRENT_TIME(), CURRENT_TIMESTAMP();

select date_add(current_date(), interval 5 day)