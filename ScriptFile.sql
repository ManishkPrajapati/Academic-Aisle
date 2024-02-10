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
    Area varchar(50),
    City varchar(50),
    State varchar(50),
    Country varchar(50)
);

CREATE TABLE Users(
    Id int AUTO_INCREMENT PRIMARY KEY,
    Area_id int,
    First_name varchar(50),
    Last_name varchar(50),
    Phone varchar(15),
    Email varchar(30),
    Password varchar(50),
    FOREIGN KEY(Area_id) REFERENCES Area(Id)
);

CREATE TABLE Administrator(
    Id int AUTO_INCREMENT PRIMARY KEY,
    First_name varchar(50),
    Last_name varchar(50),
    Phone varchar(15),
    Email varchar(30)
);

CREATE TABLE Vendor(
    Id int AUTO_INCREMENT PRIMARY KEY,
    Area_id int,
    Name varchar(250),
    Phone varchar(15),
    Email varchar(30),
    Password varchar(50),
    FOREIGN KEY(Area_id) REFERENCES Area(Id)
);

CREATE TABLE Login(
    Id int AUTO_INCREMENT PRIMARY KEY,
    User_id int,
    User_name varchar(50),
    Password varchar(20),
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
    C_Name varchar(20),
    C_Desc varchar(250)
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
    P_Description varchar(250),
    Is_active varchar(10),
    P_Condition varchar(30),
    Price float,
    FOREIGN KEY(User_id) REFERENCES Users(Id),
    FOREIGN KEY(Vendor_id) REFERENCES Vendor(Id),
    FOREIGN KEY(Category_id) REFERENCES Category(Id)
);

CREATE TABLE Sub_Category(
    Id int PRIMARY KEY AUTO_INCREMENT,
    SC_Name varchar(50),
    SC_Desc varchar(250)
);

CREATE TABLE Hobbies(
    Id int PRIMARY KEY AUTO_INCREMENT,
    Category_Id int,
    Hobby_name varchar(10),
    Description varchar(250),
    FOREIGN KEY(Category_id) REFERENCES Category(Id)
);

CREATE TABLE Coaching_Institutes(
    Id int PRIMARY KEY AUTO_INCREMENT,
    Category_Id int,
    Location varchar(10),
    Phone varchar(15),
    Description varchar(250),
    FOREIGN KEY(Category_id) REFERENCES Category(Id)
);

CREATE TABLE Academic_Equipments(
    Id int PRIMARY KEY AUTO_INCREMENT,
    Category_Id int,
    SC_id int,
    Manufacturer varchar(150),
    Year_of_Purchase DATE,
    Conditions varchar(250),
    FOREIGN KEY(SC_id) REFERENCES Sub_Category(Id),
    FOREIGN KEY(Category_id) REFERENCES Category(Id)
);

CREATE TABLE Books(
    Id int PRIMARY KEY AUTO_INCREMENT,
    Category_Id int,
    SC_id int,
    Author varchar(150),
    Year_Of_Publication DATE,
    Conditions varchar(250),
    FOREIGN KEY(SC_id) REFERENCES Sub_Category(Id),
    FOREIGN KEY(Category_id) REFERENCES Category(Id)
);

CREATE TABLE Service(
    Id int PRIMARY KEY AUTO_INCREMENT,
    Name varchar(150),
    Category_Id int,
    City varchar(20),
    Ratings INT,
    Reviews TEXT,
    FOREIGN KEY(Category_id) REFERENCES Category(Id)
);

CREATE TABLE Electronics(
    Id int PRIMARY KEY AUTO_INCREMENT,
    Category_Id int,
    Manufacturer varchar(200),
    Year_of_Purchase DATE,
    Model_name varchar(150),
    FOREIGN KEY(Category_id) REFERENCES Category(Id)
);
