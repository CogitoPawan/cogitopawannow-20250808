# Base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the content to the working directory
COPY . .

# Expose the port
EXPOSE 5000

# Start the application
CMD ["python", "backend/app/main.py"]