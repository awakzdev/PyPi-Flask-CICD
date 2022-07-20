from flask import Flask, jsonify
from flask_restful import Resource, Api
from ganesha_experimental.main import *


app = Flask(__name__)
api = Api(app)


class PrimedFlask(Resource):
    def get(self):
        Prime()
        return jsonify({'Prime': Prime})


api.add_resource(PrimedFlask, '/')

if __name__ == "__main__":
    app.run()
