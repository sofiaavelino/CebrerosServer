# Use the official Python 3.9 image as base
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the entire application to the container
COPY . /app

# Copy the 'kernels' folder and 'cebreros.db' into the container if they exist in the local project directory
COPY kernels /app/kernels
COPY cebreros.db /app/cebreros.db

# Install the dependencies listed in requirements.txt
RUN pip install -r requirements.txt

# Expose port 8080 for the app to run on
EXPOSE 8080

# Use Gunicorn to run the Flask app in production
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
