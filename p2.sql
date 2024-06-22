USE LibraryManagement;

INSERT INTO authors (author_name)
VALUES ("Іван Котляревський"), ("Люсі Фолі");
SELECT * FROM authors;

INSERT INTO genres (genre_name)
VALUES ("Поема"), ("Роман");
SELECT * FROM genres;

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES ("Енеїда", 2022, 1, 1), ("Паризькі апартаменти", 2024, 2, 2);
SELECT * FROM books;

INSERT INTO users (username, email)
VALUES ("Олег", "olehbudko@gmail.com"), ("Олександра", "obatrak@gmail.com");
SELECT * FROM users;

INSERT INTO borrowed_books (borrow_date, return_date, book_id, user_id)
VALUES ("2024-03-25", "2024-05-14", 1, 1), ("2023-12-01", "2024-01-11", 2, 2);
SELECT * FROM borrowed_books;