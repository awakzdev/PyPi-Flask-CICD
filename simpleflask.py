from flask import Flask, jsonify
from flask_restful import Resource, Api
from ganesha_experimental.main import *


app = Flask(__name__)
api = Api(app)


class PrimedFlask(Resource):
    def get(self):
        n = random.randint(2, 100)
        Prime = str(printPrime(n))[1:-1]
        return jsonify({'Prime': Prime})


api.add_resource(PrimedFlask, '/')

if __name__ == "__main__":
    app.run(host='0.0.0.0')
