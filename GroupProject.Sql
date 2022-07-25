CREATE TABLE car (
  car_id SERIAL,
  sales_date DATE,
  car_condition VARCHAR(4),
  car_cost NUMERIC(10,2),
  PRIMARY KEY (car_id)
);

CREATE TABLE customer (
  customer_id SERIAL,
  customer_name VARCHAR(50),
  PRIMARY KEY (customer_id)
);

CREATE TABLE invoice (
  invoice_id SERIAL,
  car_id INTEGER,
  salesperson_id INTEGER,
  customer_id INTEGER,
  total_cost NUMERIC(10,2),
  PRIMARY KEY (invoice_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE parts(
  parts_id SERIAL,
  parts_cost NUMERIC(10,2),
  part_description VARCHAR(100),
  PRIMARY KEY (parts_id)
);

CREATE TABLE service_ticket (
  service_idSERIAL,
  service_type VARCHAR(100),
  service_cost NUMERIC(8,2),
  car_id INTEGER,
  mechanic_id INTEGER,
  parts_id INTEGER,
  service_date DATE,
  customer_id INTEGER,
  PRIMARY KEY (service_id)
);

CREATE TABLE salesperson (
  salesperson_id SERIAL,
  salesperson_name VARCHAR(50),
  email VARCHAR(50),
  PRIMARY KEY (salesperson_id)
);

CREATE TABLE mechanic (
  mechanic_id SERIAL,
  mechanic_name VARCHAR(50),
  PRIMARY KEY (mechanic_id)
);

INSERT INTO customer(
    customer_name
    )VALUES(
    'Optimus Prime'
    'Megatron'
    'StarScream'
    'Bumblebee'
);
    SELECT * FROM customer;
    
INSERT INTO mechanic(
    mechanic_name)VALUES(
    'Dale'
    'Pablo'
    'Jose'
    'Greg'

);
SELECT * FROM mechanic;

INSERT INTO parts(
    parts_cost,
    parts_description
)VALUES(
    'motor',
    'make engine go vroom'),
    ('window',
    'makes car not get wet');
SELECT * FROM parts;

INSERT INTO salesperson(
    salesperson_name,
    email
)VALUES( 
    'Donny',
    'purpleturtle@gmail.com'),
    ('Mikey'
    'pizza4life@gmail.com');

SELECT * FROM salesperson;

INSERT INTO car(
    car_condition,
    sales_date,
    car_cost
)VALUES(
    'NEW',
    '1/1/2022',
    19000),
    ('USED',
    '4/19/1992',
    1000);

SELECT * FROM car;

INSERT INTO service_ticket(
    service_type,
    service_cost
)VALUES(
    'Oil Change',
    59.99)
    ('Carb Cleaner',
    29.99
);

SELECT * FROM service_ticket
