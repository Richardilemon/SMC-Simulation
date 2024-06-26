# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN pip install --no-cache-dir --upgrade pip

# Install any needed packages specified in requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable
ENV KAFKA_BOOTSTRAP_SERVERS=localhost:9092

# Run main.py when the container launches
CMD ["python", "main.py"]


ENV PIP_DEFAULT_TIMEOUT=100
