-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE category
{
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    category_name VARCHAR(30) NOT NULL
};

CREATE TABLE product
{
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL NOT NULL,
    stock INT NOT NULL,
    category_id INT REFERENCES category(id)
}

CREATE TABLE tag
{
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tag_name VARCHAR (30)
}

CREATE TABLE ProductTag
{
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT REFERENCES product(id),
    tag_id INT REFERENCES tag(id)
}