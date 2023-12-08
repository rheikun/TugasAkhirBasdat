USE car_rental;

CREATE TABLE address_tb (
    address_id INTEGER PRIMARY KEY, 
    st_number VARCHAR(20) NOT NULL, 
    st_name VARCHAR(100) NOT NULL, 
    city VARCHAR(20) NOT NULL, 
    province VARCHAR(20) NOT NULL, 
    postal_code VARCHAR(6) NOT NULL, 
    is_headquarter CHAR(1) NOT NULL CHECK (is_headquarter IN ('Y', 'N'))
);
CREATE TABLE classcar_tb ( 
    class_car VARCHAR(10) NOT NULL, 
    car_desc VARCHAR(20) NOT NULL, 
    PRIMARY KEY (class_car)
);

CREATE TABLE car_tb (
    car_id INTEGER PRIMARY KEY,
    class_car VARCHAR(10) NOT NULL,
    car_location INTEGER,
    make VARCHAR(10) NOT NULL,
    model VARCHAR(20) NOT NULL,
    year INTEGER NOT NULL, 
    colour VARCHAR(10) NOT NULL,
    license_plate VARCHAR(8) NOT NULL,
    FOREIGN KEY (car_location) REFERENCES address_tb(address_id),
    FOREIGN KEY (class_car) REFERENCES classcar_tb(class_car),
    CHECK (car_id > 0)
);


CREATE TABLE person_tb (
    address_id INTEGER NOT NULL,
    driver_license VARCHAR(20) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (driver_license),
    FOREIGN KEY (address_id) REFERENCES address_tb (address_id)
);

CREATE TABLE phone_tb (
    driver_license VARCHAR(20) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    PRIMARY KEY (driver_license, phone),
    FOREIGN KEY (driver_license) REFERENCES person_tb (driver_license)
);

CREATE TABLE employeetype_tb ( 
    employee_type VARCHAR (20) NOT NULL, 
    PRIMARY KEY (employee_type) 
);

CREATE TABLE employee_tb (
    driver_license VARCHAR(20) PRIMARY KEY,
    location INTEGER NOT NULL,
    employee_type VARCHAR(20) NOT NULL,
    is_president CHAR(1) NOT NULL CHECK (is_president IN ('Y', 'N')), 
    is_vicepres CHAR(1) NOT NULL CHECK (is_vicepres IN ('Y', 'N')), 
    FOREIGN KEY (driver_license) REFERENCES person_tb (driver_license),
    FOREIGN KEY (location) REFERENCES address_tb (address_id),
    FOREIGN KEY (employee_type) REFERENCES employeetype_tb (employee_type)
);

CREATE TABLE customer_tb ( 
    driver_license VARCHAR(20) NOT NULL, 
    PRIMARY KEY (driver_license), 
    FOREIGN KEY (driver_license) REFERENCES person_tb (driver_license)
);


CREATE TABLE promrate_tb (
    duration ENUM('1 Hari', '1 Minggu', '2 Minggu', '1 Bulan') NOT NULL, 
    class_car VARCHAR(10) NOT NULL,
    amount DECIMAL(8,2) NOT NULL, 
    PRIMARY KEY (duration, class_car),
    FOREIGN KEY (class_car) REFERENCES classcar_tb(class_car)
);

CREATE TABLE promo_tb ( 
    duration ENUM('1 Hari', '1 Minggu', '2 Minggu', '1 Bulan') NOT NULL, 
    class_car VARCHAR(10) NOT NULL, 
    from_date DATE NOT NULL, 
    percentage DECIMAL(4,2) NOT NULL, 
    PRIMARY KEY (duration,class_car), 
    FOREIGN KEY (duration,class_car) REFERENCES promrate_tb (duration,class_car)
);

CREATE TABLE rental_tb ( 
    rental_id INTEGER NOT NULL, 
    driver_license VARCHAR(20) NOT NULL, 
    car_id INTEGER NOT NULL, 
    from_location INTEGER NOT NULL, 
    dropoff_location INTEGER NOT NULL, 
    from_date DATE NOT NULL, 
    to_date DATE, 
    tank VARCHAR(10) NOT NULL, 
    initial_odo INTEGER NOT NULL, 
    return_odo INTEGER, 
    PRIMARY KEY (rental_id), 
    UNIQUE (car_id), 
    FOREIGN KEY (car_id) REFERENCES car_tb (car_id), 
    FOREIGN KEY (driver_license) REFERENCES customer_tb (driver_license), 
    FOREIGN KEY (from_location) REFERENCES address_tb (address_id), 
    FOREIGN KEY (dropoff_location) REFERENCES address_tb (address_id), 
    CHECK (rental_id > 0), 
    CHECK ((from_date < to_date) OR (to_date IS NULL)), 
    CHECK ((initial_odo < return_odo) OR (return_odo IS NULL)) 
);

CREATE TABLE rentalrate_tb ( 
    rental_id INTEGER NOT NULL, 
    duration ENUM('1 Hari', '1 Minggu', '2 Minggu', '1 Bulan') NOT NULL, 
    class_car VARCHAR(10) NOT NULL, 
    count DECIMAL(8,2) NOT NULL, 
    PRIMARY KEY (rental_id,duration,class_car), 
    FOREIGN KEY (rental_id) REFERENCES rental_tb (rental_id), 
    FOREIGN KEY (duration,class_car) REFERENCES promrate_tb(duration, class_car), 
    CHECK (count > 0) 
);

CREATE TABLE dropoffcharge_tb ( 
    class_car VARCHAR(10) NOT NULL, 
    from_location INTEGER NOT NULL, 
    to_location INTEGER NOT NULL, 
    charge DECIMAL(8,2) NOT NULL, 
    PRIMARY KEY (class_car, from_location, to_location), 
    FOREIGN KEY (class_car) REFERENCES classcar_tb(class_car), 
    FOREIGN KEY (from_location) REFERENCES address_tb(address_id), 
    FOREIGN KEY (to_location) REFERENCES address_tb(address_id)
);


