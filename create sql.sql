Create table Customer
(
    Customer_Id   int Primary Key,
    Customer_name varchar(100),
    Delivery_id   int
);
Create table login
(
    Login_id     int Primary Key,
    Login_Method varchar(100),
    Customer_Id  int,
    Manager_Id   int
);
Create table Manager
(
    Manager_Id   int Primary Key,
    Manager_Name varchar(100),
    Phone_no     varchar(100),
    Company_name varchar(100)
);

Create table phone
(
    Login_Id             int Primary Key,
    Customer_name        varchar(100),
    Address              varchar(100),
    Phone_no             varchar(100),
    Order_specifications varchar(100)
);

Create table website
(
    Login_Id             int Primary Key,
    Customer_name        varchar(100),
    Address              varchar(100),
    Phone_no             varchar(100),
    Order_specifications varchar(100)
);

Create table Staff
(
    Staff_Id   int Primary Key,
    Manager_Id int
);

Create table Order_
(
    Order_Id   int Primary Key,
    Order_item varchar(100),
    Staff_id   int
);

Create table Kitchen_Staff
(
    Staff_id     int Primary Key,
    Staff_member varchar(100)
);

Create table Delivery_Boy
(
    Delivery_Id int Primary Key,
    Name        varchar(100),
    Staff_id    int,
    Order_id    int
);


ALTER TABLE customer
    ADD CONSTRAINT FK_Customer_Delivery_id FOREIGN KEY (Delivery_id)
        REFERENCES delivery_boy (Delivery_Id);

ALTER TABLE login
    ADD CONSTRAINT FK_login_Customer_id FOREIGN KEY (Customer_Id)
        REFERENCES customer (Customer_Id);
ALTER TABLE login
    ADD CONSTRAINT FK_login_Manager_id FOREIGN KEY (Manager_Id)
        REFERENCES manager (Manager_Id);


ALTER TABLE phone
    ADD CONSTRAINT FK_phone_Login_id FOREIGN KEY (Login_Id)
        REFERENCES login (Login_Id);


ALTER TABLE website
    ADD CONSTRAINT FK_website_login_id FOREIGN KEY (login_Id)
        REFERENCES login (Login_Id);

ALTER TABLE Staff
    ADD CONSTRAINT FK_Staff_Manager_Id FOREIGN KEY (Manager_Id)
        REFERENCES Manager (Manager_Id);

ALTER TABLE order_
    ADD CONSTRAINT FK_order_Staff_Id FOREIGN KEY (Staff_id)
        REFERENCES Staff (Staff_Id);


ALTER TABLE kitchen_Staff
    ADD CONSTRAINT FK_kitchen_Staff_Staff_id FOREIGN KEY (Staff_id)
        REFERENCES Staff (Staff_Id);


ALTER TABLE delivery_boy
    ADD CONSTRAINT FK_delivery_boy_Staff_id FOREIGN KEY (Staff_id)
        REFERENCES Staff (Staff_Id);

ALTER TABLE delivery_boy
    ADD CONSTRAINT FK_delivery_boy_order_id FOREIGN KEY (Order_id)
        REFERENCES Order_ (Order_Id);


        Insert into Manager
values (1, 'Rok Retar', '123-456-789', 'Ljubljana');
Insert into Manager
values (2, 'Matej Retar', '123-456-789', 'Litija');
Insert into Manager
values (3, 'Matic Retar', '123-456-789', 'Zagorje');
Insert into Manager
values (4, 'Primož Retar', '123-456-789', 'Trbovlje');

insert into staff
values (11, 1);
insert into staff
values (12, 2);
insert into staff
values (13, 3);

insert into order_
values (123, 'Salami', 12);
insert into order_
values (456, 'Mexican', 11);
insert into order_
values (678, 'Napoli', 13);
insert into order_
values (789, 'Margarita', 11);


insert into kitchen_staff
values (11, 'Mitja Juvan');
insert into kitchen_staff
values (12, 'Aljaž Juvan');
insert into kitchen_staff
values (13, 'Franci Juvan');

insert into delivery_boy
values (21, 'Denis Bregar', 11, 456);
insert into delivery_boy
values (22, 'Katja Bregar', 13, 678);
insert into delivery_boy
values (23, 'Kati Bregar', 13, 789);
insert into delivery_boy
values (24, 'Marija Bregar', 12, 123);


insert into Customer
values (31, 'Božo Juvančič', 23);
insert into Customer
values (32, 'Andreja Juvančič', 22);
insert into Customer
values (33, 'Uroš Juvančič', 21);
insert into Customer
values (34, 'Maja Juvančič', 24);


insert into login
values (41, 'UserName & Password', 33, 1);
insert into login
values (42, 'Email & Password', 32, 2);
insert into login
values (43, 'Email & Password', 34, 3);
insert into login
values (44, 'Username & Password', 31, 4);


insert into phone
values (42, 'Božo Juvančič', 'Zgornji Hotič 23b', '123-456-789', 'Salami');
insert into phone
values (41, 'Andreja Juvančič', 'Zgornji Hotič 23b', '123-456-789', 'Mexican');
insert into phone
values (43, 'Uroš Juvančič', 'Zgornji Hotič 23b', '123-456-789', 'Napoli');
insert into phone
values (44, 'Maja Juvančič', 'Zgornji Hotič 23b', '123-456-789', 'Margarita');

insert into website
values (42, 'Božo Juvančič', 'Zgornji Hotič 23b', '123-456-789', 'Salami');
insert into website
values (41, 'Andreja Juvančič', 'Zgornji Hotič 23b', '123-456-789', 'Mexican');
insert into website
values (43, 'Uroš Juvančič', 'Zgornji Hotič 23b', '123-456-789', 'Napoli');
insert into website
values (44, 'Maja Juvančič', 'Zgornji Hotič 23b', '123-456-789', 'Margarita');