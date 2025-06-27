create table Orders(order_id int, cust_id int, prod_id int, quantity int, date date);
create table Sellers(seller_id int, company_name varchar(30),phone_number bigint, email varchar(30),address varchar(50));
create table Customers(cust_id int,fname varchar(15),lname varchar(15),phone_number bigint, email varchar(30), address varchar(30),city varchar(20));
create table Products(prod_id int, seller_id int, prod_name varchar(30), cost int);
create table warehouse(warehouse_no int,loc varchar(20));
create table product_loc(prod_id int, warehouse_no int, qty int);

alter table Customers add primary key(cust_id);

alter table Sellers add primary key(seller_id);

alter table Products add primary key(prod_id);
alter table Products add foreign key(seller_id) references Sellers(seller_id);

alter table warehouse add primary key(warehouse_no);

alter table product_loc add primary key(prod_id,warehouse_no);
alter table product_loc add foreign key(prod_id) references Products(prod_id);
alter table product_loc add foreign key(warehouse_no) references warehouse(warehouse_no);

alter table Orders add primary key(order_id);
alter table Orders add foreign key(prod_id) references Products(prod_id);
alter table Orders add foreign key(cust_id) references Customers(cust_id);

CREATE SEQUENCE orders_order_id_seq START 81;
ALTER TABLE Orders ALTER COLUMN order_id SET DEFAULT nextval('orders_order_id_seq');


--warehouse table, 5 warehouses: (warehouse_no, warehouse location)
insert into warehouse values(1,'Hyderabad');
insert into warehouse values(2,'Mumbai');
insert into warehouse values(3,'Delhi');
insert into warehouse values(4,'Kolkata');
insert into warehouse values(5,'Ahemdabad');

select * from warehouse;

--Customers table, 40 customers: (cust_id, fname, lname, phone_no, email, address, city)
insert into Customers values(1, 'Rahul', 'Sharma', 9876543210, 'rahul.sharma@example.com', '23 MG Road','Hyderabad');
insert into Customers values(2, 'Anjali', 'Verma', 8765432109, 'anjali.verma@example.com', '56 Nehru Street','Mumbai');
insert into Customers values(3, 'Vikram', 'Singh', 7654321098, 'vikram.singh@example.com', '89 Gandhi Path','Delhi');
insert into Customers values(4, 'Priya', 'Nair', 6543210987, 'priya.nair@example.com', '12 Marine Drive','Kolkata');
insert into Customers values(5, 'Arjun', 'Reddy', 5432109876, 'arjun.reddy@example.com', '45 Jubilee Hills','Ahemdabad');
insert into Customers values(6, 'Sneha', 'Iyer', 4321098765, 'sneha.iyer@example.com', '67 Anna Salai','Hyderabad');
insert into Customers values(7, 'Rohan', 'Gupta', 3210987654, 'rohan.gupta@example.com', '90 Park Lane','Mumbai');
insert into Customers values(8, 'Kavya', 'Menon', 2109876543, 'kavya.menon@example.com', '34 Residency Road','Delhi');
insert into Customers values(9, 'Amit', 'Chopra', 1098765432, 'amit.chopra@example.com', '78 Brigade Road','Kolkata');
insert into Customers values(10, 'Neha', 'Patil', 9988776655, 'neha.patil@example.com', '56 MG Road','Ahemdabad');
insert into Customers values(11, 'Karan', 'Jain', 8877665544, 'karan.jain@example.com', '23 Connaught Place','Hyderabad');
insert into Customers values(12, 'Pooja', 'Kulkarni', 7766554433, 'pooja.kulkarni@example.com', '89 JM Road','Mumbai');
insert into Customers values(13, 'Manish', 'Joshi', 6655443322, 'manish.joshi@example.com', '12 Koregaon Park','Delhi');
insert into Customers values(14, 'Divya', 'Chowdhury', 5544332211, 'divya.chowdhury@example.com', '34 Salt Lake','Kolkata');
insert into Customers values(15, 'Siddharth', 'Mishra', 4433221100, 'siddharth.mishra@example.com', '45 Sector 5','Ahemdabad');
insert into Customers values(16, 'Aishwarya', 'Das', 3322110099, 'aishwarya.das@example.com', '67 Gariahat Road','Hyderabad');
insert into Customers values(17, 'Rajesh', 'Kumar', 2211009988, 'rajesh.kumar@example.com', '78 Ballygunge Place','Mumbai');
insert into Customers values(18, 'Meera', 'Rao', 1100998877, 'meera.rao@example.com', '90 Jayanagar','Delhi','Ahemdabad');
insert into Customers values(19, 'Suresh', 'Desai', 9988776655, 'suresh.desai@example.com', '12 Bannerghatta Road','Kolkata');
insert into Customers values(20, 'Anita', 'Chatterjee', 8877665544, 'anita.chatterjee@example.com', '34 Howrah Road');
insert into Customers values(21, 'Akash', 'Malhotra', 9812345678, 'akash.malhotra@example.com', '23 Civil Lines','Hyderabad');
insert into Customers values(22, 'Shruti', 'Aggarwal', 9876543211, 'shruti.aggarwal@example.com', '56 Rajendra Nagar','Mumbai');
insert into Customers values(23, 'Ravi', 'Saxena', 8765432101, 'ravi.saxena@example.com', '78 Karol Bagh','Delhi');
insert into Customers values(24, 'Nisha', 'Kapoor', 7654321097, 'nisha.kapoor@example.com', '34 Lajpat Nagar','Kolkata');
insert into Customers values(25, 'Abhishek', 'Kohli', 6543210988, 'abhishek.kohli@example.com', '45 Shanti Niketan','Ahemdabad');
insert into Customers values(26, 'Preeti', 'Srivastava', 5432109877, 'preeti.srivastava@example.com', '12 Rajarhat','Hyderabad');
insert into Customers values(27, 'Vivek', 'Pandey', 4321098764, 'vivek.pandey@example.com', '78 Andheri East','Mumbai');
insert into Customers values(28, 'Sandhya', 'Banerjee', 3210987653, 'sandhya.banerjee@example.com', '67 Salt Lake City','Delhi');
insert into Customers values(29, 'Aakash', 'Bhatia', 2109876542, 'aakash.bhatia@example.com', '89 Fort','Kolkata');
insert into Customers values(30, 'Rekha', 'Bhattacharya', 1098765431, 'rekha.bhattacharya@example.com', '23 Garia','Ahemdabad');
insert into Customers values(31, 'Nitin', 'Mehta', 9988776656, 'nitin.mehta@example.com', '34 Dadar West','Hyderabad');
insert into Customers values(32, 'Pallavi', 'Chandra', 8877665543, 'pallavi.chandra@example.com', '45 Thane','Mumbai');
insert into Customers values(33, 'Harish', 'Rastogi', 7766554432, 'harish.rastogi@example.com', '67 Banjara Hills','Delhi');
insert into Customers values(34, 'Deepa', 'Kashyap', 6655443321, 'deepa.kashyap@example.com', '78 Malleswaram','Kolkata');
insert into Customers values(35, 'Anand', 'Shetty', 5544332210, 'anand.shetty@example.com', '90 Koramangala','Ahemdabad');
insert into Customers values(36, 'Vidya', 'Pillai', 4433221109, 'vidya.pillai@example.com', '12 Marathahalli','Hyderabad');
insert into Customers values(37, 'Kunal', 'Patel', 3322110098, 'kunal.patel@example.com', '34 Satellite Road','Mumbai');
insert into Customers values(38, 'Lakshmi', 'Krishnan', 2211009987, 'lakshmi.krishnan@example.com', '45 Adyar','Delhi');
insert into Customers values(39, 'Ajay', 'Naidu', 1100998876, 'ajay.naidu@example.com', '78 Besant Nagar','Kolkata');
insert into Customers values(40, 'Sonal', 'Deshmukh', 9988776657, 'sonal.deshmukh@example.com', '90 Viman Nagar','Ahemdabad');

select * from Customers;

--Sellers table, 10 sellers: (seller_id, company_name, phone number, email_id, address)
insert into Sellers values(1, 'Skyline Enterprises', 9812345678, 'contact@skyline.in', 'Tower 5, Hinjewadi IT Park, Pune');
insert into Sellers values(2, 'Emerald Technologies', 9876543211, 'support@emeraldtech.in', 'Electronic City Phase 1, Bengaluru');
insert into Sellers values(3, 'Sunrise Industries', 8765432101, 'info@sunriseind.in', 'Nariman Point, Mumbai');
insert into Sellers values(4, 'Silverline Solutions', 7654321097, 'sales@silverline.in', 'Guindy Industrial Estate, Chennai');
insert into Sellers values(5, 'Golden Arch Ventures', 6543210988, 'enquiries@goldenarch.in', 'Hitech City, Madhapur, Hyderabad');
insert into Sellers values(6, 'Riverstone Fabrics', 5432109877, 'contact@riverstone.in', 'Ring Road, Textile Market, Surat');
insert into Sellers values(7, 'Pinnacle Electrics', 4321098764, 'support@pinnacle.in', 'Sector 62, Noida');
insert into Sellers values(8, 'Brightwave Foods', 3210987653, 'care@brightwave.in', 'MG Road, New Palasia, Indore');
insert into Sellers values(9, 'Greenfield Agro', 2109876542, 'info@greenfieldagro.in', 'Wardha Road, MIDC Industrial Area, Nagpur');
insert into Sellers values(10, 'Bluescope Builders', 1098765431, 'sales@bluescope.in', 'MI Road, C-Scheme, Jaipur');

select * from Sellers;

--Products table, 30 products: (prod_id, seller_id, prod_name, cost)
insert into Products values(1, 1, 'Adidas Shoes', 2500);
insert into Products values(2, 1, 'Fossil Watch', 8500);
insert into Products values(3, 1, 'FitPro Smartwatch', 7000);
insert into Products values(4, 2, 'Cello Bottle', 500);
insert into Products values(5, 2, 'Skybags Backpack', 1500);
insert into Products values(6, 2, 'Classmate Notebook', 300);
insert into Products values(7, 3, 'Parker Pen', 120);
insert into Products values(8, 3, 'Nike Shoes', 3000);
insert into Products values(9, 3, 'Garmin Smartwatch', 12000);
insert into Products values(10, 4, 'Milton ThermoBottle', 800);
insert into Products values(11, 4, 'Woodland Shoes', 2800);
insert into Products values(12, 4, 'Titan Watch', 4000);
insert into Products values(13, 5, 'Noise Smartwatch', 5500);
insert into Products values(14, 5, 'American Tourister Bag', 1800);
insert into Products values(15, 5, 'Camlin Notebook', 400);
insert into Products values(16, 6, 'Reebok Shoes', 2400);
insert into Products values(17, 6, 'Tupperware Bottle', 600);
insert into Products values(18, 6, 'Lamy Pen', 900);
insert into Products values(19, 7, 'Casio Watch', 3600);
insert into Products values(20, 7, 'Samsung Galaxy Watch', 15000);
insert into Products values(21, 7, 'Wildcraft Backpack', 2200);
insert into Products values(22, 8, 'Mead Notebook', 250);
insert into Products values(23, 8, 'Puma Shoes', 2700);
insert into Products values(24, 8, 'Klean Kanteen Bottle', 1200);
insert into Products values(25, 9, 'Pierre Cardin Pen', 300);
insert into Products values(26, 9, 'Fastrack Watch', 2500);
insert into Products values(27, 9, 'Amazfit Smartwatch', 6500);
insert into Products values(28, 10, 'VIP Bag', 2000);
insert into Products values(29, 10, 'Contigo Bottle', 900);
insert into Products values(30, 10, 'Asics Running Shoes', 4000);

select * from Products;

--product_loc table, each product present in every warehouse(prod_no, warehouse_no, qty)
INSERT INTO product_loc VALUES (1, 1, 5);
INSERT INTO product_loc VALUES (1, 2, 11);
INSERT INTO product_loc VALUES (1, 3, 15);
INSERT INTO product_loc VALUES (1, 4, 7);
INSERT INTO product_loc VALUES (1, 5, 29);
INSERT INTO product_loc VALUES (2, 1, 11);
INSERT INTO product_loc VALUES (2, 2, 6);
INSERT INTO product_loc VALUES (2, 3, 7);
INSERT INTO product_loc VALUES (2, 4, 18);
INSERT INTO product_loc VALUES (2, 5, 8);
INSERT INTO product_loc VALUES (3, 1, 24);
INSERT INTO product_loc VALUES (3, 2, 15);
INSERT INTO product_loc VALUES (3, 3, 16);
INSERT INTO product_loc VALUES (3, 4, 10);
INSERT INTO product_loc VALUES (3, 5, 5);
INSERT INTO product_loc VALUES (4, 1, 20);
INSERT INTO product_loc VALUES (4, 2, 27);
INSERT INTO product_loc VALUES (4, 3, 17);
INSERT INTO product_loc VALUES (4, 4, 30);
INSERT INTO product_loc VALUES (4, 5, 13);
INSERT INTO product_loc VALUES (5, 1, 19);
INSERT INTO product_loc VALUES (5, 2, 23);
INSERT INTO product_loc VALUES (5, 3, 19);
INSERT INTO product_loc VALUES (5, 4, 6);
INSERT INTO product_loc VALUES (5, 5, 5);
INSERT INTO product_loc VALUES (6, 1, 6);
INSERT INTO product_loc VALUES (6, 2, 11);
INSERT INTO product_loc VALUES (6, 3, 27);
INSERT INTO product_loc VALUES (6, 4, 10);
INSERT INTO product_loc VALUES (6, 5, 23);
INSERT INTO product_loc VALUES (7, 1, 28);
INSERT INTO product_loc VALUES (7, 2, 20);
INSERT INTO product_loc VALUES (7, 3, 20);
INSERT INTO product_loc VALUES (7, 4, 7);
INSERT INTO product_loc VALUES (7, 5, 14);
INSERT INTO product_loc VALUES (8, 1, 30);
INSERT INTO product_loc VALUES (8, 2, 23);
INSERT INTO product_loc VALUES (8, 3, 11);
INSERT INTO product_loc VALUES (8, 4, 28);
INSERT INTO product_loc VALUES (8, 5, 9);
INSERT INTO product_loc VALUES (9, 1, 23);
INSERT INTO product_loc VALUES (9, 2, 23);
INSERT INTO product_loc VALUES (9, 3, 26);
INSERT INTO product_loc VALUES (9, 4, 16);
INSERT INTO product_loc VALUES (9, 5, 25);
INSERT INTO product_loc VALUES (10, 1, 20);
INSERT INTO product_loc VALUES (10, 2, 29);
INSERT INTO product_loc VALUES (10, 3, 29);
INSERT INTO product_loc VALUES (10, 4, 17);
INSERT INTO product_loc VALUES (10, 5, 7);
INSERT INTO product_loc VALUES (11, 1, 18);
INSERT INTO product_loc VALUES (11, 2, 7);
INSERT INTO product_loc VALUES (11, 3, 5);
INSERT INTO product_loc VALUES (11, 4, 16);
INSERT INTO product_loc VALUES (11, 5, 26);
INSERT INTO product_loc VALUES (12, 1, 16);
INSERT INTO product_loc VALUES (12, 2, 8);
INSERT INTO product_loc VALUES (12, 3, 13);
INSERT INTO product_loc VALUES (12, 4, 13);
INSERT INTO product_loc VALUES (12, 5, 23);
INSERT INTO product_loc VALUES (13, 1, 18);
INSERT INTO product_loc VALUES (13, 2, 11);
INSERT INTO product_loc VALUES (13, 3, 17);
INSERT INTO product_loc VALUES (13, 4, 6);
INSERT INTO product_loc VALUES (13, 5, 15);
INSERT INTO product_loc VALUES (14, 1, 11);
INSERT INTO product_loc VALUES (14, 2, 15);
INSERT INTO product_loc VALUES (14, 3, 7);
INSERT INTO product_loc VALUES (14, 4, 23);
INSERT INTO product_loc VALUES (14, 5, 17);
INSERT INTO product_loc VALUES (15, 1, 8);
INSERT INTO product_loc VALUES (15, 2, 17);
INSERT INTO product_loc VALUES (15, 3, 11);
INSERT INTO product_loc VALUES (15, 4, 12);
INSERT INTO product_loc VALUES (15, 5, 7);
INSERT INTO product_loc VALUES (16, 1, 26);
INSERT INTO product_loc VALUES (16, 2, 30);
INSERT INTO product_loc VALUES (16, 3, 21);
INSERT INTO product_loc VALUES (16, 4, 17);
INSERT INTO product_loc VALUES (16, 5, 30);
INSERT INTO product_loc VALUES (17, 1, 25);
INSERT INTO product_loc VALUES (17, 2, 17);
INSERT INTO product_loc VALUES (17, 3, 23);
INSERT INTO product_loc VALUES (17, 4, 22);
INSERT INTO product_loc VALUES (17, 5, 9);
INSERT INTO product_loc VALUES (18, 1, 18);
INSERT INTO product_loc VALUES (18, 2, 11);
INSERT INTO product_loc VALUES (18, 3, 10);
INSERT INTO product_loc VALUES (18, 4, 11);
INSERT INTO product_loc VALUES (18, 5, 15);
INSERT INTO product_loc VALUES (19, 1, 22);
INSERT INTO product_loc VALUES (19, 2, 18);
INSERT INTO product_loc VALUES (19, 3, 22);
INSERT INTO product_loc VALUES (19, 4, 24);
INSERT INTO product_loc VALUES (19, 5, 19);
INSERT INTO product_loc VALUES (20, 1, 25);
INSERT INTO product_loc VALUES (20, 2, 5);
INSERT INTO product_loc VALUES (20, 3, 21);
INSERT INTO product_loc VALUES (20, 4, 9);
INSERT INTO product_loc VALUES (20, 5, 26);
INSERT INTO product_loc VALUES (21, 1, 20);
INSERT INTO product_loc VALUES (21, 2, 29);
INSERT INTO product_loc VALUES (21, 3, 15);
INSERT INTO product_loc VALUES (21, 4, 8);
INSERT INTO product_loc VALUES (21, 5, 26);
INSERT INTO product_loc VALUES (22, 1, 10);
INSERT INTO product_loc VALUES (22, 2, 14);
INSERT INTO product_loc VALUES (22, 3, 8);
INSERT INTO product_loc VALUES (22, 4, 6);
INSERT INTO product_loc VALUES (22, 5, 5);
INSERT INTO product_loc VALUES (23, 1, 24);
INSERT INTO product_loc VALUES (23, 2, 9);
INSERT INTO product_loc VALUES (23, 3, 6);
INSERT INTO product_loc VALUES (23, 4, 25);
INSERT INTO product_loc VALUES (23, 5, 14);
INSERT INTO product_loc VALUES (24, 1, 24);
INSERT INTO product_loc VALUES (24, 2, 5);
INSERT INTO product_loc VALUES (24, 3, 9);
INSERT INTO product_loc VALUES (24, 4, 15);
INSERT INTO product_loc VALUES (24, 5, 20);
INSERT INTO product_loc VALUES (25, 1, 29);
INSERT INTO product_loc VALUES (25, 2, 8);
INSERT INTO product_loc VALUES (25, 3, 19);
INSERT INTO product_loc VALUES (25, 4, 22);
INSERT INTO product_loc VALUES (25, 5, 20);
INSERT INTO product_loc VALUES (26, 1, 19);
INSERT INTO product_loc VALUES (26, 2, 9);
INSERT INTO product_loc VALUES (26, 3, 20);
INSERT INTO product_loc VALUES (26, 4, 25);
INSERT INTO product_loc VALUES (26, 5, 13);
INSERT INTO product_loc VALUES (27, 1, 5);
INSERT INTO product_loc VALUES (27, 2, 12);
INSERT INTO product_loc VALUES (27, 3, 17);
INSERT INTO product_loc VALUES (27, 4, 26);
INSERT INTO product_loc VALUES (27, 5, 7);
INSERT INTO product_loc VALUES (28, 1, 20);
INSERT INTO product_loc VALUES (28, 2, 15);
INSERT INTO product_loc VALUES (28, 3, 5);
INSERT INTO product_loc VALUES (28, 4, 13);
INSERT INTO product_loc VALUES (28, 5, 16);
INSERT INTO product_loc VALUES (29, 1, 27);
INSERT INTO product_loc VALUES (29, 2, 30);
INSERT INTO product_loc VALUES (29, 3, 7);
INSERT INTO product_loc VALUES (29, 4, 15);
INSERT INTO product_loc VALUES (29, 5, 26);
INSERT INTO product_loc VALUES (30, 1, 25);
INSERT INTO product_loc VALUES (30, 2, 25);
INSERT INTO product_loc VALUES (30, 3, 9);
INSERT INTO product_loc VALUES (30, 4, 11);
INSERT INTO product_loc VALUES (30, 5, 13);

select * from product_loc;


--Orders table 80 orders: (order id, cust_id, prod_id, qty, date)
INSERT INTO Orders VALUES (1, 15, 7, 2, '2023-01-15');
INSERT INTO Orders VALUES (2, 10, 25, 3, '2023-02-20');
INSERT INTO Orders VALUES (3, 35, 12, 1, '2023-03-12');
INSERT INTO Orders VALUES (4, 5, 30, 4, '2023-04-18');
INSERT INTO Orders VALUES (5, 22, 18, 2, '2023-05-10');
INSERT INTO Orders VALUES (6, 7, 1, 5, '2023-06-25');
INSERT INTO Orders VALUES (7, 30, 15, 1, '2023-07-05');
INSERT INTO Orders VALUES (8, 12, 22, 3, '2023-08-01');
INSERT INTO Orders VALUES (9, 25, 9, 4, '2023-09-19');
INSERT INTO Orders VALUES (10, 8, 17, 2, '2023-10-11');
INSERT INTO Orders VALUES (11, 18, 4, 3, '2023-11-20');
INSERT INTO Orders VALUES (12, 40, 26, 1, '2023-12-05');
INSERT INTO Orders VALUES (13, 4, 19, 5, '2024-01-15');
INSERT INTO Orders VALUES (14, 27, 3, 4, '2024-02-10');
INSERT INTO Orders VALUES (15, 9, 21, 2, '2024-03-07');
INSERT INTO Orders VALUES (16, 1, 5, 1, '2024-04-22');
INSERT INTO Orders VALUES (17, 14, 16, 2, '2024-05-12');
INSERT INTO Orders VALUES (18, 28, 6, 4, '2024-06-19');
INSERT INTO Orders VALUES (19, 31, 14, 3, '2024-07-14');
INSERT INTO Orders VALUES (20, 6, 11, 1, '2024-08-04');
INSERT INTO Orders VALUES (21, 39, 8, 5, '2024-09-10');
INSERT INTO Orders VALUES (22, 3, 23, 2, '2024-10-09');
INSERT INTO Orders VALUES (23, 11, 2, 3, '2024-11-03');
INSERT INTO Orders VALUES (24, 21, 27, 4, '2023-02-18');
INSERT INTO Orders VALUES (25, 34, 10, 1, '2023-03-15');
INSERT INTO Orders VALUES (26, 16, 28, 5, '2023-04-22');
INSERT INTO Orders VALUES (27, 13, 13, 2, '2023-05-30');
INSERT INTO Orders VALUES (28, 2, 24, 3, '2023-06-18');
INSERT INTO Orders VALUES (29, 23, 20, 4, '2023-07-21');
INSERT INTO Orders VALUES (30, 29, 29, 2, '2023-08-15');
INSERT INTO Orders VALUES (31, 19, 1, 1, '2023-09-11');
INSERT INTO Orders VALUES (32, 32, 7, 3, '2023-10-25');
INSERT INTO Orders VALUES (33, 17, 18, 4, '2023-11-03');
INSERT INTO Orders VALUES (34, 33, 12, 2, '2023-12-30');
INSERT INTO Orders VALUES (35, 20, 5, 1, '2024-01-08');
INSERT INTO Orders VALUES (36, 24, 15, 5, '2024-02-05');
INSERT INTO Orders VALUES (37, 26, 6, 2, '2024-03-16');
INSERT INTO Orders VALUES (38, 38, 19, 4, '2024-04-13');
INSERT INTO Orders VALUES (39, 36, 11, 3, '2024-05-27');
INSERT INTO Orders VALUES (40, 37, 21, 1, '2024-06-29');
INSERT INTO Orders VALUES (41, 30, 14, 2, '2024-07-23');
INSERT INTO Orders VALUES (42, 15, 23, 4, '2024-08-12');
INSERT INTO Orders VALUES (43, 9, 26, 5, '2024-09-17');
INSERT INTO Orders VALUES (44, 5, 30, 3, '2024-10-02');
INSERT INTO Orders VALUES (45, 7, 9, 1, '2024-11-06');
INSERT INTO Orders VALUES (46, 25, 4, 2, '2023-01-09');
INSERT INTO Orders VALUES (47, 12, 29, 4, '2023-02-27');
INSERT INTO Orders VALUES (48, 40, 8, 5, '2023-03-04');
INSERT INTO Orders VALUES (49, 31, 13, 1, '2023-04-16');
INSERT INTO Orders VALUES (50, 28, 16, 3, '2023-05-22');
INSERT INTO Orders VALUES (51, 18, 2, 2, '2023-06-13');
INSERT INTO Orders VALUES (52, 14, 22, 4, '2023-07-07');
INSERT INTO Orders VALUES (53, 27, 5, 3, '2023-08-30');
INSERT INTO Orders VALUES (54, 13, 1, 1, '2023-09-20');
INSERT INTO Orders VALUES (55, 6, 15, 5, '2023-10-29');
INSERT INTO Orders VALUES (56, 4, 28, 2, '2023-11-18');
INSERT INTO Orders VALUES (57, 23, 14, 3, '2023-12-08');
INSERT INTO Orders VALUES (58, 21, 7, 4, '2024-01-19');
INSERT INTO Orders VALUES (59, 35, 10, 1, '2024-02-25');
INSERT INTO Orders VALUES (60, 2, 11, 2, '2024-03-11');
INSERT INTO Orders VALUES (61, 22, 20, 3, '2024-04-28');
INSERT INTO Orders VALUES (62, 19, 19, 5, '2024-05-09');
INSERT INTO Orders VALUES (63, 16, 23, 4, '2024-06-03');
INSERT INTO Orders VALUES (64, 38, 30, 2, '2024-07-17');
INSERT INTO Orders VALUES (65, 11, 26, 1, '2024-08-21');
INSERT INTO Orders VALUES (66, 29, 24, 3, '2024-09-12');
INSERT INTO Orders VALUES (67, 32, 17, 5, '2024-10-08');
INSERT INTO Orders VALUES (68, 33, 6, 2, '2024-11-01');
INSERT INTO Orders VALUES (69, 34, 12, 4, '2023-03-28');
INSERT INTO Orders VALUES (70, 9, 25, 1, '2023-04-14');
INSERT INTO Orders VALUES (71, 26, 4, 3, '2023-05-21');
INSERT INTO Orders VALUES (72, 20, 9, 2, '2023-06-08');
INSERT INTO Orders VALUES (73, 36, 21, 4, '2023-07-10');
INSERT INTO Orders VALUES (74, 39, 11, 1, '2023-08-27');
INSERT INTO Orders VALUES (75, 3, 8, 5, '2023-09-19');
INSERT INTO Orders VALUES (76, 24, 14, 3, '2023-10-25');
INSERT INTO Orders VALUES (77, 8, 29, 4, '2023-11-13');
INSERT INTO Orders VALUES (78, 17, 5, 2, '2023-12-06');
INSERT INTO Orders VALUES (79, 37, 2, 1, '2024-01-26');
INSERT INTO Orders VALUES (80, 10, 3, 3, '2024-02-18');

select * from Orders;




--Citywise sales for a given date
SELECT 
    c.city,
    SUM(o.quantity * p.cost) AS total_sales
FROM 
    Orders o
JOIN 
    Customers c ON o.cust_id = c.cust_id
JOIN 
    Products p ON o.prod_id = p.prod_id
WHERE 
    o.date BETWEEN '2023-01-01' AND '2024-05-31'  
GROUP BY 
    c.city;

Select * from orders order by date;


--Sellerwise sales in a given date range
SELECT 
    s.seller_id,
    s.company_name AS seller_name,
    SUM(o.quantity * p.cost) AS total_sales
FROM 
    Orders o
JOIN 
    Products p ON o.prod_id = p.prod_id
JOIN 
    Sellers s ON p.seller_id = s.seller_id
WHERE 
    o.date BETWEEN '2023-01-01' AND '2024-05-31'  
GROUP BY 
    s.seller_id, s.company_name
ORDER BY 
    total_sales DESC;  


--Product wise sales for a given seller in a given date range
SELECT 
    s.company_name AS seller_name,
    p.prod_name AS product_name,
    SUM(o.quantity) AS total_quantity_sold,
    SUM(o.quantity * p.cost) AS total_sales,
    MIN(o.date) AS first_sale_date,
    MAX(o.date) AS last_sale_date
FROM 
    Orders o
JOIN 
    Products p ON o.prod_id = p.prod_id
JOIN 
    Sellers s ON p.seller_id = s.seller_id
WHERE 
    s.seller_id = 1  -- Replace with the seller's ID
    AND o.date BETWEEN '2023-01-01' AND '2024-05-31' 
GROUP BY 
    s.company_name, p.prod_name
ORDER BY 
    p.prod_name;


--sale of a given product citywise for warehouse restocking optimisation
SELECT 
    city, prod_name,
    total_quantity_sold
FROM 
    (
        SELECT 
            c.city,
			p.prod_name,
            SUM(o.quantity) AS total_quantity_sold
        FROM 
            Orders o
        FULL OUTER JOIN 
            Customers c ON o.cust_id = c.cust_id
        JOIN 
            Products p ON o.prod_id = p.prod_id
        WHERE 
            p.prod_id = 15  
            AND o.date BETWEEN '2023-01-01' AND '2024-05-31' 
        GROUP BY 
            c.city,
			p.prod_name
    ) AS city_sales
ORDER BY 
    total_quantity_sold DESC
LIMIT 5;




--Warehouse number as input and returns all the products with qty as output
CREATE OR REPLACE FUNCTION get_warehouse_product_qty(input_warehouse_no INT)
RETURNS TABLE(prod_id INT, prod_name VARCHAR, qty INT) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.prod_id, 
        p.prod_name, 
        pl.qty
    FROM 
        Products p
    JOIN 
        product_loc pl 
    ON 
        p.prod_id = pl.prod_id
    WHERE 
        pl.warehouse_no = input_warehouse_no;
END;
$$ LANGUAGE plpgsql;


SELECT * FROM get_warehouse_product_qty(5);




--when order is placed this updates the product qty available in warehouses.
CREATE OR REPLACE FUNCTION process_order_and_update_stock()
RETURNS TRIGGER AS $$
DECLARE
    customer_city VARCHAR(20);
    selected_warehouse INT;
    available_qty INT;
BEGIN
    
    SELECT city INTO customer_city
    FROM Customers
    WHERE cust_id = NEW.cust_id;

    -- Check for a warehouse in the same city with sufficient quantity
    SELECT pl.warehouse_no, pl.qty INTO selected_warehouse, available_qty
    FROM warehouse w
    JOIN product_loc pl ON w.warehouse_no = pl.warehouse_no
    WHERE pl.prod_id = NEW.prod_id
      AND pl.qty >= NEW.quantity
      AND w.loc = customer_city
    LIMIT 1;

    -- If no warehouse in the same city has sufficient quantity, find the warehouse with the maximum quantity
    IF selected_warehouse IS NULL THEN
        SELECT pl.warehouse_no, pl.qty INTO selected_warehouse, available_qty
        FROM product_loc pl
        WHERE pl.prod_id = NEW.prod_id
        ORDER BY pl.qty DESC
        LIMIT 1;

        -- Print a notice if reducing from a different warehouse
        RAISE NOTICE 'Product quantity insufficient in the local warehouse. Using warehouse % with maximum quantity.', selected_warehouse;
    END IF;

    -- If no warehouse has enough quantity, raise an exception
    IF selected_warehouse IS NULL OR available_qty < NEW.quantity THEN
        RAISE NOTICE 'Insufficient quantity of product % in warehouses.', NEW.prod_id;
        RETURN NULL; -- Exit the trigger without further processing
    END IF;

    -- Deduct the ordered quantity from the selected warehouse
    UPDATE product_loc
    SET qty = qty - NEW.quantity
    WHERE prod_id = NEW.prod_id AND warehouse_no = selected_warehouse;

    -- Log the deduction
    RAISE NOTICE'Reduced % quantity of product % from warehouse %.', NEW.quantity, NEW.prod_id, selected_warehouse;

    RETURN NULL; 
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_order_insert
AFTER INSERT ON Orders
FOR EACH ROW
EXECUTE FUNCTION process_order_and_update_stock();



--triggers when the qty of a product available in a warehouse drops below 5
CREATE OR REPLACE FUNCTION check_qty_threshold()
RETURNS TRIGGER AS $$
BEGIN
    -- Check if the quantity has dropped below 5 after an update
    IF NEW.qty < 5 THEN
        RAISE NOTICE 'Quantity of product % in warehouse % has dropped below 5. Current qty: %', 
                     NEW.prod_id, NEW.warehouse_no, NEW.qty;
    END IF;

    RETURN NEW; 
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER qty_threshold_check
AFTER UPDATE ON product_loc
FOR EACH ROW
WHEN (NEW.qty < 5) 
EXECUTE FUNCTION check_qty_threshold();


insert into orders values(default,15,10,3,CURRENT_DATE);

select * from orders;

update product_loc set qty=7 where prod_id=10 and warehouse_no=5;






















