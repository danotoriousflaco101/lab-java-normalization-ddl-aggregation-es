INSERT INTO customers (name, status, total_mileage) VALUES
                                                        ('Agustine Riviera', 'Silver', 115235),
                                                        ('Alaina Sepulvida', 'None', 6008),
                                                        ('Tom Jones', 'Gold', 205767),
                                                        ('Sam Rio', 'None', 2653),
                                                        ('Jessica James', 'Silver', 127656),
                                                        ('Ana Janco', 'Silver', 136773),
                                                        ('Jennifer Cortez', 'Gold', 300582),
                                                        ('Christian Janco', 'Silver', 14642);
INSERT INTO aircrafts (name, total_seats) VALUES
                                              ('Boeing 747', 400),
                                              ('Airbus A330', 236),
                                              ('Boeing 777', 264);
INSERT INTO flights (flight_number, aircraft_id, mileage) VALUES
                                                              ('DL143', 1, 135),
                                                              ('DL122', 2, 4370),
                                                              ('DL53', 3, 2078),
                                                              ('DL222', 3, 1765),
                                                              ('DL37', 1, 531);
INSERT INTO bookings (customer_id, flight_number) VALUES
                                                      (1, 'DL143'),
                                                      (1, 'DL122'),
                                                      (2, 'DL122'),
                                                      (3, 'DL122'),
                                                      (3, 'DL53'),
                                                      (1, 'DL143'),
                                                      (4, 'DL143'),
                                                      (1, 'DL143'),
                                                      (3, 'DL222'),
                                                      (5, 'DL143'),
                                                      (4, 'DL37'),
                                                      (6, 'DL222'),
                                                      (7, 'DL222'),
                                                      (5, 'DL122'),
                                                      (8, 'DL222');