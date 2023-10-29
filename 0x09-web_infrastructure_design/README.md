# Web Infrastructure

## Overview

This project focuses on designing web infrastructure using a single, distributed, secured and scale up server design concepts. The infrastructure comprises various components to host a website accessible via the domain name www.foobar.com. The main components include the LAMP stack (Linux, Apache, MySQL, PHP), a web server (Nginx), an application server, and a MySQL database.

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

6. **Load Balancer (HAproxy):
   - The load balancer distributes incoming traffic across multiple web servers (Server 1 and Server 2).
   - It uses a distribution algorithm (round-robin, least connections, etc.) to evenly distribute requests among the servers, preventing overloading on a single server.

7. **Monitoring tools (Sumologic):
   -Monitoring is used to track the performance of the web infrastructure and identify any issues that may arise. 
   -Monitoring clients collect data on various aspects of the infrastructure such as server uptime, response time, and resource utilization.

8. **Firewalls and SSL
   -Firewalls are added to prevent unauthorized access to the network and protect against cyber attacks. They act as a barrier between the internet and the network, filtering out unwanted traffic and allowing only authorized traffic to pass through.
   -SSL certificate allows the website to be served over HTTPS  to encrypt the traffic between the user’s browser and the web server, making it more secure.

## System Redundancy

System redundancy is the practice of duplicating critical components or resources in the infrastructure to ensure high availability and fault tolerance. In this simple one-server setup, there is no inherent system redundancy, making it susceptible to a Single Point of Failure (SPOF). This issue is resolved in int distributed concept which makes scaling possible eventually.

## Acronyms

- **LAMP:** Stands for Linux, Apache, MySQL, and PHP, which represents a popular web development stack used for hosting dynamic websites.
- **SPOF:** Stands for Single Point of Failure, referring to a component in the infrastructure whose failure can cause the entire system to become unavailable.
- **QPS:** Stands for Queries Per Second, a metric used to measure the database's performance in handling incoming queries.


## Conclusion

This project demonstrates the design of web infrastructure from a simple to a more robust design. Understanding the roles of each component, the importance of system redundancy, and security. This was done through the design of 4 different systems with each improving on the limitations of the previous one.
