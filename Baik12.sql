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

create table status(
	sname varchar(20),
	sid int,
	primary key (sid)
) 

create table category(
	caname varchar(30),
	cid int,
	primary key (cid)
)

create table product(
	pname varchar(30),
	price decimal(20,2),
	cid int,
	sid int,
	id int,
	primary key (id),
	foreign key (cid) references category(cid),
	foreign key (sid) references status(sid)
)

create table orderdetails(
	oid int,
	pid int,
	quantity int,
	odid int,
	primary key (odid),
	foreign key (pid) references product(id),
	foreign key (oid) references orders(oid)
)


INSERT INTO address(aid,province)
VALUES  (34, 'Hai Duong'),
		(15, 'Hai Phong'),
		(14, 'Quang Ninh'),
		(30, 'Ha Noi'),
		(17, 'Thai Binh'),
		(89, 'Hung Yen'),
		(99, 'Bac Ninh'),	
		(98, 'Bac Giang')

-- Chèn dữ liệu vào bảng customers
-- Chèn dữ liệu vào bảng customers
INSERT INTO customers (cusname, birthday, phone, aid, cusid)
VALUES ('Nguyễn Văn A', '2000-01-01', '0123456789', 34, 1),
       ('Trần Thị B', '1995-05-15', '0123456780', 15, 2),
       ('Lê Văn C', '1988-10-20', '0123456781', 14, 3),
       ('Phạm Thị D', '1992-06-30', '0123456782', 30, 4),
       ('Hoàng Văn E', '1999-09-12', '0123456783', 17, 5),
       ('Nguyễn Thị F', '1997-03-25', '0123456784', 89, 6),
       ('Trần Văn G', '1985-12-07', '0123456785', 99, 7),
       ('Lê Thị H', '1990-08-18', '0123456786', 98, 8),
       ('Phạm Văn I', '1994-11-22', '0123456787', 34, 9),
       ('Hoàng Thị K', '1998-02-14', '0123456788', 15, 10)


-- Chèn dữ liệu vào bảng employees
INSERT INTO employees (emname, birthday, phone, aid, emid)
VALUES ('Nhân viên A', '1990-05-10', '0123456789', 34, 1),
       ('Nhân viên B', '1988-11-20', '0123456780', 15, 2),
       ('Nhân viên C', '1995-02-15', '0123456781', 14, 3),
       ('Nhân viên D', '1993-07-25', '0123456782', 30, 4),
       ('Nhân viên E', '1997-09-08', '0123456783', 17, 5),
       ('Nhân viên F', '1994-12-03', '0123456784', 89, 6),
       ('Nhân viên G', '1992-03-18', '0123456785', 99, 7),
       ('Nhân viên H', '1986-08-12', '0123456786', 98, 8),
       ('Nhân viên I', '1991-01-22', '0123456787', 34, 9),
       ('Nhân viên K', '1998-06-14', '0123456788', 15, 10)

-- Chèn dữ liệu vào bảng orders
-- Chèn dữ liệu vào bảng orders với cusid và emid không theo thứ tự và các ngày giờ không giống nhau
INSERT INTO orders (cusid, emid, odate, oid)
VALUES (1, 2, '2023-06-15 10:00:00', 1),
       (3, 1, '2023-06-15 11:30:00', 2),
       (2, 4, '2023-06-15 13:45:00', 3),
       (5, 3, '2023-06-15 15:20:00', 4),
       (4, 6, '2023-06-15 16:50:00', 5),
       (6, 5, '2023-06-15 18:15:00', 6),
       (7, 8, '2023-06-15 20:30:00', 7),
       (8, 7, '2023-06-15 22:10:00', 8),
       (9, 10, '2023-06-15 09:15:00', 9),
       (10, 9, '2023-06-15 12:30:00', 10);


INSERT INTO status (sname, sid)
VALUES ('Đang xử lý', 1),
       ('Đã giao hàng', 2),
       ('Đã hủy', 3);

-- Chèn dữ liệu vào bảng category
INSERT INTO category (caname, cid)
VALUES ('Điện thoại di động', 1),
       ('Máy tính', 2),
       ('Thiết bị gia dụng', 3);


-- Chèn dữ liệu vào bảng product
INSERT INTO product (pname, price, cid, sid, id)
VALUES ('iPhone 12', 15000000, 1, 1, 1),
       ('Samsung Galaxy S21', 12000000, 1, 1, 2),
       ('Xiaomi Redmi Note 10', 5000000, 1, 1, 3),
       ('OPPO Reno5', 8000000, 1, 1, 4),
       ('Huawei P30 Lite', 6000000, 1, 1, 5),
       ('Dell Inspiron 15', 15000000, 2, 1, 6),
       ('HP Pavilion Gaming', 12000000, 2, 1, 7),
       ('MacBook Pro', 25000000, 2, 1, 8),
       ('LG 4K Ultra HD Smart TV', 10000000, 3, 1, 9),
       ('Sony PlayStation 5', 15000000, 3, 1, 10),
       ('Bosch Washing Machine', 8000000, 3, 1, 11),
       ('Samsung Refrigerator', 12000000, 3, 1, 12),
       ('Logitech Wireless Mouse', 500000, 2, 1, 13),
       ('JBL Bluetooth Speaker', 2000000, 3, 1, 14),
       ('Apple AirPods Pro', 3000000, 1, 1, 15);

-- Chèn dữ liệu vào bảng orderdetails
INSERT INTO orderdetails (odid, oid, pid, quantity)
VALUES (1, 1, 1, 2),
       (2, 2, 3, 1),
       (3, 3, 2, 3),
       (4, 4, 5, 2),
       (5, 5, 4, 1),
       (6, 6, 6, 1),
       (7, 7, 8, 3),
       (8, 8, 7, 2),
       (9, 9, 10, 1),
       (10, 10, 9, 2);



	   select * from product