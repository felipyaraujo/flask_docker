from flask import Flask


app = Flask(__name__)


@app.route("/teste", methods=['GET'])

def teste():

    return "SUCESSO"
