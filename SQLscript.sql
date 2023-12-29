create database AcademicAisle;
use AcademicAisle;

drop table if exists User;
drop table if exists Administrator;
drop table if exists Login;
drop table if exists Message;
drop table if exists Advertisement;
drop table if exists Product;
drop table if exists Area;
drop table if exists Educational_Qualification;
drop table if exists Category;
drop table if exists Hobbies;
drop table if exists Institutes;
drop table if exists Academic_Equipments;
drop table if exists Books;
drop table if exists Service;
drop table if exists Electronics;


create table User(
	Id int auto_increment PRIMARY KEY,
	Area_id int,
	First_name varchar(10),
	Last_name varchar(10),
	Phone varchar(15),
	Email varchar(30),
	Preferred_language varchar(10),
	Password varchar(20),
	FOREIGN KEY(Area_id) REFERENCES Area(id));

create table Administrator(
    Id int auto_increment PRIMARY KEY,
    First_name varchar(10),
    Last_name varchar(10),
    Phone varchar(15),
    Email varchar(30));


create table Login(
    Id int,
	user_name varchar(10),
    Password varchar(10),
    EmailId varchar(30),
    Phone varchar(15))
    FOREIGN KEY(Id) REFERENCES User(id);
    
create table Message(
	Sender_id int,
    Receiver_id int,
    Message varchar(30),
    Timestamp varchar(10),
    FOREIGN KEY(Sender_id) REFERENCES User(id),
    FOREIGN KEY(Receiver_id) REFERENCES User(id));

create table Advertisement(
    Id int PRIMARY KEY auto_increment,
    Product_id int,
    User_id int,
    Verification_Status varchar(10),
    Adv_title varchar(40),
    Post_date date,
    Is_active varchar(10),
    FOREIGN KEY(Product_id) REFERENCES Product(id),
    FOREIGN KEY(User_id) REFERENCES User(id));
    
create table Product(
    Id int PRIMARY KEY auto_increment,
    Category_id int,
    P_Name varchar(20),
    P_Description varchar(70),
    Image text,
    P_Condition varchar(30),
    Price float,
    FOREIGN KEY(Category_id) REFERENCES Category(id));
    
create table Area(
    Id int PRIMARY KEY auto_increment,
    Area varchar(10),
    City varchar(10),
    State varchar(10),
    Country varchar(10));

create table Educational_Qualification(
	Id int PRIMARY KEY auto_increment,
    Educational_Streams varchar(20)); 

create table Category(
	Id int PRIMARY KEY auto_increment,
    Name varchar(20));

create table Hobbies(
	Id int auto_increment,
    Category_Id int,
    Hobby_name varchar(10),
    Description varchar(60),
    FOREIGN KEY(Category_id) REFERENCES Category(id));
    
create table Institutes(
	Id int PRIMARY KEY auto_increment,
    Category_Id int,
    Location varchar(10),
    Contact_no varchar(15),
    Description varchar(60),
    FOREIGN KEY(Category_id) REFERENCES Category(id));
    
create table Academic_Equipments(
	Id int PRIMARY KEY auto_increment,
    Category_Id int,
    Edu_qual_id int,
    Manufacturer varchar(10),
    Year_of_Purchase varchar(10),
    E_Condition varchar(20),
    FOREIGN KEY(Edu_qual_id) REFERENCES Educational_Qualification(id),
    FOREIGN KEY(Category_id) REFERENCES Category(id));
    
create table Books(
	Id int PRIMARY KEY auto_increment,
    Category_Id int,
    Edu_qual_id int,
    Author varchar(10),
    Year_Of_Publication varchar(10),
    B_Condition varchar(20),
    FOREIGN KEY(Edu_qual_id) REFERENCES Educational_Qualification(id),
    FOREIGN KEY(Category_id) REFERENCES Category(id));
    
create table Service(
	Id int PRIMARY KEY auto_increment,
    Category_Id int,
    Name varchar(10),
    Location varchar(20),
    Category varchar(10),
    Ratings_Reviews varchar(10),
    FOREIGN KEY(Category_id) REFERENCES Category(id));
    
create table Electronics(
	Id int PRIMARY KEY auto_increment,
    Category_Id int,
    Manufacturer varchar(20),
    Year_of_Purchase varchar(10),
    Model_name varchar(10),
    FOREIGN KEY(Category_id) REFERENCES Category(id));
