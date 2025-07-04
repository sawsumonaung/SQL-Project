# 🎬 Diamond Cineplex SQL Database Project

This project is a **relational database design and query development** for Diamond Cineplex (DC), a popular cinema in downtown Yangon. The system is designed to support daily operations such as movie bookings, employee management, movie scheduling, and seat reservations.

---

## 📌 Project Overview

**Diamond Cineplex** faced operational inefficiencies using a paper-based system, leading to human errors, lost documents, and increased costs. This project creates a digital SQL-based solution to manage core operations and improve accuracy, efficiency, and data organization.

---

## 🗂️ Technologies Used

- SQL (MySQL)
- Relational Database Design
- ER Modeling (implied from design)
- Query Optimization
- Data Normalization

---

## 🧱 Database Structure

The database includes the following **entities and relationships**:

- `Customer` – Stores customer details
- `Employee` & `Employee_Type` – Manages staff information and roles
- `Movie`, `Theatre`, `Schedule`, `Seat` – Details about showings and seat types
- `Booking` – Tracks customer bookings
- Linking Tables:  
  - `Booking_Movie`  
  - `Booking_Seat`  
  - `Booking_Schedule`

Each table includes primary and foreign key constraints to ensure referential integrity.

---

## 🔄 Key Transactions Supported

- Insert a new movie and its schedule  
- Update booked seat information  
- Retrieve top 3 best-watched movies  
- Find the least-watched movie in a specific theatre  
- Delete an employee and their role  
- Identify customers who booked more than five seats  

---

## 📊 Sample Queries Included

✅ **Advanced SQL Queries:**

1. Least watched movie in "Standard" theatre  
2. Top 3 most-watched movies with their theatre  
3. Customers with more than 2 bookings  
4. Employee who handled the most schedules  
5. Employee who sold the most expensive seat  
6. Revenue from a specific movie (‘Parasite’)  
7. Least watched theatre and booking count  
8. Employee who sold the least expensive seat  
9. Employees managing more than 2 bookings for ‘IP Man’  
10. Customers who booked more than 5 seats

These queries use:
- `JOINs`
- `GROUP BY`, `HAVING`
- Subqueries
- Aggregate functions (`SUM`, `COUNT`, `MAX`, `MIN`)
- Filtering with `WHERE` and `LIMIT`

---

## 🏆 Academic Context

- Created as part of **NCC Level 5** database module
- Demonstrates practical use of:
  - Database design
  - Real-world business problem modeling
  - SQL transaction and analysis logic

---

## 🏁 How to Run

1. Copy the SQL code from `Diamond_Cineplex Database.sql` into your SQL editor.
2. Run the script to create tables and insert sample data.
3. Execute queries from the `queries.sql` section to test the logic.
4. Optionally connect with a BI tool (like Power BI or Tableau) for reporting and dashboards.

---

## 📌 Limitations / Out of Scope

- Real-time payment processing  
- Customer feedback system  

These can be considered for future enhancements.

---

## 👨‍💻 Developed By

- **Saw Su Mon Aung**
- Tools used: MySQL , VS Code, GitHub

---

## 📎 License

This project is for **educational purposes** and part of an academic database project. Feel free to reuse with attribution.

---

