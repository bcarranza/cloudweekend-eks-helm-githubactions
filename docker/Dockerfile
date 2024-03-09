# Use the official Python 3.8 image as the base image
FROM python:3.8-slim-buster

# Set the working directory inside the container
WORKDIR /python-docker

# Copy the requirements.txt file from the host to the working directory in the container
COPY code/requirements.txt requirements.txt

# Install the Python dependencies specified in requirements.txt using pip3
RUN pip3 install -r requirements.txt

# Copy the rest of the code from the host to the working directory in the container
COPY code/. .

# Set the default command to run when the container starts
# Run the Flask application using the python3 interpreter
# with the '-m' flag to run a module, specifying 'flask' as the module to run
# along with the 'run' command to start the Flask development server
# Bind the server to all available network interfaces ('0.0.0.0') on port 8080
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=8080"]
