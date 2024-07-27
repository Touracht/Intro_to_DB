CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE IF NOT EXISTS Books(
    book_id Primary KEY,
    title VARCHAR(130),
        author_id INT,
        FOREIGN KEY (author_id) REFERENCES Authors(author_id),
        price DOUBLE,
        publication_date DATE
);
CREATE TABLE IF NOT EXISTS Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);
CREATE TABLE IF NOT EXISTS Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
CREATE TABLE IF NOT EXISTS Orders(
    order_id PRIMARY KEY,
    customer_id,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
);
CREATE TABLE IF NOT EXISTS Order_Details(
    orderdetailid PRIMARY KEY,
    order_id INT,
    FOREIGN KEY (order_id) INT REFERENCES Orders(order_id),
    book_id INT,
    FOREIGN KEY (book_id) INT REFERENCES Books(book_id)
);

