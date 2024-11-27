# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Python application and requirements file into the container
COPY app.py /app/
COPY requirements.txt /app/

# Install the required Python packages
RUN pip install -r requirements.txt

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the Flask application
CMD ["python", "app.py"]

