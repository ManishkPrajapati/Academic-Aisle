# TITLE: Academic Aisle

Software Requirements Specification (SRS) for Academic Aisle Resale Online Marketplace

# Objective:

This document outlines the software requirements for Academic Aisle, an online resale marketplace for educational products and services. The website will be accessible through a web browser. The website will allow users to create accounts, post advertisements for products and services, communicate with other users through messaging, and search for items based on various criteria.

# Scope:

The scope of this project includes the development of the Academic Aisle online resale marketplace website, which will allow users to buy and sell educational products and services. The website will include features such as user registration, login, advertisement posting, messaging, search functionality, and payment processing. The website will also include administrative features such as user management, advertisement approval, and site maintenance.

# Functional Requirements:

## User Registration -

- Users should be able to register using their email address or phone number.
- Users should be required to provide a unique username and password during registration.
- Users should be able to select their preferred language from a list of available languages.
- Users should be required to provide their full name, phone number, and email address during registration.
- Users should be able to specify their preferred educational qualification level during registration.
- Users should be required to agree to the terms and conditions of the site during registration.
- Users should be able to select their preferred area of residence during registration.
- Users should be required to confirm their email address or phone number during registration.
- Users should be able to edit their profile information after registration (optional).
- Users should be able to Contact Us or submit inquiries or feedback.
- Users should be able to pay Vendor securely through payment portal.
- Users should be able to clear their doubt FAQ section that answers common questions about the website's policies, procedures, and features.

## User Login -

- Users should be able to log in using their username or email address and password.
- Users should be able to log in using their phone number and password (optional).
- Users should be able to save their login credentials for future use (optional).
- Users should be able to reset their password if they forget it (forgot password feature).

## Vendor - 

- Vendor should be able to register using their email address or phone number.
- Vendor should be required to provide a unique username and password during registration.
- Vendor should be able to select their preferred language from a list of available languages.
- Vendor should be required to provide their full name, phone number, and email address during registration.
- Vendor should be required to confirm their email address or phone number during registration.
- Vendor should be able to edit their profile information after registration (optional).
- Vendor should be able to recieve payment from buyer.
- Vendor should have access to add/edit/delete products.

## Administrator - 

- Administrator should be able to manage user accounts by suspending/deactivating users.
- Administrator should be able manage category.
- Administrator would be able to  view all registered users, vendors and products.
- Administrator can activate/deactivate vendor accounts.
- Administrator can register another admin.

## Advertisement Posting -

- Registered users should be able to post advertisements for educational products and services.
- Advertisements should include a title, description, price, product/service category, area of residence, contact information, and product/service condition (new or used).
- Advertisements should include at least one image or video (optional).
- Advertisements should include a verification status (pending or approved) until they are approved by an administrator.
- Advertisements should have an active status until they are sold or removed by the seller.
- Advertisements should have a searchable status until they are sold or removed by the seller.
- Advertisements should have a feature for buyers to save advertisements for future reference.
- Advertisements should have a feature for sellers to edit their advertisements after posting.
- Advertisements should have a feature for sellers to delete their advertisements at any time.
- Advertisements should have a feature for buyers to contact sellers through messaging after viewing an advertisement.
- Advertisements should have a feature for sellers to track the views and clicks on their advertisements.
- Advertisements should have a feature for sellers to track the sales and ratings of their products/services .
- Advertisements should have a feature for buyers to rate and review the products/services they receive from sellers.
- Advertisements should have a feature for sellers to respond to ratings and reviews from buyers.
- Advertisements should have a feature for buyers and sellers to communicate through messaging about the product/service being sold or purchased.

## Messaging System -

- Registered users can only chat to seller through message system .
- Messages can include text, images, videos, audio files, documents, or links.
- Messages can include an emoji feature that allows users to add emojis while sending messages.
- Messages can include a read receipt feature that allows users to see whether the recipient has read the message or not.
- Messages can include a delete message feature that allows users to delete messages they have sent or received from their inbox or sent items folder .
- Messages can include a search message feature that allows users to search for messages based on keywords or message content.
- Messages can include an archive message feature that allows users to archive messages they want to keep but do not want them cluttering up their inbox or sent items folder .

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
