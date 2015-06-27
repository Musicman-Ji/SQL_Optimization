create database SqlOpt;

use SqlOpt;

create table city
(
	province varchar(10),
	name varchar(100),
	cid int,
	primary key(cid)
);

create table address
(
	cid int,
	area varchar(100),
	address varchar(100),
	b_area varchar(100),
	lat varchar(100),
	lon varchar(100),
	foreign key(cid) references city(cid)
);

create table shop
(
	sid int, 
	name varchar(100), 
	alias varchar(100), 
	address varchar(100),
	phone varchar(100), 
	hours varchar(1000), 
	avg_price int, 
	stars varchar(100), 
	photos varchar(100), 
	description varchar(1000), 
	navigation varchar(100), 
	characteristics varchar(100), 
	product_rating varchar(100), 
	environment_rating varchar(100),
	service_rating varchar(100), 
	very_good_remarks int, 
	good_remarks int, 
	common_remarks int, 
	bad_remarks int, 
	very_bad_remarks int, 
	recommended_dishes varchar(1000), 
	is_chains int, 
	groupon varchar(1000), 
	card varchar(100),
	primary key(sid)
);

create table tag
(
	sid int,
	tag varchar(100)
);