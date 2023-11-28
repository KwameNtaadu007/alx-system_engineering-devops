Web Stack Debugging #

Description
This repository contains solutions for debugging a broken web stack scenario. In this particular case, the task was to fix a server by ensuring that it has a copy of the /etc/passwd file in /tmp and a file named /tmp/isworking containing the string "OK".

Steps to Debug and Fix the Issue
Pull and Run Ubuntu 14.04 Docker Image

Pull the Ubuntu 14.04 Docker image: docker run -d -ti ubuntu:14.04
Access the Docker Container

Use docker ps to get the container ID.
Access the Docker container's terminal using docker exec -ti <CONTAINER_ID> /bin/bash.
Identify and Fix the Issue

Check /tmp/ directory contents: ls /tmp/
Copy /etc/passwd to /tmp/: cp /etc/passwd /tmp/
Create a file /tmp/isworking with content "OK": echo OK > /tmp/isworking
Verify changes: ls /tmp/
Solution Bash Script

After manual debugging, the issue was resolved by adding the following commands to a Bash script:
bash
Copy code
#!/usr/bin/env bash
cp /etc/passwd /tmp/
echo OK > /tmp/isworking
Usage of the Bash Script

Save the above script to a file (e.g., fix_webstack.sh).
Make the script executable: chmod +x fix_webstack.sh
Execute the script: ./fix_webstack.sh
Conclusion
Debugging a web stack involves identifying and fixing issues within the server environment, which can be critical for the proper functioning of web applications. This exercise demonstrates the debugging process for resolving basic issues within a web server.
