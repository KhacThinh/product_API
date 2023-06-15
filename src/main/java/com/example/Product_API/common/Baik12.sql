create database baik12


create table address(
	province varchar(40),
	aid int primary key
)

create table customers(
	cusname varchar(50),
	birthday date,
	phone varchar(30),
	aid int,
	cusid int
	primary key (cusid),
	foreign key (aid) REFERENCES address(aid)
)


create table employees(
	emname varchar(50),
	birthday date,
	phone varchar(11),
	aid int,
	emid int,
	primary key (emid),
	foreign key (aid) REFERENCES address(aid)
)

create table orders(
	cusid int,
	emid int,
	odate datetime,
	oid int,
	primary key (oid),
	foreign key (cusid) references customers(cusid),
	foreign key (emid) references employees(emid)
)