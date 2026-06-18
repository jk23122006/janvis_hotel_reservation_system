INSERT INTO guests(first_name, last_name, email_id, phone_number)
VALUES
('Klaus','Mikealson','klaus00@gmail.com','0123456789'),
('Caroline','Forbes','forbes123@gmail.com','0987654321'),
('Elena','Gilbert','gilbert.elena@gmail.com','0173263540'),
('Bonnie','Bennett','bonnie333@gmai.com','0568475020'),
('Davina','Claire','davina098@gmail.com','0648920103'),
('Tyler','Lockwood','lockwood@gmail.com','0999374675'),
('Katrina','Petrova','petrova099@gmail.com','0264738928'),
('Damon','Salovatore','salvatores2@gmail.com','0747648292');

INSERT INTO rooms(room_no, room_type, price_per_night, room_status)
VALUES
(101,'Single',100,'Available'),
(102,'Single',100,'Available'),
(103,'Double',200,'Occupied'),
(104,'Double',200,'Available'),
(105,'Suite',400,'Available'),
(106,'Suite',400,'Available'),
(107,'Deluxe',600,'Occupied'),
(108,'Deluxe',600,'Occupied');


INSERT INTO staff(first_name, last_name,role)
VALUES
('Matt','Donavan','Security'),
('Hayley','Marshal','Receptionist'),
('Marcel','Gerad','Manager'),
('Alaric','Saltzman','Customer Support');


INSERT INTO bookings (guest_id, room_id, check_in_date, check_out_date, booking_status)
VALUES
(1, 3, '2026-06-20', '2026-06-23', 'Confirmed'),
(2, 7, '2026-06-21', '2026-06-24', 'Confirmed'),
(3, 8, '2026-06-22', '2026-06-25', 'Confirmed'),
(4, 1, '2026-06-26', '2026-06-28', 'Pending'),
(5, 5, '2026-06-27', '2026-06-30', 'Confirmed'),
(6, 2, '2026-07-01', '2026-07-03', 'Pending'),
(7, 4, '2026-07-04', '2026-07-06', 'Confirmed'),
(8, 6, '2026-07-07', '2026-07-10', 'Confirmed');


INSERT INTO payments (booking_id, payment_date, amount, payment_method, payment_status)
VALUES
(1, '2026-06-18', 600.00, 'Credit Card', 'Paid'),
(2, '2026-06-18', 1800.00, 'PayPal', 'Paid'),
(3, '2026-06-19', 1800.00, 'Debit Card', 'Paid'),
(4, '2026-06-20', 100.00, 'Cash', 'Partially Paid'),
(5, '2026-06-21', 1200.00, 'Credit Card', 'Paid'),
(6, '2026-06-25', 100.00, 'Cash', 'Partially Paid'),
(7, '2026-06-26', 400.00, 'Bank Transfer', 'Paid'),
(8, '2026-06-27', 1200.00, 'PayPal', 'Paid');