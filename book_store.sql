1. SHOW database untuk melihat list database yang ada pada mysql 
-- JAWABAN 
    SHOW databases;

2. CREATE database bernama bookstore
-- JAWABAN 
    CREATE databases bookstore;

3. USE database bookstore
-- JAWABAN 
    USE bookstore;

4. SHOW seluruh table yang ada pada database bookstore
-- JAWABAN 
    SHOW tables;

5. Buatlah table bernama books dengan attribute/column yang berisi
    id
        Tipe data: Integer
        Auto Increment
        Primary Key
    author1
        Tipe data: String
        Not Null
        Max length of string: 100
    author2
        Tipe data: String
        Max length of string: 100
    author3
        Tipe data: String
        Max length of string: 100
    title
        Tipe data: String
        Max length of string: 100
    description
        Tipe data: String
    place_sell
        Tipe data String
        Fixed length of string: 3
    stock
        Tipe data: Integer
        Default value: 0
    creation_date
        Tipe data: Datetime
        Timestamp
        Default Value: CURRENT_TIMESTAMP
        On Update Value: CURRENT_TIMESTAMP
-- JAWABAN 
    CREATE table books(
        id int not null auto_increment Primary Key,
        author1 varchar(100) not null ,
        author2 varchar(100),
        author3 varchar(100),
        title varchar(100),
        description varchar,
        place_sell char(3),
        stock int Default '0',
        creation_date Datetime Timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    );

6. Pada suatu waktu, kamu harus mengupdate column dari table books yang sudah ada. Berikut update yang harus dilakukan:
    ADD column
        price
            Tipe data: Integer
            Default value: 0
        status
            Tipe data: Enum
            Enum value: 'available', 'out of stock', 'limited'
    DROP column
        place_sell
--JAWABAN 
    alter table books
        add price int Default'0',
        add status Enum('available', 'out of stock', 'limited');
    DROP COLUMN place_sell;

7. INSERT 3 data untuk semua column yang ada pada table books
--JAWABAN



8. SELECT semua row pada table books
--JAWABAN
    SELECT * from books

9. SELECT menggunakan ALIAS. Column id digantikan ID, author1 digantikan A1, author2 digantikan A2, author3 digantikan A3.
--JAWABAN
    SELECT id AS ID, author1 AS A1, author2 AS A2, author3 AS A3 from books; 

10. SELECT data menggunakan WHERE untuk id tertentu
--JAWABAN
    SELECT * from books
    WHERE id = 1;

11. SELECT data menggunakan WHERE untuk dengan operator logical AND
--JAWABAN
    SELECT * from books
    WHERE 

12. SELECT data menggunakan WHERE untuk dengan operator logical OR
--JAWABAN
SELECT * from books
WHERE author1 = 'WIKE' or author2 = 'Wike';

13. SELECT data menggunakan WHERE untuk dengan operator logical NOT
--JAWABAN
SELECT * from books
WHERE not id = 2;

14. SELECT seluruh column dari table bookstore dan diurutkan secara ASC berdasarkan id
--JAWABAN
SELECT * from books
ORDER BY id ASC;

15. SELECT seluruh column dan berikan LIMIT untuk 2 row saja
--JAWABAN
SELECT * from books LIMIT 2;

16. Pilih 1 row untuk dilakukan UPDATE pada column author1 dan price.
--JAWABAN
UPDATE books;
set author1 = 'ABC', price = '30000' 
WHERE id = 1;

17. Pilih 1 row untuk dilakukan DELETE
--JAWABAN
DELETE from books where id = 2;

