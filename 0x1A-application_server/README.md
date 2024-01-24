# 0x1A. Application Server

## Introduction

In this project, we will enhance our web infrastructure by integrating an application server to serve dynamic content for our Airbnb clone project. While Nginx is excellent for handling static files and serving as a reverse proxy, an application server is responsible for executing the actual application code and handling dynamic content.

## Technologies Used

- **Nginx:** A high-performance web server and reverse proxy server.
- **Flask:** A lightweight web application framework for Python.
- **Gunicorn:** A WSGI HTTP server for running Python web applications.
- **Ubuntu 16.04:** The operating system on which the web infrastructure is hosted.

## Project Setup

### 1. Install Nginx

If Nginx is not already installed, you can install it using the following command:

```bash
sudo apt-get update
sudo apt-get install nginx
```

### 2. Install Flask and Gunicorn

```bash
sudo apt-get install python3-pip
pip3 install Flask gunicorn
```

Note: Avoid using virtualenv for Gunicorn as mentioned in the resources.

### 3. Project Structure

Assuming your Airbnb clone project is structured like this:

```
/airbnb_clone
    |-- app.py
    |-- static/
    |-- templates/
    |-- ...
```

### 4. Run Flask Application with Gunicorn

```bash
gunicorn -b 0.0.0.0:5000 app:app
```

Replace `app` with the name of your Flask application file.

### 5. Configure Nginx as a Reverse Proxy

Edit the Nginx configuration file:

```bash
sudo nano /etc/nginx/sites-available/default
```

Update the `location /` block to proxy requests to Gunicorn:

```nginx
location / {
    proxy_pass http://127.0.0.1:5000;
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
}
```

### 6. Restart Nginx

```bash
sudo service nginx restart
```

## Additional Notes

- **Strict Slashes:** Be cautious about how Flask handles slashes in routes. Set `strict_slashes` in your Flask app configuration to avoid unexpected behavior.

- **Upstart:** Refer to the Upstart documentation if you want to manage your Gunicorn process as a service, ensuring it starts automatically on system boot.

## Conclusion

With these steps, you have successfully integrated an application server (Gunicorn) into your web infrastructure, allowing Nginx to efficiently serve dynamic content for your Airbnb clone project. Ensure proper configuration and testing to guarantee a smooth deployment.
