create table payments
(
     booking_id     int,
     customer_id    int,
     amount           decimal,
     paid                varchar(10),
     pay_time         varchar(50),
     invoice            varchar(50),
     cancelled         varchar(10)
);
create table bookings
(
     booking_id         int,
     arrival                varchar(10),
     checkout             varchar(10),
     room_number      int,
     customer_id         int,
     breakfast             int,
     nights                 int,
     comment             varchar(400),
     book_type            varchar(50),
     book_time            varchar(50)
);
create table rooms
(
     room_number             int,
     room_type                  varchar(50),
     priceper_night            decimal,
     max_persons              int,
     locked                        varchar(50)
);
create table cancellations
(
       booking_id                 int,
       arrival                        varchar(50),
       checkout                     varchar(50),
       room_number              int,
       customer_id                 int,
       breakfast                     int,
       nights                         int,
       book_time                   varchar(50),
       cancel_time                 varchar(50)
);
create table customers
(
        customer_id           int,
        first_name             varchar(50),
        last_name              varchar(50),
        address                 varchar(50),
        postal_code           varchar(50),
        city                       varchar(50),
        country                varchar(50),
        Email                  varchar(50),
        phone                 varchar(50),
        reg_time              varchar(50)
);
create table keygen
(
	roomnum int,
	bookingid int,
	custid int
);
insert into keygen values(1,1,1);
create table login
(
logid varchar(10),
logpwd varchar(10)
);
insert into login values('hotel','hotel');