Main Role of a Web Server
A web server is a software application or hardware device responsible for handling client requests over the HTTP (Hypertext Transfer Protocol) or HTTPS (HTTP Secure) protocols. Its main role is to deliver web content, such as web pages, images, files, or any resource requested by clients (typically web browsers). It receives incoming requests from clients, processes these requests, retrieves the requested content from the server's storage or applications, and sends the response back to the client. Essentially, a web server facilitates communication between clients and the hosted web content.

Child Process
In computing, a child process refers to a process that is spawned or created by another process, known as the parent process. When a parent process generates or spawns subprocesses, those subprocesses are considered child processes. These child processes inherit certain attributes, resources, and characteristics from their parent process, such as environment variables or file descriptors. Child processes are often used to perform parallel or independent tasks while utilizing the resources of the parent process.

Parent and Child Processes in Web Servers
Web servers often utilize a parent-child process model for managing incoming client requests efficiently. The parent process is responsible for handling administrative tasks, managing resources, and accepting incoming connections. When a new client request arrives, the parent process may create a separate child process to handle that specific request. This approach helps in parallelizing request handling, improving scalability, and utilizing the available system resources effectively.

Main HTTP Requests
The main HTTP requests used in the HTTP protocol are:

GET: Requests data from a specified resource. It retrieves information such as web pages, images, files, etc.
POST: Submits data to be processed to a specified resource. It is often used to send data to the server to create or update a resource.
PUT: Updates a specified resource on the server.
DELETE: Deletes a specified resource on the server.
PATCH: Applies partial modifications to a resource.
HEAD: Requests headers that are identical to those of a GET request but without the response body.
OPTIONS: Requests information about the communication options available for the target resource.
Each of these HTTP methods serves a specific purpose and is used by clients (browsers, applications) to interact with web servers to perform various operations on web resources.

Understanding these concepts is fundamental for working with web servers, handling client requests, managing processes, and designing scalable and efficient web applications.






