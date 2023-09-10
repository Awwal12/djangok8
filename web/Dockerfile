# FROM python:3.10.7-slim

# COPY . /app
# WORKDIR /app

# RUN python3 -m venv /opt/venv

# RUN /opt/venv/binpip install pip --upgrade
# RUN /opt/venv/binpip install -r requirements.txt
# RUN chmod +x entrypoint.sh


# CMD [ "/app/entrypoint.sh" ]
# Use the base Python image
FROM python:3.10.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Create a virtual environment
RUN python3 -m venv /opt/venv

# Upgrade pip within the virtual environment
RUN /opt/venv/bin/pip install --upgrade pip

# Install requirements.txt within the virtual environment
RUN /opt/venv/bin/pip install -r requirements.txt

# Make entrypoint.sh executable
RUN chmod +x entrypoint.sh

# Specify the entry point for the container
ENTRYPOINT ["/app/entrypoint.sh"]
