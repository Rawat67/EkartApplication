drop database if exists EkartApplication_Product;
create schema EkartApplication_Product;
use EkartApplication_Product;

create table product(
	prod_id integer NOT NULL AUTO_INCREMENT,
	name varchar(50),
	price integer,
	stock integer,
	description varchar(500),
	image varchar(50),
	seller_id integer,
	category varchar(50),
	subcategory varchar(50),
	rating float,
    	primary key (prod_id)
);

insert into product values(1,'iPhone 12',80000,50,'iPhone 12. Beautifully bright 6.1 inch Super Retina XDR display. Ceramic Shield. Incredible low light photography with night mode. Cinema grade dolby vision video recording. Powerful bionic A14 chip.','../example/iphone.png',3,'Mobiles','Apple',4.6);

insert into product values(2,'Nike Mercurial Vapor 13',5000,200,'Lace up Leather football shoes with round toe style.','../example/nikemer.png',2,'Shoes','Football Shoes',4.2);

insert into product values(3,'HP Pavilion x360',50000,30,'Inspire the world with a reliable laaptop that bends over backwards for you. Be free to create, share and connect in more ways with the new Pavilion x360 PC.','../example/hpPav360.png',1,'Laptops','Windows Laptop',4.3);

create table subscribedproduct(
	buyer_id integer,
	prod_id integer,
	quantity integer,
	primary key(buyer_id, prod_id)
);

insert into subscribedproduct values(1,2,5);
insert into subscribedproduct values(2,1,6);


select * from product;
select * from subscribedproduct;
