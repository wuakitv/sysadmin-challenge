import os
from flask import Flask, jsonify

'''new microservice that given a GET request to the /hello endpoint it will return a JSON response with the following content:'''
app = Flask(__name__)

@app.route("/")
@app.route("/hello")
def hello():
    result = {'Hello': 'World'}
    return jsonify(result)


if __name__ == "__main__":
    app.run()


