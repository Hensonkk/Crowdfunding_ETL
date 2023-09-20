-- Crowdfunding Database Schema

-- Sully Shave and KeyShawn Henson


drop table if exists category;
drop table if exists subcategory;
drop table if exists contacts;
drop table if exists campaign;



create table category (
category_id varchar(30) not null,
category varchar(30) not null,
primary key (category_id)
);


create table subcategory (
subcategory_id varchar(30) not null,
subcategory varchar(30) not null,
primary key (subcategory_id)
);


create table contacts (
contact_id INT  NOT NULL,
first_name VARCHAR(255)   NOT NULL,
last_name VARCHAR(255)   NOT NULL,
email varchar(300)   NOT NULL,
primary key (contact_id)
);


create table campaign (
cf_id int not null,
contact_id int not null,
company_name varchar(500) not null,
description varchar(500) not null,
goal int not null,
pledged int not null,
outcome varchar(20) not null,
backers_count int not null,
country varchar(10) not null,
currency varchar(10) not null,
launch_date date not null,
end_date date not null,
category_id varchar(10) not null,
subcategory_id varchar(20) not null,
foreign key (contact_id) references contacts (contact_id),
foreign key (category_id) references category (category_id),
foreign key (subcategory_id) references subcategory (subcategory_id)
);

select * from category ;
select * from subcategory ;
select * from contacts ;
select * from campaign ;



