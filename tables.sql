

CREATE DATABASE janvi_hotel_reservation;

USE janvi_hotel_reservation;

CREATE TABLE guests(
    guest_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email_id VARCHAR(100),
    phone_number VARCHAR(20)
    );


CREATE TABLE rooms (
    room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_no INT,
    room_type VARCHAR(50),
    price_per_night DECIMAL(10,2),
    status VARCHAR(20)
);


CREATE TABLE staff(
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    role VARCHAR(50)
    );


CREATE TABLE bookings(
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    guest_id INT,
    room_id INT,
    check_in_date DATE,
    check_out_date DATE,
    booking_status VARCHAR(20),
    FOREIGN KEY (guest_id) REFERENCES guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
    );


CREATE TABLE payments(
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(20),
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
    );