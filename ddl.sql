CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    car_id INTEGER

)

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
)

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    year INTEGER NOT NULL,
    customer_id INTEGER NOT NULL
    -- FOREIGN KEY (product_id) REFERENCES product(product_id)
)

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR (50)
    car_id INTEGER
)

CREATE TABLE service (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    date INTEGER NOT NULL,
    preowned_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car (car_id)
)

CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
   FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
)

ALTER TABLE invoice
ADD FOREIGN KEY (car_id) REFERENCES car(car_id);