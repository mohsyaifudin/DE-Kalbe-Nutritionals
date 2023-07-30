-- Create the orders table:

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    amount NUMERIC(10, 2),
    customer_id INT,
    salesman_id INT,
    store_id INT,
    region_id INT
);

-- Create the customer table:

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    gender VARCHAR(1),
    age INT,
    location VARCHAR(100)
);

-- Create the order_items table:

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT,
    price NUMERIC(10, 2),
    qty INT,
    order_item_amount NUMERIC(10, 2)
);

-- Create the salesman table:

CREATE TABLE salesman (
    salesman_id SERIAL PRIMARY KEY,
    salesman_name VARCHAR(100),
    hire_date DATE
);

-- Create the store table:

CREATE TABLE store (
    store_id SERIAL PRIMARY KEY,
    store_name VARCHAR(100),
    location VARCHAR(100)
);

-- Create the region table:

CREATE TABLE region (
    region_id SERIAL PRIMARY KEY,
    region_name VARCHAR(100)
);
