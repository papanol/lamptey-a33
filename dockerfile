# Use a minimal base image for production
FROM python:3.9-slim

# Set a working directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose the application's default port
EXPOSE 5000

# Set the entry point for the application
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]

