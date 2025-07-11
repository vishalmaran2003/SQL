create database sqlproject1
use sqlproject1
CREATE TABLE genres (genre_id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(50) NOT NULL UNIQUE)
CREATE TABLE customers (customer_id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100) NOT NULL,email VARCHAR(100) UNIQUE,phone VARCHAR(15))
CREATE TABLE movies (movie_id INT AUTO_INCREMENT PRIMARY KEY,title VARCHAR(255) NOT NULL,genre_id INT,release_year INT,language VARCHAR(50),available_copies INT DEFAULT 0,total_copies INT NOT NULL,FOREIGN KEY (genre_id) REFERENCES genres(genre_id))
CREATE TABLE rentals (rental_id INT AUTO_INCREMENT PRIMARY KEY,customer_id INT,movie_id INT,rental_date DATE,return_date DATE,actual_return_date DATE,FOREIGN KEY (customer_id) REFERENCES customers(customer_id),FOREIGN KEY (movie_id) REFERENCES movies(movie_id))
CREATE TABLE payments (payment_id INT AUTO_INCREMENT PRIMARY KEY,rental_id INT,amount DECIMAL(10, 2),payment_date DATE,FOREIGN KEY (rental_id) REFERENCES rentals(rental_id))
CREATE TABLE movie_reviews (review_id INT AUTO_INCREMENT PRIMARY KEY,customer_id INT,movie_id INT,rating INT CHECK (rating BETWEEN 1 AND 5),review_text TEXT,review_date DATE,FOREIGN KEY (customer_id) REFERENCES customers(customer_id),FOREIGN KEY (movie_id) REFERENCES movies(movie_id))
CREATE TABLE late_fees (fee_id INT auto_increment PRIMARY KEY,rental_id INT,days_late INT,fee_amount DECIMAL(10, 2),charged_date DATE,FOREIGN KEY (rental_id) REFERENCES rentals(rental_id))
INSERT INTO genres (name) VALUES
('Action'),('Adventure'),('Comedy'),('Drama'),('Fantasy'),
('Horror'),('Mystery'),('Romance'),('Science Fiction'),('Thriller'),
('Animation'),('Crime'),('Documentary'),('Family'),('War')
select * from genres
INSERT INTO customers (name, email, phone) VALUES
('Vishal', 'vishal.maran@example.com', '9811223344'),
('Sakthi Ganesh', 'Sakthi.ganesh@example.com', '9822334455'),
('Veera Raghavan', 'veera.raghavan@example.com', '9833445566'),
('Saravanan M', 'saravanan.m@example.com', '9844556677'),
('Rahul Ravi', 'rahul.ravi@example.com', '9855667788'),
('Arul Mozhi', 'arul.mozhi@example.com', '9866778899'),
('Aditya Varadarajan', 'aditya.varadarajan@example.com', '9876543210'),
('Tara Kalingarayar', 'tara.kalingarayar@example.com', '9823456712'),
('Suresh Raina', 'suresh.raina@example.com', '9834567890'),
('Kundavi', 'kundavi.gowtham@example.com', '9812345678'),
('Major Suriya', 'major.suriya@example.com', '9845671234'),
('Arjun Reddy', 'Arjun.reddy@example.com', '9890123456'),
('Varun Chakrapani', 'varun.chakrapani@example.com', '9801234567'),
('Leela Abraham', 'leela.abraham@example.com', '9876540987'),
('Veeraiya', 'veera.ravanan@example.com', '9832109876'),
('Ragini Subramaniam', 'ragini.subramaniam@example.com', '9821456987'),
('Abhi Raghuraman', 'abhi.raghuraman@example.com', '9867453210'),
('Tyler Durden', 'tyler.durden@example.com', '9812378456'),
('Mia Sebastian', 'mia.sebastian@example.com', '9845612398'),
('Devaraj Velusamy', ' Deva.velusamy@example.com', '9887654321'),
('Bharani', 'bharani.kettavan@example.com', '9800987654'),
('Reenu Roy', 'reenu.roy@example.com', '9877889900'),
('Murugan Palani', 'murugan.palani@example.com', '9888990011'),
('Gayathri Suresh', 'gayathri.suresh@example.com', '9899001122'),
('Vasanth Raj', 'vasanth.raj@example.com', '9900112233'),
('Revathi Manickam', 'revathi.manickam@example.com', '9911223344'),
('Sathish Kumar', 'sathish.kumar@example.com', '9922334455'),
('Yazhini Bakthirajan', 'yazhini.bakthirajan@example.com', '9933445566'),
('Senthil Kumar', 'senthil.kumar@example.com', '9944556677'),
('Kayalvizhi', 'kayal.lolita@example.com', '9955667788'),
('Aarumugam', 'aaru.mugam@example.com', '9876543210'),
('Anbu Selvan', 'anbu.selvan@example.com', '9823456712'),
('Panchavan Parivendhan', 'pari.vendhan@example.com', '9834567890'),
('Gulshan Arora', 'gulshan.arora@example.com', '9812345678'),
('Sachin Santhosh', 'sachin.santhosh@example.com', '9845671234')
select * from customers
INSERT INTO movies (title, genre_id, release_year, language, available_copies, total_copies) VALUES
('Baasha', 1, 1995, 'Tamil', 5, 10),
('Interstellar', 9, 2014, 'English', 3, 5),
('Nanban', 4, 2012, 'Tamil', 4, 6),
('Thuppakki', 1, 2012, 'Tamil', 2, 4),
('The Dark Knight', 12, 2008, 'English', 6, 8),
('Soorarai Pottru', 4, 2020, 'Tamil', 7, 10),
('Kaithi', 1, 2019, 'Tamil', 4, 6),
('Tare Sameer Par', 14, 2007, 'Hindi', 2, 3),
('Master', 1, 2021, 'Tamil', 5, 9),
('Titanic', 8, 1997, 'English', 3, 5),
('Joker', 4, 2019, 'English', 5, 7),
('Dangal', 4, 2016, 'Hindi', 4, 5),
('The Godfather', 12, 1972, 'English', 2, 3),
('Ratatouille', 11, 2007, 'Japanese', 2, 4),
('delhi 6', 4, 2009, 'Hindi', 3, 5),
('Iron Man', 9, 2008, 'English', 4, 6),
('96', 8, 2018, 'Tamil', 3, 5),
('The Shawshank Redemption', 4, 1994, 'English', 3, 5),
('Sillunu Oru Kadhal', 8, 2006, 'Tamil', 4, 6),
('Vaaranam Aayiram', 4, 2008, 'Tamil', 5, 7),
('OK Kanmani', 8, 2015, 'Tamil', 3, 5),
('Alaipayuthey', 8, 2000, 'Tamil', 4, 6),
('Minnale', 8, 2001, 'Tamil', 3, 4),
('Kaatru Veliyidai', 8, 2017, 'Tamil', 4, 6),
('Aaru', 1, 2005, 'Tamil', 4, 6),
('Sandakozhi', 1, 2005, 'Tamil', 5, 7),
('Thamirabharani', 1, 2007, 'Tamil', 3, 5),
('Singam', 1, 2010, 'Tamil', 6, 8),
('Premalu', 3, 2024, 'Malayalam', 4, 6),
('Fight Club', 10, 1999, 'English', 3, 5),
('Virumaandi', 4, 2004, 'Tamil', 4, 6),
('Raavanan', 4, 2010, 'Tamil', 3, 5),
('Pariyerum Perumal', 4, 2018, 'Tamil', 3, 4),
('Panchatanthiram', 3, 2002, 'Tamil', 4, 6),
('Mersal', 1, 2017, 'Tamil', 5, 7),
('Avatar', 5, 2009, 'English', 6, 10);
select * from movies
INSERT INTO rentals (customer_id, movie_id, rental_date, return_date, actual_return_date) VALUES
(1, 19, '2025-06-01', '2025-06-05', '2025-06-04'), 
(2, 5, '2025-06-06', '2025-06-10', '2025-06-10'), 
(3, 8, '2025-06-02', '2025-06-07', '2025-06-06'), 
(4, 8, '2025-06-08', '2025-06-13', NULL),   
(5, 1, '2025-06-03', '2025-06-06', '2025-06-08'), 
(6, 1, '2025-06-10', '2025-06-15', NULL),         
(7, 3, '2025-06-04', '2025-06-09', '2025-06-09'),
(8, 4, '2025-06-05', '2025-06-10', '2025-06-10'),
(9, 9, '2025-06-06', '2025-06-11', '2025-06-11'),
(10, 9, '2025-06-12', '2025-06-16', NULL),   
(11, 2, '2025-06-07', '2025-06-12', NULL),
(12, 6, '2025-06-08', '2025-06-13', '2025-06-13'),
(13, 7, '2025-06-09', '2025-06-14', '2025-06-15'),
(14, 10, '2025-06-10', '2025-06-15', NULL),
(15, 11, '2025-06-11', '2025-06-16', '2025-06-17'),
(16, 11, '2025-06-17', '2025-06-22', NULL),
(17, 13, '2025-06-12', '2025-06-17', '2025-06-17'),
(18, 14, '2025-06-13', '2025-06-18', NULL),
(19, 15, '2025-06-14', '2025-06-19', '2025-06-19'),
(20, 16, '2025-06-15', '2025-06-20', NULL),
(21, 17, '2025-06-16', '2025-06-21', '2025-06-21'),
(22, 18, '2025-06-17', '2025-06-22', '2025-06-23'),
(23, 19, '2025-06-18', '2025-06-23', NULL),
(24, 20, '2025-06-19', '2025-06-24', '2025-06-25'),
(25, 21, '2025-06-20', '2025-06-25', NULL),
(26, 21, '2025-06-26', '2025-07-01', NULL),
(27, 22, '2025-06-21', '2025-06-26', NULL),
(28, 23, '2025-06-22', '2025-06-27', NULL),
(29, 24, '2025-06-23', '2025-06-28', '2025-06-29'),
(30, 25, '2025-06-24', '2025-06-29', '2025-07-01'),
(31, 25, '2025-07-01', '2025-07-06', NULL),
(32, 26, '2025-06-25', '2025-06-30', NULL),
(33, 27, '2025-06-26', '2025-07-01', NULL),
(34, 28, '2025-06-27', '2025-07-02', '2025-07-02'),
(1, 28, '2025-07-03', '2025-07-08', NULL),
(2, 30, '2025-06-28', '2025-07-03', '2025-07-05');
select * from rentals
INSERT INTO payments (rental_id, amount, payment_date) VALUES
(1, 100.00, '2025-06-04'),
(2, 90.00, '2025-06-10'),
(3, 120.00, '2025-06-08'),
(4, 85.00, '2025-06-09'),
(5, 110.00, '2025-06-09'),
(6, 95.00, '2025-06-11'),
(7, 80.00, '2025-06-09'),
(8, 105.00, '2025-06-13'),
(9, 125.00, '2025-06-15'),
(10, 100.00, '2025-06-14'),
(11, 90.00, '2025-06-17'),
(12, 75.00, '2025-06-13'),
(13, 115.00, '2025-06-15'),
(14, 130.00, '2025-06-16'),
(15, 85.00, '2025-06-20'),
(16, 100.00, '2025-06-22'),
(17, 95.00, '2025-06-23'),
(18, 90.00, '2025-06-26'),
(19, 70.00, '2025-06-23'),
(20, 125.00, '2025-06-25'),
(21, 115.00, '2025-06-25'),
(22, 105.00, '2025-06-26'),
(23, 85.00, '2025-06-29'),
(24, 120.00, '2025-06-25'),
(25, 100.00, '2025-06-28'),
(26, 90.00, '2025-07-01'),
(27, 110.00, '2025-07-01'),
(28, 105.00, '2025-07-02'),
(29, 115.00, '2025-06-29'),
(30, 125.00, '2025-07-01'),
(31, 95.00, '2025-07-06'),
(32, 85.00, '2025-07-01'),
(33, 70.00, '2025-07-02'),
(34, 90.00, '2025-07-02'),
(35, 105.00, '2025-07-06')
select * from payments
INSERT INTO movie_reviews (customer_id, movie_id, rating, review_text, review_date) VALUES
(1, 19, 5, 'This movie takes me back to my childhood always reminds me of my favorite person(song:newyork nagaram).', '2025-06-06'),
(2, 5, 4, 'Great movie. Would watch again,great acting by Heath Ledger', '2025-06-11'),
(3, 8, 5, 'Very emotional and inspiring.', '2025-06-09'),
(4, 8, 4, 'A heartfelt movie. Worth watching.', '2025-06-14'),
(5, 1, 5, 'Mass performance by the lead actor.', '2025-06-08'),
(6, 1, 3, 'Entertaining but a bit dated.', '2025-06-16'),
(7, 3, 4, 'Good remake with nice message.', '2025-06-10'),
(8, 4, 4, 'Action-packed and thrilling.', '2025-06-11'),
(9, 9, 5, 'Loved the music and vibe!', '2025-06-13'),
(10, 9, 4, 'Nice college-style flick.', '2025-06-17'),
(11, 2, 5, 'Mind-blowing concept!', '2025-06-13'),
(12, 6, 5, 'Superb performances!', '2025-06-14'),
(13, 7, 5, 'Gripping story from start to end.', '2025-06-16'),
(14, 10, 4, 'A classic. Always enjoyable.', '2025-06-16'),
(15, 11, 5, 'Masterpiece. Intense acting.', '2025-06-18'),
(16, 11, 4, 'Dark and emotional.', '2025-06-23'),
(17, 13, 4, 'Godfather of cinema.', '2025-06-18'),
(18, 14, 3, 'Fun and quirky animation.', '2025-06-20'),
(19, 15, 4, 'Beautiful songs and story.', '2025-06-21'),
(20, 16, 5, 'Robert Downey Jr. rocks!', '2025-06-21'),
(21, 17, 5, 'Beautiful love story.', '2025-06-22'),
(22, 18, 5, 'Very inspiring!', '2025-06-24'),
(23, 19, 4, 'AR Rahman magic again!', '2025-06-24'),
(24, 20, 5, 'Heartfelt father-son story.', '2025-06-26'),
(25, 21, 3, 'Nice love story.', '2025-06-27'),
(26, 21, 4, 'Refreshing film.', '2025-07-01'),
(27, 22, 4, 'Feel good movie.', '2025-06-28'),
(28, 23, 3, 'Slow but emotional.', '2025-06-30'),
(29, 24, 5, 'Karthi was brilliant!', '2025-06-30'),
(30, 25, 4, 'Neat cop thriller.', '2025-07-02'),
(31, 25, 4, 'Well choreographed fights.', '2025-07-06'),
(32, 26, 4, 'Good village drama.', '2025-07-01'),
(33, 27, 3, 'Okay watch.', '2025-07-02'),
(34, 28, 5, 'Fun romantic comedy!', '2025-07-02'),
(1, 20, 5, 'what ever happens life has to move on!', '2025-07-06')
select * from movie_reviews
INSERT INTO late_fees (rental_id, days_late, fee_amount, charged_date) VALUES
(1, 0, 0.00, '2025-06-05'),
(2, 0, 0.00, '2025-06-10'),
(3, 1, 10.00, '2025-06-08'),
(4, 0, 0.00, '2025-06-13'),
(5, 0, 0.00, '2025-06-09'),
(6, 0, 0.00, '2025-06-11'),
(7, 0, 0.00, '2025-06-09'),
(8, 0, 0.00, '2025-06-13'),
(9, 2, 20.00, '2025-06-15'),
(10, 0, 0.00, '2025-06-15'),
(11, 1, 10.00, '2025-06-17'),
(12, 0, 0.00, '2025-06-13'),
(13, 0, 0.00, '2025-06-18'),
(14, 0, 0.00, '2025-06-19'),
(15, 1, 10.00, '2025-06-21'),
(16, 0, 0.00, '2025-06-22'),
(17, 1, 10.00, '2025-06-23'),
(18, 0, 0.00, '2025-06-23'),
(19, 1, 10.00, '2025-06-25'),
(20, 0, 0.00, '2025-06-25'),
(21, 1, 10.00, '2025-06-27'),
(22, 0, 0.00, '2025-06-27'),
(23, 1, 10.00, '2025-06-29'),
(24, 1, 10.00, '2025-06-30'),
(25, 0, 0.00, '2025-06-30'),
(26, 0, 0.00, '2025-07-01'),
(27, 0, 0.00, '2025-07-02'),
(28, 2, 20.00, '2025-07-05'),
(29, 1, 10.00, '2025-06-30'),
(30, 2, 20.00, '2025-07-01'),
(31, 0, 0.00, '2025-07-06'),
(32, 0, 0.00, '2025-07-01'),
(33, 0, 0.00, '2025-07-02'),
(34, 0, 0.00, '2025-07-02'),
(35, 0, 0.00, '2025-07-06');
select * from late_fees
DELIMITER //

CREATE PROCEDURE TamilMoviesAvailable()
BEGIN
    SELECT title, available_copies 
    FROM movies 
    WHERE language = 'Tamil' AND available_copies > 3;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE CustomersNeverRented()
BEGIN
    SELECT c.name, c.email 
    FROM customers c
    LEFT JOIN rentals r ON c.customer_id = r.customer_id
    WHERE r.rental_id IS NULL;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE GenreMovieCount()
BEGIN
    SELECT g.name AS genre, COUNT(m.movie_id) AS movie_count
    FROM genres g
    LEFT JOIN movies m ON g.genre_id = m.genre_id
    GROUP BY g.name;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE HighRatedRecentMovie()
BEGIN
    SELECT DISTINCT m.title, m.release_year 
    FROM movies m
    JOIN movie_reviews r ON m.movie_id = r.movie_id
    WHERE m.release_year > 2010 AND r.rating = 5;
END //

DELIMITER ;

DELIMITER  //

CREATE PROCEDURE Top5RentedMovies()
BEGIN
    SELECT m.title, COUNT(*) AS rent_count
    FROM rentals r
    JOIN movies m ON r.movie_id = m.movie_id
    GROUP BY m.title
    ORDER BY rent_count DESC
    LIMIT 5;
END //

DELIMITER  ;

DELIMITER //

CREATE PROCEDURE TotalRevenue()
BEGIN
    SELECT SUM(amount) AS total_revenue FROM payments;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE AvgRatingPerMovie()
BEGIN
    SELECT m.title, AVG(r.rating) AS avg_rating
    FROM movie_reviews r
    JOIN movies m ON r.movie_id = m.movie_id
    GROUP BY m.title
    ORDER BY avg_rating DESC;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE CustomersOver100()
BEGIN
    SELECT c.name, SUM(p.amount) AS total_paid
    FROM customers c
    JOIN rentals r ON c.customer_id = r.customer_id
    JOIN payments p ON r.rental_id = p.rental_id
    GROUP BY c.name
    HAVING total_paid > 100;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE LateFeeCountPerCustomer()
BEGIN
    SELECT c.name, COUNT(l.fee_id) AS late_fees
    FROM customers c
    JOIN rentals r ON c.customer_id = r.customer_id
    JOIN late_fees l ON r.rental_id = l.rental_id
    WHERE l.days_late > 0
    GROUP BY c.name;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE MostPopularGenre()
BEGIN
    SELECT g.name, COUNT(*) AS rentals
    FROM rentals r
    JOIN movies m ON r.movie_id = m.movie_id
    JOIN genres g ON m.genre_id = g.genre_id
    GROUP BY g.name
    ORDER BY rentals DESC
    LIMIT 1;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE RentalHistoryVishal()
BEGIN
    SELECT m.title, r.rental_date, r.return_date, r.actual_return_date
    FROM rentals r
    JOIN customers c ON r.customer_id = c.customer_id
    JOIN movies m ON r.movie_id = m.movie_id
    WHERE c.name = 'Vishal';
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE MoviesNoReviews()
BEGIN
    SELECT m.title
    FROM movies m
    LEFT JOIN movie_reviews r ON m.movie_id = r.movie_id
    WHERE r.review_id IS NULL;
END //

DELIMITER ;

DELIMITER  //

CREATE PROCEDURE RepeatedRentals()
BEGIN
    SELECT c.name, m.title, COUNT(*) AS rental_count
    FROM rentals r
    JOIN customers c ON r.customer_id = c.customer_id
    JOIN movies m ON r.movie_id = m.movie_id
    GROUP BY c.name, m.title
    HAVING rental_count > 1;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE CurrentlyRentedMovies()
BEGIN
    SELECT c.name, m.title, r.rental_date
    FROM rentals r
    JOIN customers c ON r.customer_id = c.customer_id
    JOIN movies m ON r.movie_id = m.movie_id
    WHERE r.actual_return_date IS NULL;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE CustomersMostLateReturns()
BEGIN
    SELECT c.name, COUNT(*) AS late_returns
    FROM rentals r
    JOIN customers c ON r.customer_id = c.customer_id
    WHERE r.actual_return_date > r.return_date
    GROUP BY c.name
    ORDER BY late_returns DESC;
END // 

DELIMITER ;

DELIMITER //

CREATE PROCEDURE RentalsBetweenDates()
BEGIN
    SELECT c.name, m.title, r.rental_date
    FROM rentals r
    JOIN customers c ON r.customer_id = c.customer_id
    JOIN movies m ON r.movie_id = m.movie_id
    WHERE r.rental_date BETWEEN '2025-06-10' AND '2025-06-20';
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE LateReturns()
BEGIN
    SELECT c.name, m.title, r.return_date, r.actual_return_date
    FROM rentals r
    JOIN customers c ON r.customer_id = c.customer_id
    JOIN movies m ON r.movie_id = m.movie_id
    WHERE r.actual_return_date > r.return_date;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE PaidOnReturnDate()
BEGIN
    SELECT c.name, m.title, p.payment_date, r.actual_return_date
    FROM payments p
    JOIN rentals r ON p.rental_id = r.rental_id
    JOIN customers c ON r.customer_id = c.customer_id
    JOIN movies m ON r.movie_id = m.movie_id
    WHERE p.payment_date = r.actual_return_date;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE LatestReviewPerMovie()
BEGIN
    SELECT m.title, r.review_text, r.review_date
    FROM movie_reviews r
    JOIN movies m ON r.movie_id = m.movie_id
    WHERE (r.movie_id, r.review_date) IN (
        SELECT movie_id, MAX(review_date)
        FROM movie_reviews
        GROUP BY movie_id
    );
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE LateFeesOver15()
BEGIN
    SELECT c.name, m.title, l.fee_amount
    FROM late_fees l
    JOIN rentals r ON l.rental_id = r.rental_id
    JOIN customers c ON r.customer_id = c.customer_id
    JOIN movies m ON r.movie_id = m.movie_id
    WHERE l.fee_amount > 15;
END //

DELIMITER ;

call TamilMoviesAvailable();
call CustomersNeverRented();
call GenreMovieCount();
call HighRatedRecentMovie();
call Top5RentedMovies();
call TotalRevenue();
call AvgRatingPerMovie();
call CustomersOver100();
call LateFeeCountPerCustomer();
call MostPopularGenre(); 
call RentalHistoryVishal();
call MoviesNoReviews();
call RepeatedRentals();
call CurrentlyRentedMovies();
call CustomersMostLateReturns();
call RentalsBetweenDates();
call LateReturns();
call PaidOnReturnDate();
call LatestReviewPerMovie();
call LateFeesOver15();


