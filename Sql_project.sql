create database event_db;
drop database event_db;
use event_db;
truncate table organizers;
truncate table attendees;
truncate table venues;
truncate table events;
truncate table tickets;
CREATE TABLE events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL,
    event_date DATE NOT NULL,
    venue_id INT,
    organizer_id INT
);
CREATE TABLE attendees (
    attendee_id INT AUTO_INCREMENT PRIMARY KEY,
    attendee_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);
CREATE TABLE organizers (
    organizer_id INT AUTO_INCREMENT PRIMARY KEY,
    organizer_name VARCHAR(255) NOT NULL,
    contact_info VARCHAR(255)
);
CREATE TABLE venues (
    venue_id INT AUTO_INCREMENT PRIMARY KEY,
    venue_name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    capacity INT
);
CREATE TABLE tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT,
    attendee_id INT,
    purchase_date DATE
);
INSERT INTO events (event_name, event_date, venue_id, organizer_id) VALUES 
('Tech Conference 2024', '2024-05-20', 25, 1),('Music Festival', '2024-06-15', 5, 2),('Art Expo', '2024-07-10', 3, 3),('Food Carnival', '2024-08-12', 4, 4),('Science Fair', '2024-09-25', 5, 5),('Book Fair', '2024-10-05', 6, 1),('Dance Competition', '2024-11-18', 1, 2),('Tech Talk', '2024-12-22', 1, 3),('Film Festival', '2025-01-14', 8, 4),('Marathon', '2025-02-20', 9, 5),('Startup Summit', '2024-03-14', 1, 1),('Gaming Convention', '2024-04-10', 2, 2),('Photography Workshop', '2024-05-25', 3, 3),('Culinary Showdown', '2024-06-30', 4, 4),('Robotics Exhibition', '2024-07-20', 5, 5),('Literature Fest', '2024-08-15', 6, 1),('Music Awards', '2024-09-10', 7, 2),('Health and Fitness Expo', '2024-10-22', 8, 3),('Fashion Show', '2024-11-15', 9, 4),('Yoga Retreat', '2025-01-05', 10, 5);

INSERT INTO attendees (attendee_name, email) VALUES 
('Alice Johnson', 'alice@google.com'),('Bob Smith', 'bob@google.com'),('Carol White', 'carol@gmail.com'),('David Brown', 'david@gmail.com'),('Eva Green', 'eva@yahoo.com'),('Frank Moore', 'frank@yahoo.com'),('Grace Lee', 'grace@example.com'),('Henry Adams', 'henry@example.com'),('Ivy Wilson', 'ivy@google.com'),('Jack Black', 'jack@yahoo.com'),('Karen Hall', 'karen@gmail.com'),('Leo King', 'leo@example.com'),('Mona Clark', 'mona@example.com'),('Nancy Scott', 'nancy@example.com'),('Oscar Turner', 'oscar@example.com'),('Paul Young', 'paul@example.com'),('Quinn Hill', 'quinn@yahoo.com'),('Rachel Bell', 'rachel@gmail.com'),('Steve Cook', 'steve@example.com'),('Tina Price', 'tina@google.com');

INSERT INTO organizers (organizer_name, contact_info) VALUES 
('TechOrg', 'techorg@example.com'),('TechOrg',NULL),('MusicWorld', 'musicworld@example.com'),('ArtMasters', 'artmasters@example.com'),('Foodies', 'foodies@example.com'),('SciSociety', 'scisociety@example.com'),('BookLovers', 'booklovers@example.com'),('DanceUnion', 'danceunion@example.com'),('TechSpeakers', 'techspeakers@example.com'),('FilmFanatics', 'filmfanatics@example.com'),('MarathonGroup', 'marathongroup@example.com'),('StartupOrg', 'startuporg@example.com'),('GameWorld', 'gameworld@example.com'),('PhotoPros', 'photopros@example.com'),('CulinaryChampions', 'culinarychampions@example.com'),('RoboSociety', 'robosociety@example.com'),('LitFestInc', 'litfestinc@example.com'),('MusicStars', 'musicstars@example.com'),('HealthCon', 'healthcon@example.com'),('FashionHub', 'fashionhub@example.com'),('YogaLife', 'yogalife @example.com');

INSERT INTO venues (venue_name, location, capacity) VALUES 
('Convention Center', '123 Main St', 500),('Outdoor Arena', '456 Elm St', 1000),('Art Gallery', '789 Oak St', 200),('Food Plaza', '135 Maple St', 300),('Science Park', '246 Birch St', 400),('Library Hall', '357 Pine St', 150),('Dance Studio', '468 Cedar St', 250),('Cinema Hall', '579 Spruce St', 600),('City Park', '680 Ash St', 800),('Downtown Track', '791 Willow St', 1000),('Tech Hall', '111 Tech Ave', 500),('Gaming Hub', '222 Game St', 750),('Photo Arena', '333 Lens St', 150),('Culinary Space', '444 Chef Rd', 350),('Robo Center', '555 Robo Ln', 450),('Literary Space', '666 Book Blvd', 200),('Music Dome', '777 Melody Dr', 700),('Health Arena', '888 Fit Way', 500),('Fashion Plaza', '999 Style St', 300),('Yoga Center', '000 Zen Ln', 100);

INSERT INTO tickets (event_id, attendee_id, purchase_date) VALUES 
(1, 1, '2024-01-01'),(1, 2, '2024-01-02'),(1, 3, '2024-01-03'),(4, 4, '2024-01-04'),(5, 5, '2024-01-05'),(6, 6, '2024-01-06'),(7, 7, '2024-01-07'),(8, 8, '2024-01-08'),(9, 9, '2024-01-09'),(10, 10, '2024-01-10'),(11, 11, '2024-01-11'),(12, 12, '2024-01-12'),(13, 13, '2024-01-13'),(14, 14, '2024-01-14'),(15, 15, '2024-01-15'),(16, 16, '2024-01-16'),(17, 17, '2024-01-17'),(18, 18, '2024-01-18'),(19, 19, '2024-01-19'),(20, 20, '2024-01-20');

select * from events;
select * from attendees;
select * from organizers;
select * from venues;
select * from  tickets;
UPDATE events SET event_date = '2024-06-20' WHERE event_id = 1;
UPDATE attendees SET email = 'new_email@example.com'WHERE attendee_name = 'Alice Johnson';
UPDATE venues SET capacity = 1200 WHERE venue_name = 'Convention Center' AND location = '123 Main St';
UPDATE tickets SET purchase_date = '2024-02-01' WHERE event_id = 1 OR attendee_id = 1;
UPDATE organizers SET contact_info = 'new_contact@example.com' WHERE organizer_name != 'TechOrg';
SELECT DISTINCT event_name FROM events;
SELECT * FROM venues ORDER BY capacity;
SELECT * FROM organizers ORDER BY organizer_name DESC;
SELECT * FROM organizers WHERE contact_info IS NULL;
SELECT * FROM tickets WHERE purchase_date IS NOT NULL;
DELETE FROM attendees WHERE email IS NULL;
SELECT * FROM events LIMIT 5;
SELECT * FROM tickets
WHERE event_id = 1 ORDER BY purchase_date DESC LIMIT 5;
SELECT * FROM venues WHERE capacity > 300 LIMIT 5;
SELECT MIN(purchase_date) AS first_purchase, MAX(purchase_date) AS last_purchase FROM tickets;
SELECT COUNT(*) AS tickets_purchased_recently FROM tickets WHERE purchase_date > '2024-01-15';
SELECT SUM(event_id) AS total_tickets_sold FROM tickets ;
SELECT AVG(capacity) AS average_capacity FROM venues;
SELECT * FROM attendees WHERE email LIKE '%gmail%';
SELECT * FROM tickets WHERE purchase_date LIKE '2024-02%';
SELECT * FROM organizers WHERE organizer_name LIKE 's%';
SELECT * FROM events WHERE event_name LIKE '_e%';
SELECT * FROM organizers WHERE organizer_name IN ('TechOrg', 'MusicWorld', 'ArtMasters');
SELECT event_id, event_name, event_date FROM events WHERE event_id NOT IN (1, 3, 5);
SELECT * FROM tickets WHERE purchase_date BETWEEN '2024-01-01' AND '2024-01-15';
SELECT * FROM tickets;
SELECT * FROM organizers WHERE organizer_name BETWEEN 'BookLovers' AND 'DanceUnion';
SELECT * FROM venues WHERE capacity NOT BETWEEN 300 AND 1000;
SELECT * FROM tickets WHERE purchase_date BETWEEN '2024-01-01' AND '2024-01-15' AND event_id IN (5,6,7);
SELECT e.event_name, v.venue_name FROM events e INNER JOIN venues v ON e.venue_id = v.venue_id;
SELECT e.event_name, v.venue_name FROM events e LEFT JOIN venues v ON e.venue_id = v.venue_id;
SELECT e.event_name, v.venue_name FROM events e RIGHT JOIN venues v ON e.venue_id = v.venue_id;
#SELECT e.event_name, v.venue_name FROM events e FULL OUTER JOIN venues v ON e.venue_id = v.venue_id;
SELECT o1.organizer_name AS organizer1, o2.organizer_name AS organizer2
FROM organizers o1 INNER JOIN organizers o2 ON o1.organizer_id <> o2.organizer_id ORDER BY o1.organizer_id;
SELECT organizer_id, COUNT(venue_id) AS event_count FROM events GROUP BY organizer_id;
SELECT event_id, COUNT(*) AS ticket_count FROM tickets GROUP BY event_id HAVING COUNT(*) > 2;

SELECT venue_name FROM venues v
WHERE EXISTS (
    SELECT event_name FROM events e WHERE e.venue_id=v.venue_id AND event_date>'2025-01-01'
);

SELECT venue_name FROM venues WHERE capacity > ANY (SELECT capacity FROM venues WHERE capacity < 300);

SELECT venue_name,capacity FROM venues WHERE capacity < 300;
SELECT venue_name,capacity FROM venues WHERE capacity > 200 ;
SELECT venue_name
FROM venues
WHERE capacity > ANY (SELECT capacity FROM venues WHERE capacity < 300);
SELECT venue_name, capacity FROM venues WHERE capacity > ANY (SELECT capacity FROM venues WHERE capacity = 300);
SELECT venue_name,capacity FROM venues WHERE capacity > ALL (SELECT capacity FROM venues WHERE capacity < 300);
SELECT venue_id, venue_name, capacity INTO new_venues FROM venues WHERE capacity > 300;
CREATE TABLE new_venues (
    venue_id INT,venue_name VARCHAR(255), capacity INT
);
INSERT INTO new_venues (venue_id, venue_name, capacity)
SELECT venue_id, venue_name, capacity FROM venues WHERE capacity > 300;
SELECT * FROM new_venues;
SELECT event_name, event_date,
    CASE 
        WHEN event_date < CURDATE() THEN 'Past'
        WHEN event_date = CURDATE() THEN 'Today'
        ELSE 'Upcoming'
    END AS event_status FROM events;
SELECT organizer_name, IFNULL(contact_info, 'N/A') AS contact_info FROM organizers;
SELECT organizer_name, ISNULL(contact_info) AS is_contact_info_null FROM organizers;
SELECT organizer_name FROM organizers WHERE ISNULL(contact_info);
SELECT organizer_name, COALESCE(contact_info, 'N/A') AS contact_info FROM organizers;
# return an alternative value when an expression is NULL
-- select * from organizers;
-- ARITHMETIC OPERATORS
SELECT ticket_id, ticket_id + 10 AS new_ticket_id FROM tickets;
SELECT ticket_id, ticket_id - 1 AS previous_ticket_id FROM tickets;
SELECT ticket_id, ticket_id * 2 AS double_ticket_id FROM tickets;
SELECT ticket_id, ticket_id / 2 AS half_ticket_id FROM tickets;
SELECT ticket_id, ticket_id % 3 AS remainder FROM tickets;
SELECT ticket_id, ticket_id & 1 AS bitwise_and FROM tickets;
SELECT ticket_id, ticket_id | 1 AS bitwise_or FROM tickets;
SELECT ticket_id, ticket_id ^ 1 AS bitwise_xor FROM tickets;
SELECT ticket_id, ~ticket_id AS bitwise_not FROM tickets;
ALTER TABLE tickets ADD COLUMN ticket_price DECIMAL(10,2);
ALTER TABLE tickets DROP COLUMN ticket_price;
ALTER TABLE tickets DROP COLUMN price;
SELECT * FROM tickets;
ALTER TABLE tickets MODIFY COLUMN ticket_price INT;
ALTER TABLE tickets RENAME COLUMN ticket_price TO price;
ALTER TABLE tickets ADD CONSTRAINT fk_attendee FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id);
INSERT INTO events (event_name, event_date, venue_id, organizer_id)
VALUES ('New Event', '2024-10-10', 5, 1);  -- Success: organizer_id 1 exists
INSERT INTO events (event_name, event_date, venue_id, organizer_id)
VALUES ('Invalid Event', '2024-11-11', 7, 99);  -- Failure: organizer_id 99 not exists
SELECT * FROM organizers;
SELECT * FROM venues;
SELECT * FROM venues WHERE capacity < 500;
UPDATE venues SET capacity = 500 WHERE capacity < 500;
DELETE FROM venues WHERE capacity < 500;
ALTER TABLE venues ADD CONSTRAINT CHK_venues CHECK (capacity >= 500);
ALTER TABLE venues DROP CONSTRAINT CHK_venues;

ALTER TABLE attendees ADD COLUMN status VARCHAR(20) DEFAULT 'Active';
SELECT * FROM attendees;
CREATE INDEX idx_attendee_name ON attendees(attendee_name);
SHOW INDEX FROM attendees;
CREATE VIEW event_details AS
SELECT e.event_name, e.event_date, v.venue_name, o.organizer_name
FROM events e JOIN venues v ON e.venue_id = v.venue_id JOIN organizers o ON e.organizer_id = o.organizer_id;
SELECT * FROM event_details;
DROP VIEW event_details;
SELECT attendee_name, LENGTH(attendee_name) AS name_length FROM attendees;
SELECT event_id, CONCAT(event_name, ' on ', event_date, ' at ', venue_id) AS full_details FROM events;
SELECT email, SUBSTRING(email, INSTR(email, '@') + 1) AS email_domain FROM attendees;
SELECT event_name, event_date, ADDDATE(event_date, INTERVAL 5 DAY) AS new_date FROM events;
-- Insert Current Date and Time into events Table
INSERT INTO events (event_name, event_date, venue_id, organizer_id) VALUES ('Live Event', CURDATE(), 1, 2);
SELECT * FROM events;
DELETE FROM events WHERE event_id=44; 
SELECT CURRENT_USER();
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'user_password123';
GRANT ALL PRIVILEGES ON database_name.* TO 'new_user'@'localhost';
REVOKE privilege_type ON database_name. FROM 'username'@'host';
SELECT current_timestamp();
SELECT localtimestamp();



