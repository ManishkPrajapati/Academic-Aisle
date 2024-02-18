# TITLE: Academic Aisle

Software Requirements Specification (SRS) for Academic Aisle Resale Online Marketplace

# Objective:

This document outlines the software requirements for Academic Aisle, an online resale marketplace for educational products and services. The website will be accessible through a web browser. The website will allow users to create accounts, post advertisements for products and services, communicate with other users through messaging, and search for items based on various criteria.

# Scope:

The scope of this project includes the development of the Academic Aisle online resale marketplace website, which will allow users to buy and sell educational products and services. The website will include features such as user registration, login, advertisement posting, messaging, search functionality, and payment processing. The website will also include administrative features such as user management, advertisement approval, and site maintenance.

# Functional Requirements:

## User Registration and Login-

- Users should be able to register using their email address.
- Users should be required to provide their full name, phone number, and email address during registration.
- Users should be able to select their preferred Area , City and State during registration.
- Users should be required to confirm their email address or phone number during registration.
- Users should be able to edit their profile information after registration.
- Users should be able to Contact Us or submit inquiries or feedback.
- Users should be able to clear their doubt FAQ section that answers common questions about the website's policies, procedures, and features.
- Users should be able to log in using their email address and password.


## Administrator - 

- Administrator should be able to manage user accounts by suspending/deactivating users.
- Administrator should be able manage category.
- Administrator should be able manage sub-category.
- Administrator should be able manage Advertisments.
- Administrator would be able to  view all registered users and products.
- Administrator would be able able to see reports.

## Advertisement Posting -

- Registered users should be able to post advertisements for educational products and services.
- Advertisements should include a title, description, price, product/service category, area, contact information.
- Advertisements should include at least one image and max 3 images.
- Advertisements should have a searchable status until they are sold or removed by the seller.
- Advertisements can be saved in wishlist for future reference.
- Advertisements have a feature for sellers to edit their advertisements after posting.
- Advertisements have a feature for sellers to delete their advertisements at any time.
- Advertisements have a feature for buyers to contact sellers after viewing an advertisement.
- Advertisements should have a feature for buyers and sellers to communicate about the product/service being sold or purchased.

## Communication System -

- Only registered users can connect to seller.
- Seller will be sent an email of the interested Users.
- Seller will then be able to connect to intrested User with the details provided in the email

# Non Functional Requirements:

## Security:

- The website should implement strong password policies for user accounts, requiring passwords with a minimum length of 8 characters, containing both uppercase and lowercase letters, numbers, and special characters such as !@#$%. Passwords should also be required to be changed every 90 days for added security against unauthorized access or account takeovers by hackers or cybercriminals using brute force attacks or password-guessing techniques.
- The website should implement two-factor authentication (2FA) as an optional security feature for user accounts, requiring users to provide a second form of identification such as a one-time code sent via SMS or email in addition to their password at login time.

## Reliability:

- The website should implement regular backups of all data to prevent data loss in case of any unexpected events such as server crashes or cyber-attacks.

## Availability:

- Server availability all time .

## Accessability:

- Registered and Non-Registered User can access the website.

## Maintainability:

- The website should be easy to maintain and update, with clear documentation and support resources available. This will ensure that the website remains functional and effective over time, without requiring excessive resources or expertise.

## Scalability:

- The website should be scalable to sell other category products which can attract a large variety of customers and vendors who want to sell different products. This website can handle large user traffic.

## Portability:

- Web Application System will provide a portable User Interface ( HTML, CSS, JS, React) through which users will be able to access online websites. The system can be deployed to a single server, multi-server, to any OS, Cloud (Azure or AWS or GCP).
