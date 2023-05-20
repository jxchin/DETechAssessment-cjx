CREATE DATABASE sectiontwo;

CREATE TABLE member (
	id serial primary key,
	membership_id varchar(255),
	member_name varchar(255),
	member_email varchar(255),
	member_dob date,
	member_contact varchar(8)
);

CREATE TABLE product (
	id serial primary key,
	product_name varchar(255),
	manufacturer_name varchar(255),
	product_cost numeric(18,2),
	product_weight numeric (18,2)
);

CREATE TABLE sales (
	id serial primary key,
	receipt_id varchar(255),
	product_id varchar(255),

);

CREATE TABLE receipt (
	id serial primary key,
	membership_id varchar(255),
	total_price numeric(18,2),
	total_weight numeric(18,2)
);
