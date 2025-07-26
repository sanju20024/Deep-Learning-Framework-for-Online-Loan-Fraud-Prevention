# Start from an older, compatible version of Python
FROM python:3.7-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your requirements file and install the packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your project files into the container
COPY . .

# Tell the container what command to run when it starts
# IMPORTANT: Replace "your_main_script.py" with the name of your main Python file
CMD ["python", "your_main_script.py"]
