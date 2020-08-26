'''
Basic static web app
Use for exercises that don't need a database layer
'''
from flask import Flask
from os import getenv

app = Flask(__name__)

@app.route('/')
def home():
    hostname = getenv('HOSTNAME')
    return f"<h1>Hello friend.</h1>\n\n<h2>I'm currently running in ${hostname}.</h2>"

if __name__=='__main__':
  app.run(host='0.0.0.0', port=5000, debug=True)
