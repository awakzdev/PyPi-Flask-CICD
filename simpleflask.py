from flask import Flask, jsonify
from flask_restful import Resource, Api
from Optimus_Prime.main import *


app = Flask(__name__)
api = Api(app)


class PrimedFlask(Resource):
    def get(self):
        Prime()
        return jsonify({'Prime': Prime})


api.add_resource(PrimedFlask, '/')

if __name__ == "__main__":
    app.run(host='0.0.0.0', port='8777')
