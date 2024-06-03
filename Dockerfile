# Use the official Python image from the Docker Hub
FROM httpd:2.4

# Copy the contents of the 'static' directory to the Apache document root
COPY webpage/ /usr/local/apache2/htdocs/

# Copy the SSL certificates to the appropriate directory
COPY ssl/ /usr/local/apache2/conf/

# Copy the custom httpd configuration file
COPY httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf

# Update the main httpd configuration file to include the SSL configuration
RUN echo "Include conf/extra/httpd-ssl.conf" >> /usr/local/apache2/conf/httpd.conf
