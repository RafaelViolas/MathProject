# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Expose port 7000 to the outside world
EXPOSE 7000

# Run server.py when the container launches
CMD ["python", "server.py"]
