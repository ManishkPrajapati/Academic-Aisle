DROP DATABASE AcademicAisle;
CREATE DATABASE AcademicAisle;
USE AcademicAisle;

DROP TABLE IF EXISTS User;
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
    Id int PRIMARY KEY auto_increment,
    Area varchar(10),
    City varchar(10),
    State varchar(10),
    Country varchar(10));

CREATE TABLE User(
	Id int auto_increment,
	Area_id int,
	First_name varchar(10),
	Last_name varchar(10),
	Phone varchar(15),
	Email varchar(30),
	Password varchar(10),
	PRIMARY KEY(ID,Password),
	FOREIGN KEY(Area_id) REFERENCES Area(id));

CREATE TABLE Administrator(
    Id int auto_increment PRIMARY KEY,
    First_name varchar(10),
    Last_name varchar(10),
    Phone varchar(15),
    Email varchar(30));

CREATE TABLE Vendor(
	Id int auto_increment PRIMARY KEY,
	Area_id int,
	Name varchar(10),
	Phone varchar(15),
	Email varchar(30),
	Password varchar(20),
	FOREIGN KEY(Area_id) REFERENCES Area(id));
    
CREATE TABLE Login(
    Id int auto_increment PRIMARY KEY,
    user_Id int,
    user_name varchar(10),
    Password varchar(10),
    EmailId varchar(30),
    Phone varchar(15),
    FOREIGN KEY(user_id) REFERENCES user(Id),FOREIGN KEY(Password) REFERENCES user(Password));
    
CREATE TABLE Message(
    Sender_id int,
    Receiver_id int,
    Sender_Message varchar(3000),
    Receiver_Message varchar(3000),
    Timestamp varchar(10),
    FOREIGN KEY(Sender_id) REFERENCES User(id),
    FOREIGN KEY(Receiver_id) REFERENCES User(id));

CREATE TABLE Category(
    Id int PRIMARY KEY auto_increment,
    C_Name varchar(20));

CREATE TABLE Advertisement(
    Id int PRIMARY KEY auto_increment,
    User_id int,
    Vendor_id int DEFAULT NULL,
    Category_Id int,
    Verification_Status varchar(10),
    Adv_title varchar(40),
    Post_date date,
    Image text,
    P_Description varchar(70),
    Is_active varchar(10),
    P_Condition varchar(30),
    Price float,
    FOREIGN KEY(User_id) REFERENCES User(id),FOREIGN KEY(Vendor_id) REFERENCES Vendor(id),
    FOREIGN KEY(Category_id) REFERENCES Category(id));

CREATE TABLE Sub_Category(
	Id int PRIMARY KEY auto_increment,
    SC_Name varchar(20));

CREATE TABLE Hobbies(
    Id int PRIMARY KEY auto_increment,
    Category_Id int,
    Hobby_name varchar(10),
    Description varchar(60),
    FOREIGN KEY(Category_id) REFERENCES Category(id));
    
CREATE TABLE Coaching_Institutes(
    Id int PRIMARY KEY auto_increment,
    Category_Id int,
    Location varchar(10),
    Phone varchar(15),
    Description varchar(60),
    FOREIGN KEY(Category_id) REFERENCES Category(id));
    
CREATE TABLE Academic_Equipments(
    Id int PRIMARY KEY auto_increment,
    Category_Id int,
    SC_id int,
    Manufacturer varchar(10),
    Year_of_Purchase varchar(10),
    Condition varchar(20),
   FOREIGN KEY(SC_id) REFERENCES Sub_Category(id),
    FOREIGN KEY(Category_id) REFERENCES Category(id));
    
CREATE TABLE Books(
    Id int PRIMARY KEY auto_increment,
    Category_Id int,
    SC_id int,
    Author varchar(10),
    Year_Of_Publication varchar(10),
    B_Condition varchar(20),
    FOREIGN KEY(SC_id) REFERENCES Sub_Category(id),
    FOREIGN KEY(Category_id) REFERENCES Category(id));
    
CREATE TABLE Service(
    Id int PRIMARY KEY auto_increment,
    Name varchar(10),
    Category_Id int,
    Location varchar(20),
    Ratings_Reviews varchar(10),
    FOREIGN KEY(Category_id) REFERENCES Category(id));
    
CREATE TABLE Electronics(
    Id int PRIMARY KEY auto_increment,
    Category_Id int,
    Manufacturer varchar(20),
    Year_of_Purchase varchar(10),
    Model_name varchar(10),
    FOREIGN KEY(Category_id) REFERENCES Category(id));
    

     