create user phone identified by 123456;
grant connect, resource to phone;
create table brand(
       brand_id number primary key,
       brand_name varchar2(64) not null,
       brand_description varchar2(1000)
);








