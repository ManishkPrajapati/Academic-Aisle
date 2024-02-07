DROP DATABASE IF EXISTS AcademicAisle;
CREATE DATABASE AcademicAisle;
USE AcademicAisle;

DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Administrator;
DROP TABLE IF EXISTS Vendor;
DROP TABLE IF EXISTS Login;
DROP TABLE IF EXISTS Message;
DROP TABLE IF EXISTS Advertisement;
DROP TABLE IF EXISTS Area;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Sub_Category;
DROP TABLE IF EXISTS Coaching_Institutes;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Hobbies; 
DROP TABLE IF EXISTS Academic_Equipments;
DROP TABLE IF EXISTS Service;
DROP TABLE IF EXISTS Electronics;

CREATE TABLE Area(
    Id int PRIMARY KEY AUTO_INCREMENT,
    Area varchar(20),
    City varchar(15),
    State varchar(15),
    Country varchar(10)
);

CREATE TABLE Users(
    Id int AUTO_INCREMENT PRIMARY KEY,
    Area_id int,
    First_name varchar(10),
    Last_name varchar(10),
    Phone varchar(10),
    Email varchar(30),
    Password varchar(10),
    FOREIGN KEY(Area_id) REFERENCES Area(Id)
);

CREATE TABLE Administrator(
    Id int AUTO_INCREMENT PRIMARY KEY,
    First_name varchar(10),
    Last_name varchar(10),
    Phone varchar(15),
    Email varchar(30)
);

CREATE TABLE Vendor(
    Id int AUTO_INCREMENT PRIMARY KEY,
    Area_id int,
    Name varchar(50),
    Phone varchar(15),
    Email varchar(30),
    Password varchar(20),
    FOREIGN KEY(Area_id) REFERENCES Area(Id)
);

CREATE TABLE Login(
    Id int AUTO_INCREMENT PRIMARY KEY,
    User_id int,
    User_name varchar(10),
    Password varchar(10),
    EmailId varchar(30),
    Phone varchar(15),
    FOREIGN KEY(User_id) REFERENCES Users(Id)
);

CREATE TABLE Message(
    Sender_id int,
    Receiver_id int,
    Sender_Message varchar(3000),
    Receiver_Message varchar(3000),
    Timestamp TIMESTAMP,
    FOREIGN KEY(Sender_id) REFERENCES Users(Id),
    FOREIGN KEY(Receiver_id) REFERENCES Users(Id)
);

CREATE TABLE Category(
    Id int PRIMARY KEY AUTO_INCREMENT,
    C_Name varchar(30)
);

CREATE TABLE Advertisement(
    Id int PRIMARY KEY AUTO_INCREMENT,
    User_id int,
    Vendor_id int DEFAULT NULL,
    Category_Id int,
    Verification_Status varchar(10),
    Adv_title varchar(40),
    Post_date DATE,
    Image text,
    P_Description varchar(70),
    Is_active varchar(10),
    P_Condition varchar(30),
    Price float,
    FOREIGN KEY(User_id) REFERENCES Users(Id),
    FOREIGN KEY(Vendor_id) REFERENCES Vendor(Id),
    FOREIGN KEY(Category_id) REFERENCES Category(Id)
);

CREATE TABLE Sub_Category(
    Id int PRIMARY KEY AUTO_INCREMENT,
    SC_Name varchar(20)
);

CREATE TABLE Coaching_Institutes(
    Id int PRIMARY KEY AUTO_INCREMENT,
    Name varchar(30),
    City varchar(10),
    Phone varchar(10),
    Description TEXT
);

CREATE TABLE Academic_Equipments(
    Id int PRIMARY KEY AUTO_INCREMENT,
    Category_Id int,
    Name varchar(30),
    Manufacturer varchar(50),
    Year_of_Purchase INT,
    Price varchar(10),
    Conditions TEXT,
    FOREIGN KEY(Category_id) REFERENCES Category(Id)
);

CREATE TABLE Books(
    Id int PRIMARY KEY AUTO_INCREMENT,
    Category_Id int,
    Name varchar(50),
    Author varchar(20),
    Year_Of_Publication INT,
    Price varchar(10),
    Conditions TEXT,
    FOREIGN KEY(Category_id) REFERENCES Category(Id)
);

CREATE TABLE Service(
    Id int PRIMARY KEY AUTO_INCREMENT,
    Name varchar(40),
    City varchar(10),
    Phone varchar(10),
    Description TEXT,
    Ratings DOUBLE,
    Reviews TEXT
);

CREATE TABLE Electronics(
    Id int PRIMARY KEY AUTO_INCREMENT, 
    Name varchar(50),
    Manufacturer varchar(20),
    Year_of_Purchase INT,
    Price varchar(10),
    Conditions TEXT
);




INSERT INTO area VALUES (1, 'Koregaon Park', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (2, 'Vashi', 'Navi Mumbai', 'Maharashtra', 'India');
INSERT INTO area VALUES (3, 'Dhantoli', 'Nagpur', 'Maharashtra', 'India');
INSERT INTO area VALUES (4, 'Aundh', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (5, 'Mulund West', 'Mumbai', 'Maharashtra', 'India');
INSERT INTO area VALUES (6, 'Kalyani Nagar', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (7, 'Worli', 'Mumbai', 'Maharashtra', 'India');
INSERT INTO area VALUES (8, 'Balewadi', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (9, 'Shivaji Nagar', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (10, 'Panchavati', 'Nashik', 'Maharashtra', 'India');
INSERT INTO area VALUES (11, 'Viman Nagar', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (12, 'Mira Road', 'Mumbai', 'Maharashtra', 'India');
INSERT INTO area VALUES (13, 'Sadashiv Peth', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (14, 'Juhu', 'Mumbai', 'Maharashtra', 'India');
INSERT INTO area VALUES (15, 'Hinjewadi', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (16, 'Dombivli East', 'Thane', 'Maharashtra', 'India');
INSERT INTO area VALUES (17, 'Bhosari', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (18, 'Pimpri', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (19, 'Kandivali West', 'Mumbai', 'Maharashtra', 'India');
INSERT INTO area VALUES (20, 'Hadapsar', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (21, 'Ulhasnagar', 'Thane', 'Maharashtra', 'India');
INSERT INTO area VALUES (22, 'Kothrud', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (23, 'Girgaon', 'Mumbai', 'Maharashtra', 'India');
INSERT INTO area VALUES (24, 'Indira Nagar', 'Nashik', 'Maharashtra', 'India');
INSERT INTO area VALUES (25, 'Dadar West', 'Mumbai', 'Maharashtra', 'India');
INSERT INTO area VALUES (26, 'Magarpatta City', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (27, 'Nerul', 'Navi Mumbai', 'Maharashtra', 'India');
INSERT INTO area VALUES (28, 'Vile Parle', 'Mumbai', 'Maharashtra', 'India');
INSERT INTO area VALUES (29, 'Wakad', 'Pune', 'Maharashtra', 'India');
INSERT INTO area VALUES (30, 'Kharadi', 'Pune', 'Maharashtra', 'India');






INSERT INTO users VALUES (1, 2, 'Amit', 'Sharma', '9876543210', 'amit.sharma@example.com', 'passwo123');
INSERT INTO users VALUES (2, 4, 'Pooja', 'Patel', '8765432109', 'pooja.patel@example.com', 'secuPass');
INSERT INTO users VALUES (3, 6, 'Rahul', 'Gupta', '7654321098', 'rahul.gupta@example.com', 'pass1word');
INSERT INTO users VALUES (4, 8, 'Anita', 'Verma', '7543210987', 'anita.verma@example.com', 'stroPass');
INSERT INTO users VALUES (5, 10, 'Vivek', 'Singh', '7432109876', 'vivek.singh@example.com', 'userss12');
INSERT INTO users VALUES (6, 12,'Priya', 'Rajput', '7321098765', 'priya.rajput@example.com', 'sece123');
INSERT INTO users VALUES (7, 14, 'Ravi', 'Yadav', '7210987654', 'ravi.yadav@example.com', 'passwd45');
INSERT INTO users VALUES (8, 16, 'Neha', 'Shah', '8109876543', 'neha.shah@example.com', 'pas89wor');
INSERT INTO users VALUES (9, 18, 'Raj', 'Malhotra', '8098765432', 'raj.malhotra@example.com', 'newss123');
INSERT INTO users VALUES (10, 20, 'Sneha', 'Bansal', '9876543210', 'sneha.bansal@example.com', 'pa45word');
INSERT INTO users VALUES (11, 1,'Arun', 'Chopra', '8765432109', 'arun.chopra@example.com', 'sereP123');
INSERT INTO users VALUES (12, 3, 'Simran', 'Mehra', '7654321098', 'simran.mehra@example.com', 'pas8word');
INSERT INTO users VALUES (13, 5, 'Alok', 'Agarwal', '8543210987', 'alok.agarwal@example.com', 'str7Pass');
INSERT INTO users VALUES (14, 7, 'Kavita', 'Khanna', '8432109876', 'kavita.khanna@example.com', 'u7Pass');
INSERT INTO users VALUES (15, 9, 'Rajeev', 'Choudhary', '8321098765', 'rajeev.choudhary@example.com', 'sere7823');
INSERT INTO users VALUES (16, 11, 'Sakshi', 'Mittal', '8210987654', 'sakshi.mittal@example.com', '789psword');
INSERT INTO users VALUES (17, 13, 'Rajesh', 'Srivastava', '8109876543', 'rajesh.srivastava@example.com', 'new7Pas');
INSERT INTO users VALUES (18, 15, 'Asha', 'Bhatia', '8098765432', 'asha.bhatia@example.com', '79usPass');
INSERT INTO users VALUES (19, 17, 'Rakesh', 'Mangal', '9876543210', 'rakesh.mangal@example.com', '789psWor');
INSERT INTO users VALUES (20, 19, 'Nandini', 'Joshi', '8765432109', 'nandini.joshi@example.com', '789secure');
INSERT INTO users VALUES (21, 21, 'Varun', 'Nayar', '7654321098', 'varun.nayar@example.com', '78assSec');
INSERT INTO users VALUES (22, 23, 'Anjali', 'Iyer', '9543210987', 'anjali.iyer@example.com', 'secreP789');
INSERT INTO users VALUES (23, 25, 'Rahul', 'Reddy', '9432109876', 'rahul.reddy@example.com', '78pasword');
INSERT INTO users VALUES (24, 27, 'Jyoti', 'Shukla', '9321098765', 'jyoti.shukla@example.com', 'new89Pass');
INSERT INTO users VALUES (25, 29, 'Prateek', 'Saxena', '9210987654', 'prateek.saxena@example.com', 'secure789');
INSERT INTO users VALUES (26, 22, 'Nisha', 'Kumar', '9109876543', 'nisha.kumar@example.com', '789PassUs');
INSERT INTO users VALUES (27, 24, 'Vinod', 'Rathore', '9098765432', 'vinod.rathore@example.com', '789Secure');
INSERT INTO users VALUES (28, 26, 'Seema', 'Gupta', '9876543210', 'seema.gupta@example.com', '789PassNew');
INSERT INTO users VALUES (29, 30, 'Amitabh', 'Pandey', '8765432109', 'amitabh.pandey@example.com', '789NewPass');
INSERT INTO users VALUES (30, 28, 'Shreya', 'Chawla', '7654321098', 'shreya.chawla@example.com', '789UserPas');







INSERT INTO vendor VALUES (1, 2, 'ABC Bookstore', '9234567890', 'abc@example.com', 'password12');
INSERT INTO vendor VALUES (2, 4, 'XYZ Educational Supplies', '9876543210', 'xyz@example.com', 'securess');
INSERT INTO vendor VALUES (3, 6, 'Maharashtra University Bookshop', '8765432109', 'unibookshop@example.com', 'pass1234');
INSERT INTO vendor VALUES (4, 8, 'Smart Learning Resources', '7654321098', 'smartlearning@example.com', 'learningp');
INSERT INTO vendor VALUES (5, 10, 'TechEd Books', '8543210987', 'techedbooks@example.com', 'techpass');
INSERT INTO vendor VALUES (6, 12, 'Scholarly Stationery', '7432109876', 'scholarly@example.com', 'statiory123');
INSERT INTO vendor VALUES (7, 14, 'Maharashtra Educational Mart', '7321098765', 'mahedu@example.com', 'mahmartpass');
INSERT INTO vendor VALUES (8, 16, 'Academic Supplies Plus', '7210987654', 'academicplus@example.com', 'supplyplus');
INSERT INTO vendor VALUES (9, 18, 'EduTech Solutions', '7109876543', 'edutech@example.com', 'edupass123');
INSERT INTO vendor VALUES (10, 20, 'Books and Beyond', '7098765432', 'booksbeyond@example.com', 'beyondbks');
INSERT INTO vendor VALUES (11, 22, 'LearnWell Bookstore', '7345678901', 'learnwell@example.com', 'learn123');
INSERT INTO vendor VALUES (12, 24, 'Academic Corner', '8456789012', 'academiccorner@example.com', 'cornerpass');
INSERT INTO vendor VALUES (13, 26, 'Maharashtra Scholar Supplies', '8567890123', 'mahscholar@example.com', 'mahscholar');
INSERT INTO vendor VALUES (14, 28, 'Educate Hub', '8678901234', 'educatehub@example.com', 'hubpass123');
INSERT INTO vendor VALUES (15, 30, 'SmartStudy Store', '7789012345', 'smartstudy@example.com', 'study123');
INSERT INTO vendor VALUES (16, 1, 'Innovative Academia', '7890123456', 'innovativeacademia@example.com', 'innopass');
INSERT INTO vendor VALUES (17, 3, 'Maharashtra Book Bazaar', '8901234567', 'bookbazaar@example.com', 'bazaarpass');
INSERT INTO vendor VALUES (18, 5, 'Knowledge Junction', '9012345678', 'knowledgejunction@example.com', 'junctpass');
INSERT INTO vendor VALUES (19, 7, 'EduCraft Supplies', '7234567890', 'educraft@example.com', 'educrass');
INSERT INTO vendor VALUES (20, 9, 'Wisdom World Books', '8345678901', 'wisdomworld@example.com', 'wisdpass');
INSERT INTO vendor VALUES (21, 11, 'Academic Haven', '8456789012', 'academichaven@example.com', 'havenpass');
INSERT INTO vendor VALUES (22, 13, 'StudySmart Solutions', '8567890123', 'studysmart@example.com', 'smsolutions');
INSERT INTO vendor VALUES (23, 15, 'Golden Books Corner', '8678901234', 'goldenbooks@example.com', 'goldeorner');
INSERT INTO vendor VALUES (24, 17, 'EduEmporium', '6789012345', 'eduemporium@example.com', 'empopass');
INSERT INTO vendor VALUES (25, 19, 'Maharashtra Learning Lab', '7890123456', 'learninglab@example.com', 'labpass');
INSERT INTO vendor VALUES (26, 21, 'Academic Depot', '8901234567', 'academicdepot@example.com', 'depotpass');
INSERT INTO vendor VALUES (27, 23, 'SmartScholar Supplies', '9012345678', 'smartscholar@example.com', 'scholarpass');
INSERT INTO vendor VALUES (28, 25, 'TechStudy Store', '8234567890', 'techstudy@example.com', 'techsepass');
INSERT INTO vendor VALUES (29, 27, 'BookWise Hub', '7345678901', 'bookwisehub@example.com', 'bookepass');
INSERT INTO vendor VALUES (30, 29, 'EduExplore Books', '7456789012', 'eduexplore@example.com', 'expepass');
INSERT INTO vendor VALUES (31, 21, 'Maharashtra EduCraft', '7567890123', 'maheducraft@example.com', 'eduaft123');
INSERT INTO vendor VALUES (32, 23, 'Genius Learning Solutions', '7678901234', 'geniuslearn@example.com', 'genspass');
INSERT INTO vendor VALUES (33, 25, 'Academic Galaxy Mart', '6789012345', 'galaxymart@example.com', 'galapass');
INSERT INTO vendor VALUES (34, 27, 'EduInnovate Books', '7890123456', 'eduinnovate@example.com', 'innovate123');
INSERT INTO vendor VALUES (35, 29, 'ScholarCraft Supplies', '8901234567', 'scholarcraft@example.com', 'craftpass');
INSERT INTO vendor VALUES (36, 2, 'LearnTech Hub', '9012345678', 'learntechhub@example.com', 'learntechpass');
INSERT INTO vendor VALUES (37, 4, 'Maharashtra Academic Depot', '7234567890', 'mahacaddepot@example.com', 'mahdepo23');
INSERT INTO vendor VALUES (38, 6, 'WisdomSource Books', '9345678901', 'wisdomsource@example.com', 'wisdsass');
INSERT INTO vendor VALUES (39, 8,  'EduSphere Supplies', '9456789012', 'edusphere@example.com', 'edusphass');
INSERT INTO vendor VALUES (40, 10, 'SmartMind Learning', '9567890123', 'smartmindlearn@example.com', 'minrn123');
INSERT INTO vendor VALUES (41, 12, 'AcademicAchieve Mart', '7678901234', 'academicachieve@example.com', 'achivepass');
INSERT INTO vendor VALUES (42, 14, 'TechKnowledge Books', '7789012345', 'techknowledge@example.com', 'knowgepass');
INSERT INTO vendor VALUES (43, 3, 'LearnArt Books', '7345678901', 'learnartbooks@example.com', 'artpass');
INSERT INTO vendor VALUES (44, 9, 'Intellect Books Hub', '7678901234', 'intellectbooks@example.com', 'intectpass');




INSERT INTO Category values(1,'Engineering');
INSERT INTO Category values(2,'Medical');
INSERT INTO Category values(3,'Higher Secondary Schooling');
INSERT INTO Category values(4,'MBA');
INSERT INTO Category values(5,'Competitive Exam');
INSERT INTO Category values(6,'Electronics');
INSERT INTO Category values(7,'Services');
INSERT INTO Category values(8,'Coaching Institutes');




INSERT INTO Sub_category values(1,'Academic Equipments');
INSERT INTO sub_category values(2,'Books');




INSERT INTO Coaching_institutes VALUES (1, 'Excel Coaching Classes', 'Mumbai', '9876543210', 'Providing quality education in Mumbai.');
INSERT INTO Coaching_institutes VALUES (2, 'Pinnacle Tutorials', 'Mumbai', '8765432109', 'Specializing in competitive exam preparation.');
INSERT INTO Coaching_institutes VALUES (3, 'Success Academy', 'Pune', '7654321098', 'Focused on academic excellence in Pune.');
INSERT INTO Coaching_institutes VALUES (4, 'Learning Hub', 'Nashik', '8543210987', 'Empowering students through education in Nashik.');
INSERT INTO Coaching_institutes VALUES (5, 'Bright Minds', 'Nagpur', '8432109876', 'Igniting young minds in Nagpur.');
INSERT INTO Coaching_institutes VALUES (6, 'Educational Center', 'Mumbai', '9321098765', 'Committed to holistic development in Mumbai.');
INSERT INTO Coaching_institutes VALUES (7, 'Tutorial Services', 'Pune', '9210987654', 'Dedicated to academic success in Pune.');
INSERT INTO Coaching_institutes VALUES (8, 'Achievers Academy', 'Nashik', '9109876543', 'Shaping future leaders in Nashik.');
INSERT INTO Coaching_institutes VALUES (9, 'Wisdom Classes', 'Nagpur', '9098765432', 'Inspiring excellence in education in Nagpur.');
INSERT INTO Coaching_institutes VALUES (10, 'Scholars Institute', 'Mumbai', '9876543210', 'Transforming students into scholars in Mumbai.');






INSERT INTO academic_equipments VALUES (1, 1, 'Scientific Calculator', 'Casio', 2021, '₹500.00', 'Fair condition, minor wear on buttons, fully functional.');
INSERT INTO academic_equipments VALUES (2, 3, 'Chemistry Set', 'Fisher Scientific', 2018, '₹1799.99', 'Used for experiments, some glassware may show signs of wear, fully functional.');
INSERT INTO academic_equipments VALUES (3, 3, 'Physics Kit', 'PASCO', 2018, '₹1799.99', 'Used for educational purposes, all components present and functional.');
INSERT INTO academic_equipments VALUES (4, 1, 'Safety Goggles', '3M', 2022, '₹70.00', 'Excellent condition, provides full eye protection, suitable for lab work.');
INSERT INTO academic_equipments VALUES (5, 1, 'Drawing Board', 'Huion', 2021, '₹2000.00', 'Excellent condition, large surface area, ideal for sketching and design.');
INSERT INTO academic_equipments VALUES (6, 2, 'Biology Dissection Kit', 'Carolina Biological Supply Company', 2018, '₹800.00', 'Used condition, includes tools for biological dissections.');
INSERT INTO academic_equipments VALUES (7, 3, 'Chemistry Lab Coat', 'VWR International', 2018, '₹300.00', 'Fair condition, protective lab coat suitable for chemistry experiments.');
INSERT INTO academic_equipments VALUES (8, 2, 'Stethoscope', '3M Littmann', 2021, '₹2000.00', 'Excellent condition, high-quality acoustics, suitable for medical examinations.');
INSERT INTO academic_equipments VALUES (9, 2, 'Lab Coat', 'Barco Uniforms', 2020, '₹300.00', 'Good condition, protective lab coat suitable for medical and laboratory work.');
INSERT INTO academic_equipments VALUES (10, 2, 'Medical Anatomy Model', 'GPI Anatomicals', 2019, '₹4000.00', 'Like new, detailed anatomical model for educational purposes.');
INSERT INTO academic_equipments VALUES (11, 2, 'Blood Pressure Cuff', 'Welch Allyn', 2020, '₹4000.00', 'Good condition, accurate blood pressure measurement for medical training.');
INSERT INTO academic_equipments VALUES (12, 2, 'First Aid Kit', 'Johnson & Johnson', 2021, '₹600.00', 'Excellent condition, comprehensive first aid supplies for medical emergencies.');
INSERT INTO academic_equipments VALUES (13, 2, 'Surgical Instruments Set', 'Symmetry Surgical', 2018, '₹2000.00', 'Used condition, includes various surgical instruments for medical training.');
INSERT INTO academic_equipments VALUES (14, 2, 'Medical Gauze', '3M', 2022, '₹200.00', 'New condition, sterile medical gauze for wound care and dressing.');
INSERT INTO academic_equipments VALUES (15, 2, 'Anatomical Charts Set', 'Denoyer-Geppert', 2019, '₹300.00', 'Like new, set of anatomical charts for medical education.');
INSERT INTO academic_equipments VALUES (16, 1, 'Calipers Set', 'Mitutoyo', 2021, '₹3000.00', 'Good condition, precision calipers set for accurate measurements in engineering projects.');
INSERT INTO Academic_Equipments VALUES (17, 5, 'Desk Lamp', 'Bajaj', 2022, '₹800.00', 'Brand new, energy-efficient LED lamp with adjustable brightness settings for optimal study conditions.');
INSERT INTO Academic_Equipments VALUES (18, 4, 'Study Chair', 'Nilkamal', 2021, '₹2000.00', 'Like new, ergonomic design, providing comfort and support during long study hours.');
INSERT INTO Academic_Equipments VALUES (19, 4, 'Whiteboard', 'Nilkamal', 2019, '₹600.00', 'Slightly used, no stains or ghosting, perfect for brainstorming and visualizing concepts during study sessions.');
INSERT INTO Academic_Equipments VALUES (20, 5, 'Noise-Canceling Headphones', 'Boat', 2023, '₹900.00', 'Gently used, excellent condition, providing effective noise reduction for focused study sessions.');






INSERT INTO Books VALUES (1, 1, 'Introduction to Computer Science', 'John Doe', 2022, '₹499.99', 'Brand new, still in shrink wrap with no signs of wear or damage.');
INSERT INTO Books VALUES (2, 1, 'Mechanical Engineering Basics', 'Jane Smith', 2021, '₹399.99', 'Slightly used - pages may have some highlighting, but overall in excellent condition.');
INSERT INTO Books VALUES (3, 1, 'Electrical Circuits Handbook', 'Robert Johnson', 2020, '₹599.99', 'Like new - may have been read, but no visible damage or wear.');
INSERT INTO Books VALUES (4, 2, 'Human Anatomy and Physiology', 'Emily Brown', 2023, '₹699.99', 'Brand new, never opened, with no signs of wear or use.');
INSERT INTO Books VALUES (5, 2, 'Medical Diagnostic Techniques', 'Michael Wilson', 2022, '₹799.99', 'Moderately used - cover and pages may show some wear, but no significant damage.');
INSERT INTO Books VALUES (6, 2, 'Pharmacology Essentials', 'Sarah Davis', 2021, '₹599.99', 'Like new - may have been read, but no visible damage or wear.');
INSERT INTO Books VALUES (7, 3, 'Mathematics for Higher Secondary', 'Chris Miller', 2020, '₹299.99', 'Brand new, never used, with no markings or annotations.');
INSERT INTO Books VALUES (8, 3, 'Physics Fundamentals', 'Emma Turner', 2023, '₹349.99', 'Slightly used - may contain some notes and highlighting, but overall in very good condition.');
INSERT INTO Books VALUES (9, 3, 'Chemistry Basics for Schooling', 'Alex Carter', 2022, '₹249.99', 'Brand new, with no signs of wear or use.');
INSERT INTO Books VALUES (10, 4, 'Strategic Management', 'David White', 2021, '₹499.99', 'Moderately used - cover and pages may show some wear, but no significant damage.');
INSERT INTO Books VALUES (11, 4, 'Financial Accounting Principles', 'Olivia Taylor', 2020, '₹549.99', 'Brand new, never used, with no markings or annotations.');
INSERT INTO Books VALUES (12, 4, 'Marketing Strategies Handbook', 'Daniel Evans', 2019, '₹399.99', 'Slightly used - may contain some notes and highlighting, but overall in excellent condition.');
INSERT INTO Books VALUES (13, 5, 'Quantitative Aptitude for CAT', 'Sophia Walker', 2023, '₹299.99', 'Brand new, still in shrink wrap with no signs of wear or damage.');
INSERT INTO Books VALUES (14, 5, 'General Knowledge for UPSC', 'Matthew Harris', 2022, '₹399.99', 'Moderately used - cover and pages may show some wear, but no significant damage.');
INSERT INTO Books VALUES (15, 5, 'Logical Reasoning Techniques', 'Ava Martinez', 2021, '₹249.99', 'Brand new, with no signs of wear or use.');






INSERT INTO service VALUES (1,'Veer Packers And Movers','Pune',9425187154, 'We provide all kinds of transport services', 4.1,'Better');
INSERT INTO service VALUES (2,'Vishwashri Packers And Movers','Pune',7854359526, 'Shifting is now Simple with us. Shift your home anywhere in India in best price.', 4.9,'Excellent');
INSERT INTO service VALUES (3,'SWD Packers And Movers','Pune', 7869545123, 'Full packed vehicle for security ,Contact for best price or any other service', 3.8,'Best');
INSERT INTO service VALUES (4,'Kaushik Logistics Packers And Movers','Pune', 7898654815, 'Shift Your Home Anytime... Anywhere in India.. With Packers and Movers.', 3.9,'Best');
INSERT INTO service VALUES (5,'ShivGanga Packers And Movers','Pune', 9845153562, 'Safety and careful moving in your productos anyone interested', 4.2,'Excellent');
INSERT INTO service VALUES (6,'BikeRent','Nagpur', 7545986515, 'We have all type of bike in reasonable rate for rent', 4.2, 'Better');
INSERT INTO service VALUES (7,'PrintShop','Nashik', 8465153265, 'we have lowest rate per page in region', 4.4, 'Excellent');
INSERT INTO service VALUES (8,'GroceryDelivery','Mumbai', 9465263545, 'We delivered groceries within 10 minutes...check it out', 4.0, 'Best');
INSERT INTO service VALUES (9, 'Eat Point mess', 'Pune', 9546153565, 'Tiffen and chapati food suppliers', 4.7, 'Excellent');
INSERT INTO service VALUES (10, 'Bhagodya PG', 'Pune', 8465987845, 'Looking for a premium abode in Pune? Opt for  Coliving spaces to enhance your lifestyle beyond a nearby PG. Indulge in fully-furnished', 4.7, 'Best');
INSERT INTO service VALUES (11, 'Stanza Living', 'Pune', 9874515355, 'A local hostel or PG will never be more than a hostel or a PG. But Stanza Living will never be less than your second home. And that is the one difference that makes all the difference.', 4.9, 'Excellent');
INSERT INTO service VALUES (12, 'Vijay Laundry', 'Mumbai', 9465153562, 'We have the full portfolio of laundry services in Mumbai – be it laundry for daily home wear, office clothes or even for your woollen clothes, we can take care of it all.', 4.8, 'Excellent');
INSERT INTO service VALUES (13, 'Mobile Repairing', 'Pune', 8798564515, 'We reapir all types of mobile and accessories', 4.4, 'Better');






INSERT INTO Electronics VALUES (1, 'Laptop', 'HP', 2022, '₹20000.00', 'In good working condition, recently upgraded with additional RAM and SSD.');
INSERT INTO Electronics VALUES (2, 'Digital Whiteboard', 'SMART Technologies', 2019, '₹10000.00', 'Like new, rarely used, no visible marks or scratches.');
INSERT INTO Electronics VALUES (3, 'Projector', 'Epson', 2020, '₹14999.99', 'Good condition, recent bulb replacement, suitable for presentations.');
INSERT INTO Electronics VALUES (4, 'Desktop Computer', 'Dell', 2021, '₹4999.99', 'Excellent performance, equipped with the latest processor and graphics card.');
INSERT INTO Electronics VALUES (5, 'Digital Recorder', 'Sony', 2020, '₹5999.00', 'Fair condition, some cosmetic scratches, records audio accurately.');
INSERT INTO Electronics VALUES (6, 'Drawing Tablet', 'Wacom', 2021, '₹3999.00', 'Good condition, pressure-sensitive stylus included, suitable for digital art.');
INSERT INTO Electronics VALUES (7, 'Digital Microscope', 'Celestron', 2020, '₹15999.99', 'Fair condition, requires minor calibration for optimal performance.');
INSERT INTO Electronics VALUES (8, 'Virtual Reality Headset', 'Oculus', 2018, '₹6999.99', 'Fair condition, provides immersive VR experiences, suitable for research.');
INSERT INTO Electronics VALUES (9, 'Digital Camera', 'Canon', 2019, '₹12999.99', 'Like new, high-resolution sensor, suitable for photography projects.');
INSERT INTO Electronics VALUES (10, 'Language Translation Device', 'Google', 2018, '₹4999.99', 'Fair condition, supports multiple languages, useful for language studies.');
INSERT INTO Electronics VALUES (11, 'Electronic Dictionary', 'Franklin', 2019, '₹3999.99', 'Like new, extensive vocabulary, useful for language studies.');
INSERT INTO Electronics VALUES (12, 'Wireless Presenter', 'Logitech', 2022, '₹3999.99', 'New condition, facilitates presentations with wireless control.');
INSERT INTO Electronics VALUES (13, 'Portable Projector', 'LG', 2021, '₹5999.99', 'Good condition, compact and portable, suitable for on-the-go presentations.');
INSERT INTO Electronics VALUES (14, 'Digital Sketchpad', 'XP-Pen', 2022, '₹2999.99', 'New condition, pressure-sensitive stylus, suitable for digital art.');
INSERT INTO Electronics VALUES (15, 'Augmented Reality Glasses', 'Microsoft', 2021, '₹4999.99', 'Good condition, provides augmented reality experiences for educational purposes.');
INSERT INTO Electronics VALUES (16, 'Digital Audio Recorder', 'Zoom', 2018, '₹1200.00', 'Fair condition, portable recorder for capturing audio in various environments.');
INSERT INTO Electronics VALUES (17, 'Electronic Circuit Kit', 'Elenco', 2019, '₹1500.00', 'Like new, includes components for hands-on electronic circuit experiments.');
INSERT INTO Electronics VALUES (18, 'Interactive Whiteboard', 'Promethean', 2019, '₹2999.99', 'Fair condition, interactive whiteboard for engaging classroom presentations.');
INSERT INTO Electronics VALUES (19, '3D Printer', 'Prusa Research', 2019, '₹5999.99', 'Used condition, 3D printer suitable for prototyping and experimentation.');
INSERT INTO Electronics VALUES (20, 'Robotics Kit', 'LEGO', 2020, '₹1699.99', 'Good condition, various sensors and modules included for robotics experiments.');
