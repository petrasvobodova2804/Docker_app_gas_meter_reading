# Use the official Python image with version 3.10 as the base image
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app


# Copy the requirements.txt file into the container
COPY requirements.txt .


# Install Python dependencies from requirements.txt
RUN python -m pip install -r requirements.txt

# Copy the entire Flask app into the container
COPY . /app/

# Expose the port on which the Flask app will run (change to your app's port if needed)
EXPOSE 5000

# Start the Flask app when the container is run
CMD ["python", "app.py"]
