-- Creating Database
create database customers
GO

-- Using Database
use customers
GO

create table Customers (
    CustomerID int primary key identity(1,1),
    CustomerName nvarchar(100),
    Email nvarchar(100),
    Phone nvarchar(15)
);
GO

create table FeedbackCategories (
    CategoryID int primary key identity(1,1),
    CategoryName nvarchar(100)
);
GO

CREATE TABLE FeedbackForms (
    FormID int primary key identity(1,1),
    CustomerID int,
    FormDate datetime2,
    foreign key (CustomerID) references Customers(CustomerID)
);
GO

create table Feedback (
    FeedbackID int primary key identity(1,1),
    FormID int,
    CategoryID int,
    Rating int check (Rating >= 1 AND Rating <= 5), -- Rating between 1 and 5
    Comments text,
    foreign key (FormID) references FeedbackForms(FormID),
    foreign key (CategoryID) references FeedbackCategories(CategoryID)
);
GO

-- Insert customers data
INSERT INTO Customers (CustomerName, Email, Phone)
VALUES
('John Doe', 'john.doe@example.com', '555-123-4567'),
('Jane Smith', 'jane.smith@example.com', '555-234-5678'),
('Alice Johnson', 'alice.johnson@example.com', '555-345-6789'),
('Bob Brown', 'bob.brown@example.com', '555-456-7890'),
('Mary Davis', 'mary.davis@example.com', '555-567-8901'),
('Michael Miller', 'michael.miller@example.com', '555-678-9012'),
('Emma Wilson', 'emma.wilson@example.com', '555-789-0123'),
('David Moore', 'david.moore@example.com', '555-890-1234'),
('Sophia Taylor', 'sophia.taylor@example.com', '555-901-2345'),
('Daniel White', 'daniel.white@example.com', '555-012-3456'),
('Mia Harris', 'mia.harris@example.com', '555-123-4567'),
('James Thompson', 'james.thompson@example.com', '555-234-5678'),
('Olivia Lee', 'olivia.lee@example.com', '555-345-6789'),
('Benjamin Martin', 'benjamin.martin@example.com', '555-456-7890'),
('Isabella Jackson', 'isabella.jackson@example.com', '555-567-8901'),
('Lucas Perez', 'lucas.perez@example.com', '555-678-9012'),
('Amelia Gonzalez', 'amelia.gonzalez@example.com', '555-789-0123'),
('Ethan Lewis', 'ethan.lewis@example.com', '555-890-1234'),
('Charlotte Clark', 'charlotte.clark@example.com', '555-901-2345'),
('Liam Young', 'liam.young@example.com', '555-012-3456'),
('Chloe Nelson', 'chloe.nelson@example.com', '555-111-1111'),
('Jack King', 'jack.king@example.com', '555-222-2222'),
('Ava Scott', 'ava.scott@example.com', '555-333-3333'),
('Logan Lee', 'logan.lee@example.com', '555-444-4444'),
('Zoe Martinez', 'zoe.martinez@example.com', '555-555-5555'),
('Jacob Wilson', 'jacob.wilson@example.com', '555-666-6666'),
('Emily Thomas', 'emily.thomas@example.com', '555-777-7777'),
('Evan Rivera', 'evan.rivera@example.com', '555-888-8888'),
('Hannah Robinson', 'hannah.robinson@example.com', '555-999-9999'),
('Noah Moore', 'noah.moore@example.com', '555-111-2222'),
('Ella Foster', 'ella.foster@example.com', '555-222-3333'),
('Aiden Collins', 'aiden.collins@example.com', '555-333-4444'),
('Abigail Jenkins', 'abigail.jenkins@example.com', '555-444-5555'),
('Samuel Murphy', 'samuel.murphy@example.com', '555-555-6666'),
('Avery Hughes', 'avery.hughes@example.com', '555-666-7777'),
('Carter Bryant', 'carter.bryant@example.com', '555-777-8888'),
('Sophia Moore', 'sophia.moore@example.com', '555-888-9999'),
('Elijah Lopez', 'elijah.lopez@example.com', '555-999-0000'),
('Harper Adams', 'harper.adams@example.com', '555-000-1111'),
('Henry Rivera', 'henry.rivera@example.com', '555-111-2222');
GO

-- Insert categories into FeedbackCategories
INSERT INTO FeedbackCategories (CategoryName)
VALUES
('Product Quality'),
('Customer Service'),
('Delivery Speed');
GO

-- Insert feedback forms
INSERT INTO FeedbackForms (CustomerID, FormDate)
VALUES 
(1, '2024-08-01'), (2, '2024-08-02'), (3, '2024-08-03'), (4, '2024-08-04'), (5, '2024-08-05'),
(6, '2024-08-06'), (7, '2024-08-07'), (8, '2024-08-08'), (9, '2024-08-09'), (10, '2024-08-10'),
(11, '2024-08-11'), (12, '2024-08-12'), (13, '2024-08-13'), (14, '2024-08-14'), (15, '2024-08-15'),
(16, '2024-08-16'), (17, '2024-08-17'), (18, '2024-08-18'), (19, '2024-08-19'), (20, '2024-08-20'),
(1, '2024-08-21'), (2, '2024-08-22'), (3, '2024-08-23'), (4, '2024-08-24'), (5, '2024-08-25'),
(6, '2024-08-26'), (7, '2024-08-27'), (8, '2024-08-28'), (9, '2024-08-29'), (10, '2024-08-30'),
(11, '2024-09-01'), (12, '2024-09-02'), (13, '2024-09-03'), (14, '2024-09-04'), (15, '2024-09-05'),
(16, '2024-09-06'), (17, '2024-09-07'), (18, '2024-09-08'), (19, '2024-09-09'), (20, '2024-09-10'),
(1, '2024-09-11'), (2, '2024-09-12'), (3, '2024-09-13'), (4, '2024-09-14'), (5, '2024-09-15'),
(6, '2024-09-16'), (7, '2024-09-17'), (8, '2024-09-18'), (9, '2024-09-19'), (10, '2024-09-20'),
(11, '2024-09-21'), (12, '2024-09-22'), (13, '2024-09-23'), (14, '2024-09-24'), (15, '2024-09-25'),
(16, '2024-09-26'), (17, '2024-09-27'), (18, '2024-09-28'), (19, '2024-09-29'), (20, '2024-09-30'),
(1, '2024-10-01'), (2, '2024-10-02'), (3, '2024-10-03'), (4, '2024-10-04'), (5, '2024-10-05'),
(6, '2024-10-06'), (7, '2024-10-07'), (8, '2024-10-08'), (9, '2024-10-09'), (10, '2024-10-10'),
(11, '2024-10-11'), (12, '2024-10-12'), (13, '2024-10-13'), (14, '2024-10-14'), (15, '2024-10-15'),
(16, '2024-10-16'), (17, '2024-10-17'), (18, '2024-10-18'), (19, '2024-10-19'), (20, '2024-10-20');
GO

-- Insert feedback records
INSERT INTO Feedback (FormID, CategoryID, Rating, Comments)
VALUES 
(1, 1, 5, 'The product quality is excellent, I am very satisfied.'),
(2, 2, 4, 'Customer service was good, but there was a slight delay.'),
(3, 3, 3, 'Delivery took longer than expected, but arrived safely.'),
(4, 1, 4, 'Good product quality, but there’s room for improvement.'),
(5, 2, 2, 'Customer service was not responsive enough.'),
(6, 3, 5, 'Delivery was fast, and the package arrived in perfect condition.'),
(7, 1, 4, 'I am happy with the product, but there’s minor room for improvement.'),
(8, 2, 3, 'The service was okay, but could have been better.'),
(9, 3, 1, 'The delivery was very late, and the package was damaged.'),
(10, 1, 5, 'Fantastic product, really exceeded my expectations.'),
(11, 2, 5, 'Customer service was exceptional and very helpful.'),
(12, 3, 2, 'Delivery took far too long, and the product was damaged.'),
(13, 1, 4, 'Satisfied with the product quality, though there could be improvements.'),
(14, 2, 4, 'Customer service was responsive but not proactive.'),
(15, 3, 3, 'The delivery speed was average, not too fast, not too slow.'),
(16, 1, 5, 'Amazing product quality, really pleased with it.'),
(17, 2, 1, 'Very poor customer service, no help at all.'),
(18, 3, 4, 'The delivery was good, but there was a minor delay.'),
(19, 1, 3, 'The product is okay but could be improved.'),
(20, 2, 2, 'Customer service was slow and not very helpful.'),
(1, 3, 5, 'The delivery was perfect and on time.'),
(2, 1, 4, 'Good product, but the packaging was a little damaged.'),
(3, 2, 4, 'Customer service was good, they resolved my issue quickly.'),
(4, 3, 3, 'Delivery time was decent, but not fast enough.'),
(5, 1, 5, 'The product quality is outstanding, will buy again.'),
(6, 2, 3, 'Service was average, not too bad but not great.'),
(7, 3, 1, 'Delivery was late and the product arrived damaged.'),
(8, 1, 5, 'The product is amazing, I’m very satisfied.'),
(9, 2, 2, 'Customer service needs improvement, not helpful.'),
(10, 3, 4, 'The delivery was good, only a small delay.'),
(11, 1, 5, 'Excellent product quality, highly recommended.'),
(12, 2, 4, 'Service was good, but there’s room for improvement.'),
(13, 3, 3, 'The delivery was acceptable, not too fast or slow.'),
(14, 1, 5, 'I am very happy with the product quality.'),
(15, 2, 1, 'Customer service was terrible, no support provided.'),
(16, 3, 4, 'The delivery was good, just slightly delayed.'),
(17, 1, 3, 'The product quality was average.'),
(18, 2, 2, 'Customer service took too long to respond.'),
(19, 3, 1, 'Delivery was extremely late and the product was damaged.'),
(20, 1, 4, 'Good product, but packaging needs improvement.'),
(1, 2, 5, 'Customer service was excellent and very responsive.'),
(2, 3, 3, 'The delivery time was okay, but the packaging was damaged.'),
(3, 1, 4, 'Product quality is good, but there’s room for improvement.'),
(4, 2, 2, 'Customer service was unhelpful and slow to respond.'),
(5, 3, 5, 'The delivery was fast and the product arrived in perfect condition.'),
(6, 1, 4, 'Satisfied with the product, but not exceptional.'),
(7, 2, 3, 'Service was okay but could be better.'),
(8, 3, 1, 'Delivery was very slow and the product was damaged.'),
(9, 1, 5, 'The product quality is excellent, exceeded my expectations.'),
(10, 2, 4, 'Customer service was responsive and helpful.'),
(11, 3, 3, 'Delivery was slow, but the product arrived in good condition.'),
(12, 1, 4, 'The product quality is good, but not great.'),
(13, 2, 2, 'Customer service was slow and unhelpful.'),
(14, 3, 5, 'The delivery was fast and the product was perfect.'),
(15, 1, 5, 'I am very happy with the product quality, will purchase again.'),
(16, 2, 4, 'Service was good but not outstanding.'),
(17, 3, 3, 'Delivery was average, no major issues.'),
(18, 1, 4, 'Satisfied with the product, but there’s room for improvement.'),
(19, 2, 2, 'Customer service was not helpful at all.'),
(20, 3, 5, 'The delivery was quick and the product arrived perfectly.');


-- Queries for feedback extraction and analysis... 

 -- Overall Customer Satisfaction (Get the average rating from all feedback entries) :
 SELECT AVG(Rating) AS AverageRating
FROM Feedback;

--  Feedback Count by Category (Count the number of feedback entries for each category) :

SELECT fc.CategoryName, COUNT(f.FeedbackID) AS FeedbackCount
FROM Feedback f
JOIN FeedbackCategories fc ON f.CategoryID = fc.CategoryID
GROUP BY fc.CategoryName;


 --  Average Rating by Category (Calculate the average rating for each feedback category) :
 SELECT fc.CategoryName, AVG(f.Rating) AS AverageRating
FROM Feedback f
JOIN FeedbackCategories fc ON f.CategoryID = fc.CategoryID
GROUP BY fc.CategoryName;

-- Customer Feedback Summary (Get a summary report of feedback ratings from each customer):

SELECT c.CustomerName, AVG(f.Rating) AS AverageRating, COUNT(f.FeedbackID) AS FeedbackCount
FROM Customers c
JOIN FeedbackForms ff ON c.CustomerID = ff.CustomerID
JOIN Feedback f ON ff.FormID = f.FormID
GROUP BY c.CustomerName;

-- Detailed Feedback Records (Retrieve all feedback records along with customer names and category names):

SELECT c.CustomerName, fc.CategoryName, f.Rating, f.Comments, ff.FormDate
FROM Feedback f
JOIN FeedbackForms ff ON f.FormID = ff.FormID
JOIN Customers c ON ff.CustomerID = c.CustomerID
JOIN FeedbackCategories fc ON f.CategoryID = fc.CategoryID
ORDER BY ff.FormDate DESC;


-- Feedback Trends Over Time (Average Ratings Daily)

SELECT CAST(f.FormDate AS DATE) AS FeedbackDate,AVG(fb.Rating) AS AverageRating
FROM Feedback fb
JOIN FeedbackForms f ON fb.FormID = f.FormID
GROUP BY CAST(f.FormDate AS DATE)
ORDER BY FeedbackDate;

-- Most Common Feedback Comments (Frequently Mentioned Keywords)

SELECT 
    SUM(CASE WHEN Comments LIKE '%improvement%' THEN 1 ELSE 0 END) AS ImprovementCount,
    SUM(CASE WHEN Comments LIKE '%slow%' THEN 1 ELSE 0 END) AS SlowCount,
    SUM(CASE WHEN Comments LIKE '%support%' THEN 1 ELSE 0 END) AS SupportCount,
	SUM(CASE WHEN Comments LIKE '%Good%' THEN 1 ELSE 0 END) AS GoodCount
FROM Feedback;

-- Feedback Ratings Distribution (Count of Each Rating from 1 to 5)

SELECT Rating, COUNT(*) AS RatingCount
FROM Feedback
GROUP BY Rating
ORDER BY Rating;

-- Customers with Feedback Issues (Low Ratings of 1 or 2)

SELECT c.CustomerID, c.CustomerName, c.Email, fb.Rating
FROM Feedback fb
JOIN FeedbackForms ff ON fb.FormID = ff.FormID
JOIN Customers c ON ff.CustomerID = c.CustomerID
WHERE fb.Rating IN (1, 2);

--  Feedback Improvement Suggestions (Count of Comments Suggesting Improvements)

SELECT COUNT(*) AS ImprovementSuggestions
FROM Feedback
WHERE Comments LIKE '%improve%' 
   OR Comments LIKE '%better%' 
   OR Comments LIKE '%suggest%';

-- Top 5 Customers by Feedback Count and Average Rating

SELECT TOP 5 c.CustomerID, c.CustomerName, c.Email, COUNT(fb.FeedbackID) AS FeedbackCount, AVG(fb.Rating) AS AverageRating
FROM Feedback fb
JOIN FeedbackForms ff ON fb.FormID = ff.FormID
JOIN Customers c ON ff.CustomerID = c.CustomerID
GROUP BY c.CustomerID, c.CustomerName, c.Email
ORDER BY FeedbackCount DESC;

--
--Creating DW
create database Customers_DW
GO

--Using DW
use Customers_DW
GO

--Create Dimension tables
-- Create Customer Dimension
create table DimCustomer (
    CustomerID int primary key,
    [name] nvarchar(100),
     Email nvarchar(100),
    Phone nvarchar(15)

);
GO

-- Create Feedback Category Dimension
CREATE TABLE DimFeedbackCategory (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);
GO

-- Create Feedback Form Dimension
create table DimFeedbackForm (
    FeedbackFormID int primary key,
    FormName nvarchar(50)
);
GO

-- Create Date Dimension
create table DimDate (
    DateID int primary key,
    [Day] int,
    [Month] int,
    [Year] int
);
GO

--Create Fact Table
-- Create Feedback Fact Table
create table FactFeedback (
    FeedbackID int primary key,
    CustomerID int,
    DateID int,
    FeedbackText text,
    CategoryID int,
    FeedbackFormID int,
    foreign key (CustomerID) references DimCustomer(CustomerID),
    foreign key (DateID) references DimDate(DateID),
    foreign key (CategoryID) references DimFeedbackCategory(CategoryID),
    foreign key (FeedbackFormID) references DimFeedbackForm(FeedbackFormID)
);
GO
