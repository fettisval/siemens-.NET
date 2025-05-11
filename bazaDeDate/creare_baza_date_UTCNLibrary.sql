
-- Creează baza de date
CREATE DATABASE UTCNLibrary;
GO

-- Selectează baza de dat
USE UTCNLibrary;
GO

-- Tabel: book_master_tbl
CREATE TABLE book_master_tbl (
    book_id INT PRIMARY KEY IDENTITY(1,1),
    book_name NVARCHAR(255),
    genre NVARCHAR(100),
    author_name NVARCHAR(255),
    publisher_name NVARCHAR(255),
    publish_date DATE,
    language NVARCHAR(100),
    edition NVARCHAR(50),
    book_cost DECIMAL(10, 2),
    pages INT,
    book_description NVARCHAR(MAX),
    actual_stock INT,
    current_stock INT,
    book_img_link NVARCHAR(500)
);
GO

-- Tabel: author_master_tbl
CREATE TABLE author_master_tbl (
    author_id INT PRIMARY KEY IDENTITY(1,1),
    author_name NVARCHAR(255)
);
GO

-- Tabel: publisher_master_tbl
CREATE TABLE publisher_master_tbl (
    publisher_id INT PRIMARY KEY IDENTITY(1,1),
    publisher_name NVARCHAR(255)
);
GO

-- Tabel: member_master_tbl
CREATE TABLE member_master_tbl (
    user_id INT PRIMARY KEY IDENTITY(1,1),
    nume NVARCHAR(255),
    dob DATE,
    telefon NVARCHAR(20),
    email NVARCHAR(255),
    judet NVARCHAR(100),
    oras NVARCHAR(100),
    cod_postal NVARCHAR(20),
    adresa NVARCHAR(500),
    parola NVARCHAR(100),
    account_status NVARCHAR(50)
);
GO

-- Tabel: admin_login_tbl
CREATE TABLE admin_login_tbl (
    username NVARCHAR(100) PRIMARY KEY,
    password NVARCHAR(100),
    full_name NVARCHAR(255)
);
GO

-- Tabel: book_issue_tbl
CREATE TABLE book_issue_tbl (
    issue_id INT PRIMARY KEY IDENTITY(1,1),
    member_id INT,
    member_name NVARCHAR(255),
    book_id INT,
    book_name NVARCHAR(255),
    issue_date DATE,
    due_date DATE,
    FOREIGN KEY (member_id) REFERENCES member_master_tbl(user_id),
    FOREIGN KEY (book_id) REFERENCES book_master_tbl(book_id)
);
GO
