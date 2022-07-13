from flask import Flask, jsonify
from ganesha_experimental.main import *

app = Flask(__name__)


@app.route('/')
def index():
    n = random.randint(2, 100)
    previous_primes_list = printPrime(n)

    return jsonify({'Prime': previous_primes_list})


if __name__ == "__main__":
    app.run()
