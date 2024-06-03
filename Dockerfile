# Use the official Python image from the Docker Hub
FROM httpd:2.4

# Copy the contents of the 'static' directory to the Apache document root
COPY webpage/ /usr/local/apache2/htdocs/
