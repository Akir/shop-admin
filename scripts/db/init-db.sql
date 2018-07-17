create user phone identified by 123456;
grant connect, resource to phone;
create table brand(
       brand_id number primary key,
       brand_name varchar2(64) not null,
       brand_description varchar2(1000)
);
create table cellphone(
       cellphone_id number primary key,
       cellphone_model varchar2(64) not null,
       cellphone_os varchar2(64),
       cellphone_cpu varchar2(64),
       cellphone_ram number,            --单位为GB
       cellphone_storage number,        --单位为GB
       cellphone_color varchar2(64),
       cellphone_price number not null, --单位为分
       brand_id number references brand(brand_id) not null,
       cellphone_description varchar2(1000)
);







