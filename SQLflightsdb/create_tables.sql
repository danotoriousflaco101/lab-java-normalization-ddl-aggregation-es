CREATE TABLE customers (
                           id INT AUTO_INCREMENT PRIMARY KEY,
                           name VARCHAR(100) NOT NULL,
                           status VARCHAR(20) NOT NULL,
                           total_mileage INT NOT NULL,
                           UNIQUE(name)
);
CREATE TABLE aircrafts (
                           id INT AUTO_INCREMENT PRIMARY KEY,
                           name VARCHAR(50) NOT NULL,
                           total_seats INT NOT NULL
);
CREATE TABLE flights (
                         flight_number VARCHAR(10) PRIMARY KEY,
                         aircraft_id INT NOT NULL,
                         mileage INT NOT NULL,
                         FOREIGN KEY (aircraft_id) REFERENCES aircrafts(id)
);
CREATE TABLE bookings (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          customer_id INT NOT NULL,
                          flight_number VARCHAR(10) NOT NULL,
                          FOREIGN KEY (customer_id) REFERENCES customers(id),
                          FOREIGN KEY (flight_number) REFERENCES flights(flight_number)
);