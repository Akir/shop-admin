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
create sequence seq_cellphone;
create sequence seq_brand;

insert into brand values(seq_brand.nextval,'苹果','苹果...');
insert into brand values(seq_brand.nextval,'三星','三星...');
insert into brand values(seq_brand.nextval,'小米','小米...');
insert into brand values(seq_brand.nextval,'华为','华为...');
insert into brand values(seq_brand.nextval,'OPPO','OPPO...');
insert into brand values(seq_brand.nextval,'VIVO','VIVO...');
insert into brand values(seq_brand.nextval,'索尼','索尼...');

insert into cellphone(cellphone_id,cellphone_model,cellphone_os,cellphone_cpu,cellphone_storage,
cellphone_price,brand_id,cellphone_description) 
values(seq_cellphone.nextval, 'iPhone X', 'iOS', '苹果', 64, 759900, 2, 'iPhone X...');
insert into cellphone(cellphone_id,cellphone_model,cellphone_os,cellphone_cpu,cellphone_storage,
cellphone_price,brand_id,cellphone_description) 
values(seq_cellphone.nextval, 'iPhone 8 Plus', 'iOS', '苹果', 64, 569900, 2, 'iPhone 8 Plus...');
insert into cellphone(cellphone_id,cellphone_model,cellphone_os,cellphone_cpu,cellphone_storage,
cellphone_price,brand_id,cellphone_description) 
values(seq_cellphone.nextval, '小米8', 'Android', '高通', 64, 269900, 4, '小米8...');
insert into cellphone(cellphone_id,cellphone_model,cellphone_os,cellphone_cpu,cellphone_storage,
cellphone_price,brand_id,cellphone_description) 
values(seq_cellphone.nextval, 'HUAWEI P20 Pro', 'Android', '海思', 64, 498800, 5, 'HUAWEI P20 Pro...');

create table username(
       USERNAME_ID number primary key,
       USERNAME_NAME varchar2(64) not null unique,
       USERNAME_PASSWORD varchar2(64) not null
);

create sequence seq_username;

alter table username add USERNAME_DATE date;

create table SHOPPINGCART(
       USERNAME_ID number not null references USERNAME(USERNAME_ID),
       CELLPHONE_ID number not null references CELLPHONE(CELLPHONE_ID),
       QUANTITY number not null
);






