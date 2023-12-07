**Project Name: Web Stack Debugging #1**

**Description:**

This project involves debugging an issue with an Nginx installation in an Ubuntu container, where Nginx isn't listening on port 80 as expected. The goal is to fix the issue and ensure Nginx is running and listening on port 80 on all active IPv4 IPs of the server.

**Instructions:**

1. **Debugging Steps:**
    - Start by examining the Nginx configuration files (`nginx.conf`, etc.) to ensure the correct port (80) is configured for listening.
    - Check for any conflicting processes or services that might be using port 80.
    - Verify the Nginx service status and logs for any error messages or issues preventing it from listening on port 80.

2. **Bash Script for Fix:**

    ```bash
    #!/bin/bash

    # Step 1: Stop the Nginx service
    service nginx stop

    # Step 2: Modify Nginx configuration to ensure port 80 is used
    sed -i 's/listen\s*80;/listen 80 default_server;/g' /etc/nginx/sites-available/default

    # Step 3: Restart the Nginx service
    service nginx start
    ```

    This Bash script is designed to fix the issue with Nginx not listening on port 80. It stops the Nginx service, modifies the default Nginx configuration to ensure it listens on port 80, and then starts the Nginx service again.

**Additional Notes:**

- The Bash script provided is aimed at resolving the issue specifically related to Nginx not listening on port 80. Ensure to run it with appropriate permissions (e.g., using `sudo`) and test the changes thoroughly.
- The script does not include `;` or `&&` as per the requirements, and it focuses on simple, concise commands to address the problem.
- Post-execution of the script, check the Nginx service status (`service nginx status`) and verify if Nginx is indeed listening on port 80 (`netstat -tuln | grep 80`) to confirm successful resolution of the issue.

This readme provides guidance on identifying and fixing the issue with Nginx not listening on port 80 within an Ubuntu container, along with a concise Bash script to automate the resolution.
