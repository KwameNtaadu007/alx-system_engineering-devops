# Web Infrastructure

## Overview

This project focuses on designing web infrastructure using a single, distributed, secured and scale up server design concepts. The infrastructure comprises various components to host a website accessible via the domain name www.foobar.com. The main components include the LAMP stack (Linux, Apache, MySQL, PHP), a web server (Nginx), an application server, and a MySQL database.

# Project Readme: Scalable Web Infrastructure with HAProxy Load Balancer

## Overview

This project focuses on designing a scalable web infrastructure with a high availability load balancer (HAProxy). The goal is to ensure reliability, fault tolerance, and efficient traffic distribution. The infrastructure separates the web server, application server, and database components on dedicated servers, and leverages a load balancer cluster for scaling and redundancy.

## Project Components

### Servers

**Server 1 (Web Server)**
- Component: Nginx
- Responsibilities: 
  - Handling HTTP requests.
  - Serving static content.
- Additional Components:
  - Firewall for security.
  - SSL termination for HTTPS support.
  - Monitoring client for performance tracking.
  - HAProxy Node 1 for load balancing.

**Server 2 (Application Server)**
- Component: Application server (e.g., Node.js, Django, Ruby on Rails, etc.).
- Responsibilities: 
  - Processing dynamic content.
- Additional Components:
  - Firewall for security.
  - Monitoring client for performance monitoring.
  - HAProxy Node 2 for load balancing.

**Server 3 (Database Server)**
- Component: MySQL
- Responsibilities: 
  - Storing and managing website data.
- Additional Components:
  - Firewall for security.
  - Monitoring client for performance monitoring.

### Load Balancer

- Component: HAProxy
- Configuration: HAProxy is configured as a cluster with Node 1 and Node 2.
- Responsibilities:
  - Distributing incoming traffic between web and application servers.
  - Ensuring high availability and fault tolerance.

## Why These Components

1. **Web Server and Application Server Separation**: Separating the web and application servers allows for better scalability and optimized performance. The web server efficiently serves static content, while the application server handles dynamic content generation.

2. **Load Balancer Cluster**: HAProxy configured as a cluster ensures high availability and efficient traffic distribution. If one node fails, the other can take over, providing fault tolerance.

3. **Firewalls**: Firewalls enhance security by controlling and securing incoming and outgoing traffic to each server, reducing the attack surface.

4. **SSL Termination**: SSL termination at the web server allows efficient handling of HTTPS traffic, improving website security.

5. **Monitoring**: Monitoring clients track the health and performance of each component. They collect metrics, logs, and other data, which are sent to a monitoring service for analysis and alerting in case of issues.

## How to Use

1. Set up Server 1 (Web Server), Server 2 (Application Server), and Server 3 (Database Server) as separate instances with the specified components and configurations.

2. Configure the HAProxy load balancer with Node 1 and Node 2 for high availability and load distribution.

3. Implement firewall rules for each server to enhance security and control traffic.

4. Install monitoring clients on each server to track and collect performance data.

5. Ensure the SSL certificate is properly configured for HTTPS support.

6. Continuously monitor the infrastructure to identify and resolve any performance or security issues.

## Issues to Address

1. **SSL Termination at the Load Balancer Level**: While it can improve performance, terminating SSL at the load balancer may pose security risks if the load balancer is compromised. Ensure appropriate security measures are in place.

2. **Single MySQL Server for Writes**: Having only one MySQL server capable of accepting writes represents a single point of failure for the database. Consider implementing a failover solution for database redundancy.

3. **Identical Server Components**: While the architecture is designed for scalability, having servers with identical components could still be a concern if not properly scaled. Consider adding more servers or optimizing resources as needed.


## Conclusion

This project demonstrates the design of web infrastructure from a simple to a more robust design. Understanding the roles of each component, the importance of system redundancy, and security. This was done through the design of 4 different systems with each improving on the limitations of the previous one.
The fourth iteration provides a scalable, secure, and monitored web infrastructure. By separating components, configuring load balancers, implementing firewalls, and setting up monitoring, we ensure the infrastructure's reliability, security, and performance. Addressing the identified issues is crucial for further enhancing the system's robustness and scalability.
