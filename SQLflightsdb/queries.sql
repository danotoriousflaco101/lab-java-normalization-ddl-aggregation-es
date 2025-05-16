Total n. of flights:
SELECT COUNT(DISTINCT flight_number) FROM flights;

Flights average distance:
SELECT AVG(mileage) FROM flights;

Flights average seats:
SELECT AVG(total_seats) FROM aircrafts;

Customers Average miles travelled, grouped stat:
SELECT status, AVG(total_mileage) FROM customers GROUP BY status;

Customers Maximum miles travelled, grouped stat:
SELECT status, MAX(total_mileage) FROM customers GROUP BY status;

Flights named "Boeing":
SELECT COUNT(*) FROM aircrafts WHERE name LIKE '%Boeing%';

Flights mileage btwn 300 - 2000:
SELECT * FROM flights WHERE mileage BETWEEN 300 AND 2000;

Reserved flights average milage, grouped stat:
SELECT c.status, AVG(f.mileage)
FROM bookings b
         JOIN customers c ON b.customer_id = c.id
         JOIN flights f ON b.flight_number = f.flight_number
GROUP BY c.status;

Avión más reservado por miembros con estado Gold:
SELECT a.name, COUNT(*) AS total_bookings
FROM bookings b
         JOIN customers c ON b.customer_id = c.id
         JOIN flights f ON b.flight_number = f.flight_number
         JOIN aircrafts a ON f.aircraft_id = a.id
WHERE c.status = 'Gold'
GROUP BY a.name
ORDER BY total_bookings DESC
LIMIT 1;