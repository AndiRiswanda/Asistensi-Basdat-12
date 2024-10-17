CREATE DATABASE library


-- 1
CREATE TABLE authors(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nama VARCHAR(100) NOT NULL
);

CREATE TABLE books(
	id INT PRIMARY KEY AUTO_INCREMENT,
	isbn VARCHAR(13)NOT NULL,
	title VARCHAR(100) NOT NULL,
	author_id INT NOT NULL,
	FOREIGN KEY(author_id) REFERENCES authors(id)
);

-- 2
ALTER TABLE authors
ADD nationality VARCHAR(50)NOT NULL;

-- 3
ALTER TABLE books
MODIFY isbn VARCHAR (13) UNIQUE,
ADD published_year YEAR NOT NULL,
ADD genre VARCHAR(50) NOT NULL,
ADD copies_avalaible INT NOT NULL;



-- 4
SHOW TABLES 
DESCRIBE authors;
DESCRIBE books;
DESCRIBE borrowings;
DESCRIBE members;



-- 5
CREATE TABLE members(
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	email VARCHAR (100) NOT NULL,
	phone_number CHAR(10),
	join_date DATE NOT NULL,
	membership_type VARCHAR(50) NOT null
);

CREATE TABLE borrowings(
	id INT PRIMARY KEY AUTO_INCREMENT,
	member_id INT NOT NULL,
	book_id INT NOT NULL,
	borrow_date DATE NOT NULL,
	return_date DATE,
	FOREIGN KEY (member_id) REFERENCES members(id),
	FOREIGN KEY (book_id) REFERENCES books(id)
);

DROP TABLE borrowings

