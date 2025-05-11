
USE UTCNLibrary;
GO

-- Inserare autori
INSERT INTO author_master_tbl (author_name) VALUES 
('J.K. Rowling'),
('George Orwell'),
('J.R.R. Tolkien');
GO

-- Inserare edituri
INSERT INTO publisher_master_tbl (publisher_name) VALUES 
('Penguin Books'),
('HarperCollins'),
('Bloomsbury');
GO

-- Inserare carti
INSERT INTO book_master_tbl (book_name, genre, author_name, publisher_name, publish_date, language, edition, book_cost, pages, book_description, actual_stock, current_stock, book_img_link)
VALUES
('Harry Potter and the Sorcerer''s Stone', 'Fantasy', 'J.K. Rowling', 'Bloomsbury', '1997-06-26', 'English', '1st', 39.99, 309, 'First book in the Harry Potter series.', 10, 8, 'https://cdn4.libris.ro/img/pozeprod/29218/29217356-1.jpg'),
('1984', 'Dystopian', 'George Orwell', 'Penguin Books', '1949-06-08', 'English', '1st', 29.99, 328, 'A dystopian novel about totalitarian regime.', 15, 12, 'https://cdn.dc5.ro/img-prod/166094-0.jpeg'),
('The Hobbit', 'Fantasy', 'J.R.R. Tolkien', 'HarperCollins', '1937-09-21', 'English', '2nd', 24.99, 310, 'A prequel to The Lord of the Rings.', 8, 7, 'https://cdn.dc5.ro/img-prod/181671-2034523.jpeg');
GO

-- Inserare membri
INSERT INTO member_master_tbl (nume, dob, telefon, email, judet, oras, cod_postal, adresa, parola, account_status)
VALUES 
('Ion Popescu', '2000-05-15', '0720123456', 'ion.popescu@example.com', 'Cluj', 'Cluj-Napoca', '400123', 'Str. Eroilor nr. 10', 'parola123', 'Active'),
('Maria Ionescu', '1998-11-30', '0730456789', 'maria.ionescu@example.com', 'Bucuresti', 'Sector 3', '031234', 'Bld. Unirii nr. 20', 'parola321', 'Active');
GO

-- Inserare admin
INSERT INTO admin_login_tbl (username, password, full_name)
VALUES ('admin', 'admin123', 'Administrator');
GO

-- Inserare imprumuturi
INSERT INTO book_issue_tbl (member_id, member_name, book_id, book_name, issue_date, due_date)
VALUES
(1, 'Ion Popescu', 1, 'Harry Potter and the Sorcerer''s Stone', '2025-05-01', '2025-05-15'),
(2, 'Maria Ionescu', 2, '1984', '2025-05-03', '2025-05-17');
GO
