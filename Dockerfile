# Step 1: Base image
FROM python:3.10

# Step 2: Working directory
WORKDIR /app

# Step 3: Copy files
COPY . .

# Step 4: Install dependencies
RUN pip install -r requirements.txt

# Step 5: Run the application
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
