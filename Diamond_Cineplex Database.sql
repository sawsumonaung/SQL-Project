-- Create Diamond_Cineplex Database
Create Database Diamond_Cineplex;

-- Create Table for Customer

Create Table Customer
(Customer_ID  	Varchar	(8)	  Not Null,
Customer_Name	  Varchar	(50)	Not Null,
Customer_PhNo	  Varchar	(14)	Not Null,
Customer_Email	Varchar	(60)	Not Null,
Primary Key (Customer_ID));

Desc customer;

-- Insert Into for Customer

Insert Into customer values
('CUS11',	'Austin',	  '09678425449',	'austin33@gmail.com'),
('CUS12',	'Mary May',	'09256789543',	'marymay@gmail.com'),
('CUS13',	'Su Myat',	'09128539632',	'sumyat1@gmail.com'),
('CUS14',	'Chloe',	  '09876245710',	'chloe7@gmail.com'),
('CUS15',	'Erica',	  '09553003185',	'erica.mm@gmail.com'),
('CUS16',	'Sam Smith','09777553042',	'samsmith99@gmail.com'),
('CUS17',	'Veronica',	'09505066721',	'veronica198@gmail.com'),
('CUS18',	'Nwe Nwe',	'09250150560',	'nwenwe1562@gmail.com'),
('CUS19',	'Steve',	  '094312003999',	'steve@gmail.com'),
('CUS20',	'Charlotte','09250068919',	'charlotte20@gmail.com');

Select * From customer;

-- Create Table for Theatre

Create Table Theatre
(Theatre_ID     	Varchar	(8)	  Not Null,
 Theatre_Name	    Varchar	(50)	Not Null,
 Seating_Capacity	Int		        Not Null,
 Primary Key (Theatre_ID));

Desc theatre;


-- Insert Into for Theatre

Insert Into theatre Values
('T1',	'Bean Bed',	40),
('T2',	'IMax',	    40),
('T3',	'Standard',	50),
('T4',	'Premium',	60);

Select * From theatre;


-- Create Table for Seat

Create Table Seat
(Seat_No 	    Varchar	(8)	  Not Null,
 Seat_Name	  Varchar	(50)	Not Null,
 Seat_Price	  Dec	    (8,2)	Not Null,
 Seat_Section	Varchar	(30)	Not Null,
 Primary Key (Seat_No));

Desc seat;


-- Insert Into for Seat

Insert Into seat Values
('T1A', 'Normal', '7000.00',  'Front' ),
('T1B', 'Deluxe', '10000.00', 'Middle'),
('T1C', 'Couple', '20000.00', 'Back'  ),
('T2A', 'Normal', '5000.00',  'Front' ),
('T2B', 'Deluxe', '8000.00',  'Middle'),
('T2C', 'Couple', '17000.00', 'Back'  ),
('T3A', 'Normal', '6000.00',  'Front' ),
('T3B', 'Deluxe', '9000.00',  'Middle'),
('T3C', 'Couple', '19000.00', 'Back'  ),
('T4A', 'Normal', '7000.00',  'Front' ),
('T4B', 'Deluxe', '10000.00', 'Middle'),
('T4C', 'Couple', '20000.00', 'Back'  );

Select * From seat;


-- Create Table for Schedule

Create Table Schedule
(Schedule_ID  	Varchar	(8)	  Not Null,
 Schedule_Time	Varchar	(50)	Not Null,
 Schedule_Type	Varchar	(30)	Not Null,
 Primary Key (Schedule_ID));

Desc schedule;


-- Insert Into for Schedule

Insert Into schedule values
('SC001',	'9:00am-11:00am',	'Morning'),
('SC002',	'11:00am-1:00pm',	'Noon'),
('SC003',	'1:00pm-3:00pm',	'Afternoon'),
('SC004',	'3:00pm-5:00pm',	'Evening');

Select * From schedule;



-- Create Table for Employee_Type

Create Table Employee_Type
(Employee_Type_Code 	  Varchar	(8)	  Not Null,
 Employee_Type_Position	Varchar	(50)	Not Null,
 Salary	                Dec	    (9,2)	Not Null,
 Working_Hour	          Varchar	(40)	Not Null,
 Primary Key (Employee_Type_Code));

Desc employee_type;

-- Insert Into for Employee_Type

Insert Into employee_type values
('ET001',	'Ticket Clerk',	'300000.00',	 '8:30am-6:30pm'),
('ET002',	'Accountant',	'500000.00',	   '8:30am-6:00pm'),
('ET003',	'Manager',	'1000000.00',	     '8:30am-6:30pm'),
('ET004',	'Cleansing Lady',	'200000.00', '8:30am-7:00pm');

Select * From employee_type;


-- Create Table for Employee

Create Table Employee
(Employee_ID 	      Varchar	(8)	  Not Null,
 Employee_Name	    Varchar	(50)	Not Null,
 Employee_DOB	      Date		      Not Null,
 Employee_PhNo	    Varchar	(14)	Not Null,
 Employee_Type_Code Varchar	(8) 	Not Null,
 Primary Key (Employee_ID),
 Foreign Key (Employee_Type_Code) references employee_type (Employee_Type_Code));

Desc employee;


-- Insert Into for Employee

Insert Into employee Values
('E0021',	'Khant Kyaw',	'2004.10.16',	'09227786310',	'ET001'),
('E0022',	'Sai Minn',	  '2003.09.12',	'09776368963',	'ET001'),
('E0023',	'Ye Htet',	  '2002.11.23',	'09760046682',	'ET001'),
('E0024',	'Eaint Pan',	'2002.10.18',	'0953790752',	  'ET001'),
('E0025',	'Nay Win',	  '2001.01.09',	'09621708654',	'ET001'),
('E0026',	'Nan Kyawt',	'2000.12.19',	'09134508646',  'ET002'),
('E0027',	'Kyaw Zin',	  '1994.02.12',	'09222278643',	'ET003'),
('E0028',	'Mya Mya',	  '1974.11.27',	'09986568530',	'ET004');

Select * From employee;



-- Create Table for Movie

Create Table Movie
(Movie_ID	  Varchar	(8)	   Not Null,
Movie_Name	Varchar	(100)	 Not Null,
Movie_Genre	Varchar	(50)	 Not Null,	
Language	  Varchar	(40)	 Not Null,
Theatre_ID  Varchar	(8)	  Not Null,  
Primary Key (Movie_ID),
Foreign Key (Theatre_ID) References theatre (Theatre_ID));

Desc movie;



-- Insert Into for Movie

Insert Into movie Values

('M20', 'Stranger Things', 'Sci-Fi',    'English', 'T4'),
('M21', 'Parasite',        'Sci-Fi',    'Japan',   'T2'),
('M22', 'Spiderman',       'Adventure', 'English', 'T3'),
('M23', '12th Fail',       'Drama',     'India',   'T3'),
('M24', 'Hidden Love',     'Romance',   'China',   'T1'),
('M25', 'IP Man',          'Action',    'China',   'T3'),
('M26', 'Under Paris',     'Adventure', 'English', 'T4');

Select * From movie;



-- Create Table for Booking

Create Table Booking
(Booking_ID 	  Varchar	(8)   Not Null,
 Booking_Date	  Date	  	    Not Null,
 Booking_Status	Varchar	(30)	Not Null,
 Customer_ID 	  Varchar	(8)	  Not Null,
 Employee_ID 	  Varchar	(8) 	Not Null,
 Primary Key (Booking_ID),
 Foreign Key (Customer_ID) References customer (Customer_ID), 
 Foreign Key (Employee_ID) References employee (Employee_ID));

Desc booking;


-- Insert Into for Booking
Insert Into booking values
('BK101', '2023-08-12', 'Confirmed', 'CUS12', 'E0021'),
('BK102', '2023-08-27', 'Cancelled', 'CUS19', 'E0024'),
('BK103', '2023-09-06', 'Pending', 'CUS16', 'E0023'),
('BK104', '2023-09-15', 'Confirmed', 'CUS12', 'E0022'),
('BK105', '2023-09-22', 'Confirmed', 'CUS20', 'E0025'),
('BK106', '2023-09-26', 'Confirmed', 'CUS19', 'E0024'),
('BK107', '2023-10-04', 'Pending', 'CUS11', 'E0022'),
('BK108', '2023-10-10', 'Cancelled', 'CUS15', 'E0023'),
('BK109', '2023-10-15', 'Confirmed', 'CUS18', 'E0021'),
('BK110', '2023-11-16', 'Confirmed', 'CUS17', 'E0025'),
('BK111', '2023-11-16', 'Confirmed', 'CUS12', 'E0022'),
('BK112', '2023-11-20', 'Confirmed', 'CUS15', 'E0025'),
('BK113', '2023-11-29', 'Confirmed', 'CUS14', 'E0024');
Select * From booking;



-- Create Table for Booking_Movie

Create Table Booking_Movie
(Booking_ID 	Varchar	(8)	 Not Null,
 Movie_ID	    Varchar	(8)	 Not Null,
Primary Key (Booking_ID,Movie_ID),
Foreign Key (Booking_ID) References booking (Booking_ID),
Foreign Key (Movie_ID)   References movie   (Movie_ID));

Desc booking_movie;




-- Insert Into for Booking_Movie
Insert Into booking_movie values
('BK101', 'M20'),
('BK101', 'M26'),
('BK101', 'M25'),
('BK102', 'M22'),
('BK103', 'M21'),
('BK103', 'M23'),
('BK104', 'M25'),
('BK105', 'M26'),
('BK105', 'M21'),
('BK106', 'M22'),
('BK106', 'M23'),
('BK107', 'M24'),
('BK107', 'M25'),
('BK107', 'M20'),
('BK108', 'M20'),
('BK108', 'M21'),
('BK109', 'M22'),
('BK110', 'M23'),
('BK110', 'M24'),
('BK110', 'M25'),
('BK111', 'M25'),
('BK112', 'M22'),
('BK113', 'M23');
Select * From booking_movie;


-- Create Table for Booking_Seat

Create Table Booking_Seat
(Booking_ID 	Varchar	(8)	 Not Null,
 Seat_No 	    Varchar	(8)	 Not Null,
 Seat_Qty     Int          Not Null,
Primary Key (Booking_ID,Seat_No),
Foreign Key (Booking_ID) References booking (Booking_ID),
Foreign Key (Seat_No)   References  seat   (Seat_No));

Desc booking_seat;



-- Insert Into for Booking_Seat
Insert Into booking_seat values
('BK101', 'T4A', 2),
('BK101', 'T4B', 2),
('BK101', 'T3C', 2),
('BK102', 'T3C', 3),
('BK103', 'T2A', 2),
('BK103', 'T3B', 1),
('BK104', 'T3C', 4),
('BK105', 'T4A', 1),
('BK105', 'T4B', 2),
('BK106', 'T3B', 2),
('BK106', 'T3C', 1),
('BK107', 'T1B', 1),
('BK107', 'T3A', 1),
('BK107', 'T4C', 1),
('BK108', 'T4C', 1),
('BK108', 'T2A', 3),
('BK109', 'T3B', 2),
('BK110', 'T3A', 1),
('BK110', 'T1C', 2),
('BK110', 'T3B', 1),
('BK111', 'T3C', 3),
('BK112', 'T3B', 2),
('BK113', 'T3A', 3);
Select * From booking_seat;



-- Create Table for Booking_Schedule

Create Table Booking_Schedule
(Booking_ID 	Varchar	(8)	 Not Null,
 Schedule_ID 	Varchar	 (8)	Not Null,
 Primary Key  (Booking_ID,Schedule_ID),
 Foreign Key (Booking_ID)    References booking (Booking_ID),
 Foreign Key (Schedule_ID) References schedule (Schedule_ID));

Desc booking_schedule;



-- Insert Into for Booking_Schedule
Insert Into booking_schedule values
('BK101', 'SC001'),
('BK101', 'SC004'),
('BK101', 'SC003'),
('BK102', 'SC003'),
('BK103', 'SC004'),
('BK103', 'SC001'),
('BK104', 'SC003'),
('BK105', 'SC001'),
('BK105', 'SC004'),
('BK106', 'SC003'),
('BK106', 'SC004'),
('BK107', 'SC002'),
('BK107', 'SC003'),
('BK107', 'SC001'),
('BK108', 'SC002'),
('BK108', 'SC001'),
('BK109', 'SC004'),
('BK110', 'SC001'),
('BK110', 'SC003'),
('BK110', 'SC002'),
('BK111', 'SC003'),
('BK112', 'SC003'),
('BK113', 'SC001');
Select * From booking_schedule;



-- 1.Select all the least watch movie from "Standard" theatre?


SELECT   m.Movie_ID, m.Movie_Name, COUNT(bm.Booking_ID) AS 'Number of Bookings'
From     booking b, booking_movie bm, movie m, theatre t
Where    b.Booking_ID=bm.Booking_ID
And      bm.Movie_ID=m.Movie_ID
And      m.Theatre_ID=t.Theatre_ID
And      t.Theatre_Name='Standard'
GROUP BY m.Movie_ID, m.Movie_Name
ORDER BY COUNT(bm.Booking_ID) ASC
LIMIT    1;




-- 2.Select the best watch Top 3 movie along with theatre.

Select    m.Movie_ID, m.Movie_Name as 'Top 3 movie', t.Theatre_Name, Count(bm.Movie_ID) as 'Watch Count'
From      booking b, booking_movie bm, movie m, theatre t
Where     b.Booking_ID=bm.Booking_ID
And       bm.Movie_ID=m.Movie_ID
And       m.Theatre_ID=t.Theatre_ID
Group By  m.Movie_Name, t.Theatre_Name
Order By  Count(bm.Movie_ID) Desc
Limit     3;



-- 3.Select the customer who booked more than 2 times.

SELECT   c.Customer_ID, c.Customer_Name, COUNT(b.Booking_ID) AS 'Total_Bookings'
FROM     Customer c, Booking b
Where    c.Customer_ID=b.Customer_ID
GROUP BY c.Customer_ID, c.Customer_Name
HAVING   COUNT(b.Booking_ID) > 2;



-- 4.Select the employee and he or her types that handles the most schedule

SELECT     e.Employee_ID,e.Employee_Name, COUNT(bs.Schedule_ID) AS 'Total_Schedules'
FROM       employee e, employee_type et, booking b, booking_schedule bs, schedule s
Where      et.Employee_Type_Code=e.Employee_Type_Code
And        e.Employee_ID=b.Employee_ID
And        b.Booking_ID=bs.Booking_ID
And        bs.Schedule_ID=s.Schedule_ID
GROUP BY   e.Employee_ID, e.Employee_Name
ORDER BY   COUNT(bs.Schedule_ID) DESC
LIMIT      1;




-- 5.Select the employee name and their types who sell the most expensive seat

Select    e.Employee_ID,e.Employee_Name, et.Employee_Type_Position, s.Seat_Price As 'Most Expensive Seat'
From      employee e, employee_type et, booking b, booking_seat bs, seat s
Where     e.Employee_Type_Code=et.Employee_Type_Code
And       e.Employee_ID=b.Employee_ID
And       b.Booking_ID=bs.Booking_ID
And       bs.Seat_No=s.Seat_No
And       s.Seat_Price=(Select max(Seat_Price) From seat);
 



-- 6.Select the revenue from the movie 'Parasite'.

Select    m.Movie_ID, m.Movie_Name, SUM(bs.Seat_Qty * s.seat_price) AS 'total_revenue'
From      booking b, booking_movie bm, movie m, booking_seat bs, seat s
Where     m.Movie_ID=bm.Movie_ID
And       bm.Booking_ID=b.Booking_ID
And       b.Booking_ID=bs.Booking_ID
And       bs.Seat_No=s.Seat_No
And       m.Movie_Name='Parasite'
And       s.Seat_No in ('T2A', 'T4B')
GROUP BY  m.movie_name;




-- 7.Select the least watch Theatre and it booking count?

Select  t.Theatre_ID,t.Theatre_Name as 'Least Watch Theatre', Count(b.Booking_ID) as 'Booking Count'
From    theatre t, movie m, booking_movie bm, booking b
Where   t.Theatre_ID=m.Theatre_ID
And     m.Movie_ID=bm.Movie_ID
And     bm.Booking_ID=b.Booking_ID
Group By t.Theatre_Name
Having   Count(b.Booking_ID) < 3
Order By Count(b.Booking_ID);




-- 8.Select the employee name and their types who sell the least expensive seat

Select    b.Booking_ID,e.Employee_ID,e.Employee_Name, et.Employee_Type_Position, 
          s.Seat_Name As 'Least Expensive Seat', s.Seat_Price
From      employee e, employee_type et, booking b, booking_seat bs, seat s
Where     e.Employee_Type_Code=et.Employee_Type_Code
And       e.Employee_ID=b.Employee_ID
And       b.Booking_ID=bs.Booking_ID
And       bs.Seat_No=s.Seat_No
And       s.Seat_Price=(Select min(Seat_Price) From seat);




-- 9. Select the employee and employee types who managed more than 2 bookings 
-- from 'IP Man' movie.


Select   e.Employee_ID, e.Employee_Name, et.Employee_Type_Position,
         COUNT(b.Booking_ID) AS 'BookingsForSpiderman'
From     employee_type et, employee e, booking b, booking_movie bm, movie m
Where    et.Employee_Type_Code=e.Employee_Type_Code
And      e.Employee_ID=b.Employee_ID
And      b.Booking_ID=bm.Booking_ID
And      bm.Movie_ID=m.Movie_ID
And      m.Movie_Name='IP Man'
Group By e.Employee_Name
HAVING   COUNT(b.Booking_ID) > 2;


-- 10. Select the customers who have booked more than five seats in total, 
-- including their names and the total number of seats booked.

Select   c.Customer_ID, c.Customer_Name, SUM(bs.Seat_Qty) AS 'TotalSeatsBooked'
From     customer c, booking b, booking_seat bs, seat s
Where    c.Customer_ID = b.Customer_ID
And      b.Booking_ID=bs.Booking_ID
And      bs.Seat_No=s.Seat_No
GROUP BY c.Customer_Name
HAVING   SUM(bs.Seat_Qty) > 5
Order By SUM(bs.Seat_Qty) desc;
