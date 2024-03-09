# Import the Flask class from the flask package
from flask import Flask

# Create an instance of the Flask class with the name of the current module
app = Flask(__name__)

# Define a route for the root URL '/'
@app.route('/')
def hello_world():
    # Define the view function that returns the response for the route
    return '<h1>Hello World</h2>'

# Ensure that the Flask application is run only if the script is executed directly
if __name__ == "__main__":
    # Run the Flask application in debug mode, enabling debug messages
    app.run(debug=True)
