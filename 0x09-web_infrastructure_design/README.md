# Web Stack Infrastructure - Single Server Setup

## Overview

This project focuses on designing a simple web infrastructure using a single server. The infrastructure comprises various components to host a website accessible via the domain name www.foobar.com. The main components include the LAMP stack (Linux, Apache, MySQL, PHP), a web server (Nginx), an application server, and a MySQL database.

## Components and their Roles

1. **Server (Linux):**
   - The server is the main hardware running the entire web infrastructure.
   - It hosts the operating system (Linux) and all the necessary software for serving the website.

2. **Domain Name (www.foobar.com):**
   - The domain name "www.foobar.com" serves as the user-friendly address for the website.
   - It is resolved to the server's IP address (8.8.8.8) using DNS, allowing users to access the website through their web browsers.

3. **Web Server (Nginx):**
   - Nginx is a high-performance web server that handles HTTP requests from clients (web browsers).
   - It serves static content directly (HTML, CSS, images) and forwards dynamic content requests to the application server.
   - Nginx acts as an intermediary between the client and the application server, optimizing web request handling.

4. **Application Server:**
   - The application server runs the website's codebase and processes dynamic content requests.
   - It communicates with the database to fetch or update data as required by the website's functionalities.

5. **Database (MySQL):**
   - MySQL is a relational database management system responsible for storing and managing the website's data.
   - It handles read and write operations, allowing the application server to interact with the stored data.

## System Redundancy

System redundancy is the practice of duplicating critical components or resources in the infrastructure to ensure high availability and fault tolerance. In this simple one-server setup, there is no inherent system redundancy, making it susceptible to a Single Point of Failure (SPOF).

## Acronyms

- **LAMP:** Stands for Linux, Apache, MySQL, and PHP, which represents a popular web development stack used for hosting dynamic websites.
- **SPOF:** Stands for Single Point of Failure, referring to a component in the infrastructure whose failure can cause the entire system to become unavailable.
- **QPS:** Stands for Queries Per Second, a metric used to measure the database's performance in handling incoming queries.

## Limitations and Scalability

This one-server web infrastructure serves as a starting point for small projects or early-stage development. However, it has some limitations and cannot scale well to handle a large amount of incoming traffic. It is crucial to consider implementing system redundancy and scaling mechanisms to ensure high availability, improved performance, and fault tolerance.

For further improvements, you might explore:

- Introducing a load balancer to distribute incoming traffic across multiple servers.
- Employing a cloud-based solution to dynamically scale resources based on demand.
- Implementing backup and disaster recovery strategies to safeguard data.

## Conclusion

This project demonstrates the design of a basic web infrastructure using a single server. Understanding the roles of each component, the importance of system redundancy, and the limitations of this setup will help you make informed decisions when building more complex and scalable web infrastructures in the future.
