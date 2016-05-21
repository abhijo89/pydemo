from flask import Flask
application = Flask(__name__)
from flask import jsonify

@application.route("/")
def sample():
    return jsonify({'test': 'Abilash'})

if __name__ == "__main__":
    application.run(host='0.0.0.0')