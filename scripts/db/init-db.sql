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







