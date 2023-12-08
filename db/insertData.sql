USE car_rental;

-- Insert data into address_tb
INSERT INTO address_tb (address_id, st_number, st_name, city, province, postal_code, is_headquarter) 
VALUES 
(0001, '123', 'Jalan Utama', 'Hamilton', 'DKI Jakarta', '12345', 'Y'),
(0002, '456', 'Jalan Pemuda', 'Surabaya', 'Jawa Timur', '67890', 'N'),
(0003, '789', 'Jalan Malioboro', 'Yogyakarta', 'DI Yogyakarta', '98742', 'N'),
(0004, '101', 'Jalan Gatot Subroto', 'Bandung', 'Jawa Barat', '98765', 'N'),
(0005, '202', 'Jalan Ahmad Yani', 'Semarang', 'Jawa Tengah', '34567', 'N'),
(0006, '303', 'Jalan Thamrin', 'Medan', 'Sumatera Utara', '87654', 'N'),
(0007, '404', 'Jalan Imam Bonjol', 'Makassar', 'Sulawesi Selatan', '23456', 'N'),
(0008, '505', 'Jalan Pahlawan', 'Denpasar', 'Bali', '76543', 'N'),
(0009, '606', 'Jalan Diponegoro', 'Palembang', 'Sumatera Selatan', '65432', 'N'),
(0010, '707', 'Jalan Merdeka', 'Manado', 'Sulawesi Utara', '54321', 'N'),
(0011, '808', 'Jalan Sudirman', 'Balikpapan', 'Kalimantan Timur', '43210', 'N'),
(0012, '909', 'Jalan Gajah Mada', 'Padang', 'Sumatera Barat', '63427', 'N'),
(0013, '111', 'Jalan Ahmad Dahlan', 'Malang', 'Jawa Timur', '57364', 'N'),
(0014, '112', 'Jalan Cabang', 'Bandung', 'Jawa Barat', '34213', 'N'),
(20001, '675', 'Jalan Jambu', 'Pasuruan', 'Jawa Timur', '23423', 'N'),
(20002, '853', 'Jalan Jeruk', 'Surabaya', 'Jawa Timur', '23452', 'N'),
(20003, '982', 'Jalan Mangga', 'Yogyakarta', 'DI Yogyakarta', '43521', 'N'),
(20004, '236', 'Jalan Apel', 'Bandung', 'Jawa Barat', '34632', 'N'),
(20005, '975', 'Jalan Alpukat', 'Semarang', 'Jawa Tengah', '42312', 'N'),
(20006, '435', 'Jalan Nanas', 'Medan', 'Sumatera Utara', '43532', 'N'),
(20007, '324', 'Jalan Sawo', 'Makassar', 'Sulawesi Selatan', '56753', 'N'),
(20008, '746', 'Jalan Srikaya', 'Denpasar', 'Bali', '68675', 'N'),
(20009, '342', 'Jalan Nangka', 'Palembang', 'Sumatera Selatan', '32242', 'N'),
(20010, '221', 'Jalan Durian', 'Manado', 'Sulawesi Utara', '54371', 'N'),
(20011, '423', 'Jalan Mawar', 'Balikpapan', 'Kalimantan Timur', '32452', 'N'),
(20012, '933', 'Jalan Melati', 'Padang', 'Sumatera Barat', '63627', 'N'),
(20013, '228', 'Jalan Tulip', 'Malang', 'Jawa Timur', '78342', 'N'),
(20014, '275', 'Jalan Matahari', 'Bandung', 'Jawa Barat', '98232', 'N'),
(20015, '431', 'Jalan Teratai', 'Surakarta', 'Jawa Tengah', '32455', 'N');


-- Insert data into classcar_tb
INSERT INTO classcar_tb (class_car, car_desc)
VALUES 
('Subcompact', 'Kecil dan ekonomis'),
('Compact', 'Efisien bahan bakar dan praktis'),
('Sedan', 'Nyaman untuk keluarga'),
('Luxury', 'Mewah dan tinggi');

-- Insert data into car_tb
INSERT INTO car_tb (car_id, class_car, car_location, make, model, year, colour, license_plate)
VALUES 
(1001, 'Subcompact', 20001, 'Toyota', 'Yaris', 2022, 'Blue', 'AB123CD'),
(1002, 'Compact', 20002, 'Honda', 'Civic', 2021, 'Silver', 'EF456GH'),
(1003, 'Sedan', 20003, 'Nissan', 'Altima', 2023, 'Black', 'IJ789KL'),
(1004, 'Luxury', 20004, 'Mercedes', 'S-Class', 2020, 'White', 'MN012OP'),
(1005, 'Subcompact', 20005, 'Ford', 'Fiesta', 2022, 'Red', 'QR345ST'),
(1006, 'Compact', 20008, 'Chevrolet', 'Cruze', 2021, 'Gray', 'UV678WX'),
(1007, 'Sedan', 20009, 'BMW', '3 Series', 2023, 'Black', 'YZ901AB'),
(1008, 'Luxury', 20010, 'Audi', 'A8', 2020, 'Silver', 'CD234EF'),
(1009, 'Subcompact', 20006, 'Hyundai', 'Accent', 2022, 'Green', 'GH567IJ'),
(1010, 'Compact', 20007, 'Volkswagen', 'Jetta', 2021, 'Blue', 'KL890MN'),
(1011, 'Sedan', 20011, 'Toyota', 'Camry', 2023, 'White', 'OP123QR'),
(1012, 'Luxury', 20012, 'Lexus', 'LS', 2020, 'Black', 'ST456UV'),
(1013, 'Subcompact', 20013, 'Kia', 'Rio', 2022, 'Orange', 'WX789YZ'),
(1014, 'Compact', 20014, 'Mazda', 'Mazda3', 2021, 'Red', 'AB012CD'),
(1015, 'Sedan', 20015, 'Acura', 'TLX', 2023, 'Blue', 'EF345GH');

-- Insert data into person_tb
INSERT INTO person_tb (address_id, driver_license, first_name, last_name)
VALUES 
(0003, 'DL123456', 'John', 'Doe'),
(0005, 'DL789012', 'Jane', 'Smith'),
(0004, 'DL345678', 'Robert', 'Johnson'),
(0006, 'DL901234', 'Emily', 'Williams'),
(0002, 'DL567890', 'Michael', 'Brown'),
(0007, 'DL234567', 'Sophia', 'Miller'),
(0011, 'DL890123', 'David', 'Davis'),
(0008, 'DL456789', 'Olivia', 'Martinez'),
(0009, 'DL012345', 'James', 'Anderson'),
(0012, 'DL678901', 'Emma', 'Lee'),
(0010, 'DL234568', 'Daniel', 'Garcia'),
(0013, 'DL890125', 'Ava', 'Hernandez');

-- Insert data into phone_tb
INSERT INTO phone_tb (driver_license, phone)
VALUES 
('DL123456', 081234567890),
('DL789012', 089876543210),
('DL345678', 085551112233),
('DL901234', 085544455555),
('DL567890', 085566677777),
('DL234567', 085588899999),
('DL890123', 08553332222),
('DL456789', 08557778888),
('DL012345', 08559990000),
('DL678901', 08552223333),
('DL234568', 08322233344),
('DL890125', 08551112233);

-- Insert data into employeetype_tb
INSERT INTO employeetype_tb (employee_type)
VALUES 
('Manager'),
('Pekerja'),
('Pengemudi'),
('Pembersih'),
('Petugas');


-- Insert data into employee_tb
INSERT INTO employee_tb (driver_license, location, employee_type, is_president, is_vicepres)
VALUES 
('DL123456', 0001, 'Manager', 'Y', 'N'),
('DL789012', 0001, 'Manager', 'N', 'Y'),
('DL345678', 0001, 'Manager', 'N', 'Y'),
('DL901234', 0014, 'Pekerja', 'N', 'N'),
('DL567890', 0014, 'Pengemudi', 'N', 'N'),
('DL890123', 0014, 'Pembersih', 'N', 'N'),
('DL234567', 0014, 'Petugas', 'N', 'N');

-- Insert data into customer_tb
INSERT INTO customer_tb (driver_license)
VALUES 
('DL456789'),
('DL012345'),
('DL678901'),
('DL234568'),
('DL890125');

-- Insert data into promrate_tb
INSERT INTO promrate_tb (duration, class_car, amount)
VALUES 
('1 Hari', 'Subcompact', 5000.00),
('1 Minggu', 'Subcompact', 30000.00),
('2 Minggu', 'Subcompact', 50000.00),
('1 Bulan', 'Subcompact', 150000.00),
('1 Hari', 'Compact', 6000.00),
('1 Minggu', 'Compact', 35000.00),
('2 Minggu', 'Compact', 60000.00),
('1 Bulan', 'Compact', 200000.00),
('1 Hari', 'Sedan', 8000.00),
('1 Minggu', 'Sedan', 45000.00),
('2 Minggu', 'Sedan', 70000.00),
('1 Bulan', 'Sedan', 250000.00),
('1 Hari', 'Luxury', 12000.00),
('1 Minggu', 'Luxury', 80000.00),
('2 Minggu', 'Luxury', 120000.00),
('1 Bulan', 'Luxury', 400000.00);

-- Insert data into promo_tb
INSERT INTO promo_tb (duration, class_car, from_date, percentage)
VALUES
('1 Hari', 'Subcompact', '2023-01-01', 0.6),
('1 Minggu', 'Subcompact', '2023-02-01', 0.6),
('2 Minggu', 'Subcompact', '2023-03-01', 0.6),
('1 Bulan', 'Subcompact', '2023-04-01', 0.6);

-- Insert data into rental_tb
INSERT INTO rental_tb (rental_id, driver_license, car_id, from_location, dropoff_location, from_date, to_date, tank, initial_odo, return_odo)
VALUES 
(40003, 'DL890125', 1003, 20003, 20004, '2023-03-01', '2023-03-15', 'Setengah', 8000, 8500),
(40004, 'DL234568', 1004, 20004, 20005, '2023-04-01', '2023-04-10', 'Kosong', 15000, 15800),
(40005, 'DL456789', 1005, 20005, 20006, '2023-05-01', '2023-05-15', 'Seperempat', 11000, 11500),
(40006, 'DL012345', 1006, 20006, 20007, '2023-11-30', NULL, 'Penuh', 13000, NULL),
(40007, 'DL678901', 1007, 20007, 20008, '2023-12-01', NULL, 'Penuh', 9000, NULL);

-- Insert data into rentalrate_tb
INSERT INTO rentalrate_tb (rental_id, duration, class_car, count)
VALUES
(40003, '2 Minggu', 'Sedan', 700000),
(40004, '1 Bulan', 'Luxury',  4000000),
(40005, '1 Hari', 'Compact', 60000),
(40006, '1 Minggu', 'Subcompact', 300000),
(40007, '2 Minggu', 'Sedan', 700000);

-- Insert data into dropoffcharge_tb
INSERT INTO dropoffcharge_tb (class_car, from_location, to_location, charge)
VALUES 
('Subcompact', 20001, 20003, 50000),
('Compact', 20002, 20004, 60000),
('Sedan', 20003, 20005, 80000),
('Luxury', 20004, 20006, 120000);
