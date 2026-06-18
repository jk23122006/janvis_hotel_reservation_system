

USE janvi_hotel_reservation;


SELECT * FROM guests;

SELECT * FROM rooms;

SELECT * FROM staff;

SELECT * FROM bookings;

SELECT * FROM payments;

SELECT
    bookings.booking_id,
    guests.first_name,
    guests.last_name,
    rooms.room_no,
    rooms.room_type,
    bookings.check_in_date,
    bookings.check_out_date,
    bookings.booking_status
FROM bookings
JOIN guests ON bookings.guest_id = guests.guest_id
JOIN rooms ON bookings.room_id = rooms.room_id;


SELECT
    payments.payment_id,
    guests.first_name,
    guests.last_name,
    rooms.room_no,
    rooms.room_type,
    payments.payment_date,
    payments.amount,
    payments.payment_method,
    payments.payment_status
FROM payments
JOIN bookings ON payments.booking_id = bookings.booking_id
JOIN guests ON bookings.guest_id = guests.guest_id
JOIN rooms ON bookings.room_id = rooms.room_id;


SELECT
    SUM(amount) AS total_money_received
FROM payments
WHERE payment_status = 'Paid';


SELECT
    room_no,
    room_type,
    price_per_night,
    room_status
FROM rooms
WHERE room_status = 'Available';


SELECT
    booking_status,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY booking_status;

SELECT
    payment_id,
    booking_id,
    amount,
    payment_method,
    payment_status
FROM payments
WHERE payment_status = 'Partially Paid';


UPDATE rooms
SET room_status = 'Occupied'
WHERE room_no = '104';

SELECT * FROM rooms WHERE room_no = '104';


DELETE FROM staff
WHERE first_name = 'Matt' AND last_name = 'Donovan';

SELECT * FROM staff;